package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.FormatHolder;
import androidx.media2.exoplayer.external.decoder.DecoderInputBuffer;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.DummyTrackOutput;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.extractor.TrackOutput;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.PrivFrame;
import androidx.media2.exoplayer.external.source.MediaSourceEventListener;
import androidx.media2.exoplayer.external.source.SampleQueue;
import androidx.media2.exoplayer.external.source.SampleStream;
import androidx.media2.exoplayer.external.source.SequenceableLoader;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.source.chunk.Chunk;
import androidx.media2.exoplayer.external.source.hls.HlsChunkSource;
import androidx.media2.exoplayer.external.upstream.Allocator;
import androidx.media2.exoplayer.external.upstream.LoadErrorHandlingPolicy;
import androidx.media2.exoplayer.external.upstream.Loader;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper.class */
public final class HlsSampleStreamWrapper implements Loader.Callback<Chunk>, Loader.ReleaseCallback, SequenceableLoader, ExtractorOutput, SampleQueue.UpstreamFormatChangedListener {
    public static final int SAMPLE_QUEUE_INDEX_NO_MAPPING_FATAL = -2;
    public static final int SAMPLE_QUEUE_INDEX_NO_MAPPING_NON_FATAL = -3;
    public static final int SAMPLE_QUEUE_INDEX_PENDING = -1;
    public static final String TAG = "HlsSampleStreamWrapper";
    public final Allocator allocator;
    public boolean audioSampleQueueMappingDone;
    public final Callback callback;
    public final HlsChunkSource chunkSource;
    public int chunkUid;
    public Format downstreamTrackFormat;
    public int enabledTrackGroupCount;
    public final MediaSourceEventListener.EventDispatcher eventDispatcher;
    public boolean haveAudioVideoSampleQueues;
    public long lastSeekPositionUs;
    public final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    public boolean loadingFinished;
    public final Format muxedAudioFormat;
    public TrackGroupArray optionalTrackGroups;
    public final Map<String, DrmInitData> overridingDrmInitData;
    public long pendingResetPositionUs;
    public boolean pendingResetUpstreamFormats;
    public boolean prepared;
    public int primarySampleQueueIndex;
    public int primarySampleQueueType;
    public int primaryTrackGroupIndex;
    public boolean released;
    public long sampleOffsetUs;
    public boolean sampleQueuesBuilt;
    public boolean seenFirstTrackSelection;
    public int[] trackGroupToSampleQueueIndex;
    public TrackGroupArray trackGroups;
    public final int trackType;
    public boolean tracksEnded;
    public Format upstreamTrackFormat;
    public boolean videoSampleQueueMappingDone;
    public final Loader loader = new Loader("Loader:HlsSampleStreamWrapper");
    public final HlsChunkSource.HlsChunkHolder nextChunkHolder = new HlsChunkSource.HlsChunkHolder();
    public int[] sampleQueueTrackIds = new int[0];
    public int audioSampleQueueIndex = -1;
    public int videoSampleQueueIndex = -1;
    public SampleQueue[] sampleQueues = new SampleQueue[0];
    public boolean[] sampleQueueIsAudioVideoFlags = new boolean[0];
    public boolean[] sampleQueuesEnabledStates = new boolean[0];
    public final ArrayList<HlsMediaChunk> mediaChunks = new ArrayList<>();
    public final List<HlsMediaChunk> readOnlyMediaChunks = Collections.unmodifiableList(this.mediaChunks);
    public final ArrayList<HlsSampleStream> hlsSampleStreams = new ArrayList<>();
    public final Runnable maybeFinishPrepareRunnable = new Runnable(this) { // from class: androidx.media2.exoplayer.external.source.hls.HlsSampleStreamWrapper$$Lambda$0
        public final HlsSampleStreamWrapper arg$1;

        {
            this.arg$1 = this;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.arg$1.bridge$lambda$0$HlsSampleStreamWrapper();
        }
    };
    public final Runnable onTracksEndedRunnable = new Runnable(this) { // from class: androidx.media2.exoplayer.external.source.hls.HlsSampleStreamWrapper$$Lambda$1
        public final HlsSampleStreamWrapper arg$1;

        {
            this.arg$1 = this;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.arg$1.bridge$lambda$1$HlsSampleStreamWrapper();
        }
    };
    public final Handler handler = new Handler();

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback.class */
    public interface Callback extends SequenceableLoader.Callback<HlsSampleStreamWrapper> {
        void onPlaylistRefreshRequired(Uri uri);

        void onPrepared();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$PrivTimestampStrippingSampleQueue.class */
    public static final class PrivTimestampStrippingSampleQueue extends SampleQueue {
        public PrivTimestampStrippingSampleQueue(Allocator allocator) {
            super(allocator);
        }

        @Nullable
        private Metadata getAdjustedMetadata(@Nullable Metadata metadata) {
            int i;
            if (metadata == null) {
                return null;
            }
            int length = metadata.length();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    i = -1;
                    break;
                }
                Metadata.Entry entry = metadata.get(i3);
                if ((entry instanceof PrivFrame) && HlsMediaChunk.PRIV_TIMESTAMP_FRAME_OWNER.equals(((PrivFrame) entry).owner)) {
                    i = i3;
                    break;
                }
                i3++;
            }
            if (i == -1) {
                return metadata;
            }
            if (length == 1) {
                return null;
            }
            Metadata.Entry[] entryArr = new Metadata.Entry[length - 1];
            while (i2 < length) {
                if (i2 != i) {
                    entryArr[i2 < i ? i2 : i2 - 1] = metadata.get(i2);
                }
                i2++;
            }
            return new Metadata(entryArr);
        }

        @Override // androidx.media2.exoplayer.external.source.SampleQueue, androidx.media2.exoplayer.external.extractor.TrackOutput
        public void format(Format format) {
            super.format(format.copyWithMetadata(getAdjustedMetadata(format.metadata)));
        }
    }

    public HlsSampleStreamWrapper(int i, Callback callback, HlsChunkSource hlsChunkSource, Map<String, DrmInitData> map, Allocator allocator, long j, Format format, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher) {
        this.trackType = i;
        this.callback = callback;
        this.chunkSource = hlsChunkSource;
        this.overridingDrmInitData = map;
        this.allocator = allocator;
        this.muxedAudioFormat = format;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.eventDispatcher = eventDispatcher;
        this.lastSeekPositionUs = j;
        this.pendingResetPositionUs = j;
    }

    private void buildTracksFromSampleStreams() {
        int length = this.sampleQueues.length;
        boolean z = false;
        int i = 0;
        int i2 = 6;
        int i3 = -1;
        while (true) {
            int i4 = 2;
            if (i >= length) {
                break;
            }
            String str = this.sampleQueues[i].getUpstreamFormat().sampleMimeType;
            if (!MimeTypes.isVideo(str)) {
                i4 = MimeTypes.isAudio(str) ? 1 : MimeTypes.isText(str) ? 3 : 6;
            }
            if (getTrackTypeScore(i4) > getTrackTypeScore(i2)) {
                i3 = i;
                i2 = i4;
            } else {
                i2 = i2;
                i3 = i3;
                if (i4 == i2) {
                    i2 = i2;
                    i3 = i3;
                    if (i3 != -1) {
                        i3 = -1;
                        i2 = i2;
                    }
                }
            }
            i++;
        }
        TrackGroup trackGroup = this.chunkSource.getTrackGroup();
        int i5 = trackGroup.length;
        this.primaryTrackGroupIndex = -1;
        this.trackGroupToSampleQueueIndex = new int[length];
        for (int i6 = 0; i6 < length; i6++) {
            this.trackGroupToSampleQueueIndex[i6] = i6;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        for (int i7 = 0; i7 < length; i7++) {
            Format upstreamFormat = this.sampleQueues[i7].getUpstreamFormat();
            if (i7 == i3) {
                Format[] formatArr = new Format[i5];
                if (i5 == 1) {
                    formatArr[0] = upstreamFormat.copyWithManifestFormatInfo(trackGroup.getFormat(0));
                } else {
                    for (int i8 = 0; i8 < i5; i8++) {
                        formatArr[i8] = deriveFormat(trackGroup.getFormat(i8), upstreamFormat, true);
                    }
                }
                trackGroupArr[i7] = new TrackGroup(formatArr);
                this.primaryTrackGroupIndex = i7;
            } else {
                trackGroupArr[i7] = new TrackGroup(deriveFormat((i2 != 2 || !MimeTypes.isAudio(upstreamFormat.sampleMimeType)) ? null : this.muxedAudioFormat, upstreamFormat, false));
            }
        }
        this.trackGroups = new TrackGroupArray(trackGroupArr);
        if (this.optionalTrackGroups == null) {
            z = true;
        }
        Assertions.checkState(z);
        this.optionalTrackGroups = TrackGroupArray.EMPTY;
    }

    public static DummyTrackOutput createDummyTrackOutput(int i, int i2) {
        StringBuilder sb = new StringBuilder(54);
        sb.append("Unmapped track with id ");
        sb.append(i);
        sb.append(" of type ");
        sb.append(i2);
        Log.m37483w(TAG, sb.toString());
        return new DummyTrackOutput();
    }

    public static Format deriveFormat(Format format, Format format2, boolean z) {
        if (format == null) {
            return format2;
        }
        int i = z ? format.bitrate : -1;
        int i2 = format.channelCount;
        if (i2 == -1) {
            i2 = format2.channelCount;
        }
        String codecsOfType = Util.getCodecsOfType(format.codecs, MimeTypes.getTrackType(format2.sampleMimeType));
        String mediaMimeType = MimeTypes.getMediaMimeType(codecsOfType);
        String str = mediaMimeType;
        if (mediaMimeType == null) {
            str = format2.sampleMimeType;
        }
        return format2.copyWithContainerInfo(format.f79id, format.label, str, codecsOfType, format.metadata, i, format.width, format.height, i2, format.selectionFlags, format.language);
    }

    private boolean finishedReadingChunk(HlsMediaChunk hlsMediaChunk) {
        int i = hlsMediaChunk.uid;
        int length = this.sampleQueues.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (this.sampleQueuesEnabledStates[i2] && this.sampleQueues[i2].peekSourceId() == i) {
                return false;
            }
        }
        return true;
    }

    public static boolean formatsMatch(Format format, Format format2) {
        String str = format.sampleMimeType;
        String str2 = format2.sampleMimeType;
        int trackType = MimeTypes.getTrackType(str);
        boolean z = true;
        boolean z2 = true;
        if (trackType != 3) {
            if (trackType != MimeTypes.getTrackType(str2)) {
                z2 = false;
            }
            return z2;
        } else if (!Util.areEqual(str, str2)) {
            return false;
        } else {
            if (!MimeTypes.APPLICATION_CEA608.equals(str) && !MimeTypes.APPLICATION_CEA708.equals(str)) {
                return true;
            }
            if (format.accessibilityChannel != format2.accessibilityChannel) {
                z = false;
            }
            return z;
        }
    }

    private HlsMediaChunk getLastMediaChunk() {
        ArrayList<HlsMediaChunk> arrayList = this.mediaChunks;
        return arrayList.get(arrayList.size() - 1);
    }

    public static int getTrackTypeScore(int i) {
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? 0 : 1;
        }
        return 3;
    }

    public static boolean isMediaChunk(Chunk chunk) {
        return chunk instanceof HlsMediaChunk;
    }

    private boolean isPendingReset() {
        return this.pendingResetPositionUs != C0463C.TIME_UNSET;
    }

    private void mapSampleQueuesToMatchTrackGroups() {
        int i = this.trackGroups.length;
        this.trackGroupToSampleQueueIndex = new int[i];
        Arrays.fill(this.trackGroupToSampleQueueIndex, -1);
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = 0;
            while (true) {
                SampleQueue[] sampleQueueArr = this.sampleQueues;
                if (i3 >= sampleQueueArr.length) {
                    break;
                } else if (formatsMatch(sampleQueueArr[i3].getUpstreamFormat(), this.trackGroups.get(i2).getFormat(0))) {
                    this.trackGroupToSampleQueueIndex[i2] = i3;
                    break;
                } else {
                    i3++;
                }
            }
        }
        Iterator<HlsSampleStream> it = this.hlsSampleStreams.iterator();
        while (it.hasNext()) {
            it.next().bindSampleQueue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: maybeFinishPrepare */
    public void bridge$lambda$0$HlsSampleStreamWrapper() {
        if (!this.released && this.trackGroupToSampleQueueIndex == null && this.sampleQueuesBuilt) {
            for (SampleQueue sampleQueue : this.sampleQueues) {
                if (sampleQueue.getUpstreamFormat() == null) {
                    return;
                }
            }
            if (this.trackGroups != null) {
                mapSampleQueuesToMatchTrackGroups();
                return;
            }
            buildTracksFromSampleStreams();
            this.prepared = true;
            this.callback.onPrepared();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onTracksEnded */
    public void bridge$lambda$1$HlsSampleStreamWrapper() {
        this.sampleQueuesBuilt = true;
        bridge$lambda$0$HlsSampleStreamWrapper();
    }

    private void resetSampleQueues() {
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.reset(this.pendingResetUpstreamFormats);
        }
        this.pendingResetUpstreamFormats = false;
    }

    private boolean seekInsideBufferUs(long j) {
        int length = this.sampleQueues.length;
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= length) {
                return true;
            }
            SampleQueue sampleQueue = this.sampleQueues[i];
            sampleQueue.rewind();
            if (sampleQueue.advanceTo(j, true, false) == -1) {
                z = false;
            }
            if (!z && (this.sampleQueueIsAudioVideoFlags[i] || !this.haveAudioVideoSampleQueues)) {
                return false;
            }
            i++;
        }
    }

    private void updateSampleStreams(SampleStream[] sampleStreamArr) {
        this.hlsSampleStreams.clear();
        for (SampleStream sampleStream : sampleStreamArr) {
            if (sampleStream != null) {
                this.hlsSampleStreams.add((HlsSampleStream) sampleStream);
            }
        }
    }

    public int bindSampleQueueToSampleStream(int i) {
        int i2 = this.trackGroupToSampleQueueIndex[i];
        int i3 = -2;
        if (i2 == -1) {
            if (this.optionalTrackGroups.indexOf(this.trackGroups.get(i)) != -1) {
                i3 = -3;
            }
            return i3;
        }
        boolean[] zArr = this.sampleQueuesEnabledStates;
        if (zArr[i2]) {
            return -2;
        }
        zArr[i2] = true;
        return i2;
    }

    @Override // androidx.media2.exoplayer.external.source.SequenceableLoader
    public boolean continueLoading(long j) {
        long j2;
        List<HlsMediaChunk> list;
        if (this.loadingFinished || this.loader.isLoading()) {
            return false;
        }
        if (isPendingReset()) {
            list = Collections.emptyList();
            j2 = this.pendingResetPositionUs;
        } else {
            list = this.readOnlyMediaChunks;
            HlsMediaChunk lastMediaChunk = getLastMediaChunk();
            j2 = lastMediaChunk.isLoadCompleted() ? lastMediaChunk.endTimeUs : Math.max(this.lastSeekPositionUs, lastMediaChunk.startTimeUs);
        }
        this.chunkSource.getNextChunk(j, j2, list, this.nextChunkHolder);
        HlsChunkSource.HlsChunkHolder hlsChunkHolder = this.nextChunkHolder;
        boolean z = hlsChunkHolder.endOfStream;
        Chunk chunk = hlsChunkHolder.chunk;
        Uri uri = hlsChunkHolder.playlistUrl;
        hlsChunkHolder.clear();
        if (z) {
            this.pendingResetPositionUs = C0463C.TIME_UNSET;
            this.loadingFinished = true;
            return true;
        } else if (chunk != null) {
            if (isMediaChunk(chunk)) {
                this.pendingResetPositionUs = C0463C.TIME_UNSET;
                HlsMediaChunk hlsMediaChunk = (HlsMediaChunk) chunk;
                hlsMediaChunk.init(this);
                this.mediaChunks.add(hlsMediaChunk);
                this.upstreamTrackFormat = hlsMediaChunk.trackFormat;
            }
            this.eventDispatcher.loadStarted(chunk.dataSpec, chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, this.loader.startLoading(chunk, this, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(chunk.type)));
            return true;
        } else if (uri == null) {
            return false;
        } else {
            this.callback.onPlaylistRefreshRequired(uri);
            return false;
        }
    }

    public void continuePreparing() {
        if (!this.prepared) {
            continueLoading(this.lastSeekPositionUs);
        }
    }

    public void discardBuffer(long j, boolean z) {
        if (this.sampleQueuesBuilt && !isPendingReset()) {
            int length = this.sampleQueues.length;
            for (int i = 0; i < length; i++) {
                this.sampleQueues[i].discardTo(j, z, this.sampleQueuesEnabledStates[i]);
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorOutput
    public void endTracks() {
        this.tracksEnded = true;
        this.handler.post(this.onTracksEndedRunnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.media2.exoplayer.external.source.SequenceableLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getBufferedPositionUs() {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.loadingFinished
            if (r0 == 0) goto L_0x000b
            r0 = -9223372036854775808
            return r0
        L_0x000b:
            r0 = r5
            boolean r0 = r0.isPendingReset()
            if (r0 == 0) goto L_0x0017
            r0 = r5
            long r0 = r0.pendingResetPositionUs
            return r0
        L_0x0017:
            r0 = r5
            long r0 = r0.lastSeekPositionUs
            r6 = r0
            r0 = r5
            androidx.media2.exoplayer.external.source.hls.HlsMediaChunk r0 = r0.getLastMediaChunk()
            r8 = r0
            r0 = r8
            boolean r0 = r0.isLoadCompleted()
            if (r0 == 0) goto L_0x002b
            goto L_0x004e
        L_0x002b:
            r0 = r5
            java.util.ArrayList<androidx.media2.exoplayer.external.source.hls.HlsMediaChunk> r0 = r0.mediaChunks
            int r0 = r0.size()
            r1 = 1
            if (r0 <= r1) goto L_0x004c
            r0 = r5
            java.util.ArrayList<androidx.media2.exoplayer.external.source.hls.HlsMediaChunk> r0 = r0.mediaChunks
            r8 = r0
            r0 = r8
            r1 = r8
            int r1 = r1.size()
            r2 = 2
            int r1 = r1 - r2
            java.lang.Object r0 = r0.get(r1)
            androidx.media2.exoplayer.external.source.hls.HlsMediaChunk r0 = (androidx.media2.exoplayer.external.source.hls.HlsMediaChunk) r0
            r8 = r0
            goto L_0x004e
        L_0x004c:
            r0 = 0
            r8 = r0
        L_0x004e:
            r0 = r6
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x005f
            r0 = r6
            r1 = r8
            long r1 = r1.endTimeUs
            long r0 = java.lang.Math.max(r0, r1)
            r9 = r0
        L_0x005f:
            r0 = r9
            r6 = r0
            r0 = r5
            boolean r0 = r0.sampleQueuesBuilt
            if (r0 == 0) goto L_0x0093
            r0 = r5
            androidx.media2.exoplayer.external.source.SampleQueue[] r0 = r0.sampleQueues
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r11 = r0
            r0 = 0
            r12 = r0
        L_0x0075:
            r0 = r9
            r6 = r0
            r0 = r12
            r1 = r11
            if (r0 >= r1) goto L_0x0093
            r0 = r9
            r1 = r8
            r2 = r12
            r1 = r1[r2]
            long r1 = r1.getLargestQueuedTimestampUs()
            long r0 = java.lang.Math.max(r0, r1)
            r9 = r0
            int r12 = r12 + 1
            goto L_0x0075
        L_0x0093:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.HlsSampleStreamWrapper.getBufferedPositionUs():long");
    }

    @Override // androidx.media2.exoplayer.external.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        return this.loadingFinished ? Long.MIN_VALUE : getLastMediaChunk().endTimeUs;
    }

    public int getPrimaryTrackGroupIndex() {
        return this.primaryTrackGroupIndex;
    }

    public TrackGroupArray getTrackGroups() {
        return this.trackGroups;
    }

    public void init(int i, boolean z, boolean z2) {
        if (!z2) {
            this.audioSampleQueueMappingDone = false;
            this.videoSampleQueueMappingDone = false;
        }
        this.chunkUid = i;
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.sourceId(i);
        }
        if (z) {
            for (SampleQueue sampleQueue2 : this.sampleQueues) {
                sampleQueue2.splice();
            }
        }
    }

    public boolean isReady(int i) {
        return this.loadingFinished || (!isPendingReset() && this.sampleQueues[i].hasNextSample());
    }

    public void maybeThrowError() throws IOException {
        this.loader.maybeThrowError();
        this.chunkSource.maybeThrowError();
    }

    public void maybeThrowPrepareError() throws IOException {
        maybeThrowError();
    }

    public void onLoadCanceled(Chunk chunk, long j, long j2, boolean z) {
        this.eventDispatcher.loadCanceled(chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, j, j2, chunk.bytesLoaded());
        if (!z) {
            resetSampleQueues();
            if (this.enabledTrackGroupCount > 0) {
                this.callback.onContinueLoadingRequested(this);
            }
        }
    }

    public void onLoadCompleted(Chunk chunk, long j, long j2) {
        this.chunkSource.onChunkLoadCompleted(chunk);
        this.eventDispatcher.loadCompleted(chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, j, j2, chunk.bytesLoaded());
        if (!this.prepared) {
            continueLoading(this.lastSeekPositionUs);
        } else {
            this.callback.onContinueLoadingRequested(this);
        }
    }

    public Loader.LoadErrorAction onLoadError(Chunk chunk, long j, long j2, IOException iOException, int i) {
        Loader.LoadErrorAction loadErrorAction;
        long bytesLoaded = chunk.bytesLoaded();
        boolean isMediaChunk = isMediaChunk(chunk);
        long blacklistDurationMsFor = this.loadErrorHandlingPolicy.getBlacklistDurationMsFor(chunk.type, j2, iOException, i);
        boolean z = false;
        boolean maybeBlacklistTrack = blacklistDurationMsFor != C0463C.TIME_UNSET ? this.chunkSource.maybeBlacklistTrack(chunk, blacklistDurationMsFor) : false;
        if (maybeBlacklistTrack) {
            if (isMediaChunk && bytesLoaded == 0) {
                ArrayList<HlsMediaChunk> arrayList = this.mediaChunks;
                if (arrayList.remove(arrayList.size() - 1) == chunk) {
                    z = true;
                }
                Assertions.checkState(z);
                if (this.mediaChunks.isEmpty()) {
                    this.pendingResetPositionUs = this.lastSeekPositionUs;
                }
            }
            loadErrorAction = Loader.DONT_RETRY;
        } else {
            long retryDelayMsFor = this.loadErrorHandlingPolicy.getRetryDelayMsFor(chunk.type, j2, iOException, i);
            loadErrorAction = retryDelayMsFor != C0463C.TIME_UNSET ? Loader.createRetryAction(false, retryDelayMsFor) : Loader.DONT_RETRY_FATAL;
        }
        this.eventDispatcher.loadError(chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, j, j2, bytesLoaded, iOException, !loadErrorAction.isRetry());
        if (maybeBlacklistTrack) {
            if (!this.prepared) {
                continueLoading(this.lastSeekPositionUs);
            } else {
                this.callback.onContinueLoadingRequested(this);
            }
        }
        return loadErrorAction;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        resetSampleQueues();
    }

    public boolean onPlaylistError(Uri uri, long j) {
        return this.chunkSource.onPlaylistError(uri, j);
    }

    @Override // androidx.media2.exoplayer.external.source.SampleQueue.UpstreamFormatChangedListener
    public void onUpstreamFormatChanged(Format format) {
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    public void prepareWithMasterPlaylistInfo(TrackGroupArray trackGroupArray, int i, TrackGroupArray trackGroupArray2) {
        this.prepared = true;
        this.trackGroups = trackGroupArray;
        this.optionalTrackGroups = trackGroupArray2;
        this.primaryTrackGroupIndex = i;
        Handler handler = this.handler;
        Callback callback = this.callback;
        callback.getClass();
        handler.post(HlsSampleStreamWrapper$$Lambda$2.get$Lambda(callback));
    }

    public int readData(int i, FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z) {
        if (isPendingReset()) {
            return -3;
        }
        int i2 = 0;
        if (!this.mediaChunks.isEmpty()) {
            int i3 = 0;
            while (i3 < this.mediaChunks.size() - 1 && finishedReadingChunk(this.mediaChunks.get(i3))) {
                i3++;
            }
            Util.removeRange(this.mediaChunks, 0, i3);
            HlsMediaChunk hlsMediaChunk = this.mediaChunks.get(0);
            Format format = hlsMediaChunk.trackFormat;
            if (!format.equals(this.downstreamTrackFormat)) {
                this.eventDispatcher.downstreamFormatChanged(this.trackType, format, hlsMediaChunk.trackSelectionReason, hlsMediaChunk.trackSelectionData, hlsMediaChunk.startTimeUs);
            }
            this.downstreamTrackFormat = format;
        }
        int read = this.sampleQueues[i].read(formatHolder, decoderInputBuffer, z, this.loadingFinished, this.lastSeekPositionUs);
        if (read == -5) {
            Format format2 = formatHolder.format;
            Format format3 = format2;
            if (i == this.primarySampleQueueIndex) {
                int peekSourceId = this.sampleQueues[i].peekSourceId();
                while (i2 < this.mediaChunks.size() && this.mediaChunks.get(i2).uid != peekSourceId) {
                    i2++;
                }
                format3 = format2.copyWithManifestFormatInfo(i2 < this.mediaChunks.size() ? this.mediaChunks.get(i2).trackFormat : this.upstreamTrackFormat);
            }
            DrmInitData drmInitData = format3.drmInitData;
            Format format4 = format3;
            if (drmInitData != null) {
                DrmInitData drmInitData2 = this.overridingDrmInitData.get(drmInitData.schemeType);
                format4 = format3;
                if (drmInitData2 != null) {
                    format4 = format3.copyWithDrmInitData(drmInitData2);
                }
            }
            formatHolder.format = format4;
        }
        return read;
    }

    @Override // androidx.media2.exoplayer.external.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
    }

    public void release() {
        if (this.prepared) {
            for (SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.discardToEnd();
            }
        }
        this.loader.release(this);
        this.handler.removeCallbacksAndMessages(null);
        this.released = true;
        this.hlsSampleStreams.clear();
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorOutput
    public void seekMap(SeekMap seekMap) {
    }

    public boolean seekToUs(long j, boolean z) {
        this.lastSeekPositionUs = j;
        if (isPendingReset()) {
            this.pendingResetPositionUs = j;
            return true;
        } else if (this.sampleQueuesBuilt && !z && seekInsideBufferUs(j)) {
            return false;
        } else {
            this.pendingResetPositionUs = j;
            this.loadingFinished = false;
            this.mediaChunks.clear();
            if (this.loader.isLoading()) {
                this.loader.cancelLoading();
                return true;
            }
            resetSampleQueues();
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x0248  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean selectTracks(androidx.media2.exoplayer.external.trackselection.TrackSelection[] r11, boolean[] r12, androidx.media2.exoplayer.external.source.SampleStream[] r13, boolean[] r14, long r15, boolean r17) {
        /*
            Method dump skipped, instructions count: 663
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.HlsSampleStreamWrapper.selectTracks(androidx.media2.exoplayer.external.trackselection.TrackSelection[], boolean[], androidx.media2.exoplayer.external.source.SampleStream[], boolean[], long, boolean):boolean");
    }

    public void setIsTimestampMaster(boolean z) {
        this.chunkSource.setIsTimestampMaster(z);
    }

    public void setSampleOffsetUs(long j) {
        this.sampleOffsetUs = j;
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.setSampleOffsetUs(j);
        }
    }

    public int skipData(int i, long j) {
        if (isPendingReset()) {
            return 0;
        }
        SampleQueue sampleQueue = this.sampleQueues[i];
        if (this.loadingFinished && j > sampleQueue.getLargestQueuedTimestampUs()) {
            return sampleQueue.advanceToEnd();
        }
        int advanceTo = sampleQueue.advanceTo(j, true, true);
        int i2 = advanceTo;
        if (advanceTo == -1) {
            i2 = 0;
        }
        return i2;
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorOutput
    public TrackOutput track(int i, int i2) {
        TrackOutput[] trackOutputArr = this.sampleQueues;
        int length = trackOutputArr.length;
        boolean z = false;
        if (i2 == 1) {
            int i3 = this.audioSampleQueueIndex;
            if (i3 != -1) {
                if (this.audioSampleQueueMappingDone) {
                    return this.sampleQueueTrackIds[i3] == i ? trackOutputArr[i3] : createDummyTrackOutput(i, i2);
                }
                this.audioSampleQueueMappingDone = true;
                this.sampleQueueTrackIds[i3] = i;
                return trackOutputArr[i3];
            } else if (this.tracksEnded) {
                return createDummyTrackOutput(i, i2);
            }
        } else if (i2 == 2) {
            int i4 = this.videoSampleQueueIndex;
            if (i4 != -1) {
                if (this.videoSampleQueueMappingDone) {
                    return this.sampleQueueTrackIds[i4] == i ? trackOutputArr[i4] : createDummyTrackOutput(i, i2);
                }
                this.videoSampleQueueMappingDone = true;
                this.sampleQueueTrackIds[i4] = i;
                return trackOutputArr[i4];
            } else if (this.tracksEnded) {
                return createDummyTrackOutput(i, i2);
            }
        } else {
            for (int i5 = 0; i5 < length; i5++) {
                if (this.sampleQueueTrackIds[i5] == i) {
                    return this.sampleQueues[i5];
                }
            }
            if (this.tracksEnded) {
                return createDummyTrackOutput(i, i2);
            }
        }
        PrivTimestampStrippingSampleQueue privTimestampStrippingSampleQueue = new PrivTimestampStrippingSampleQueue(this.allocator);
        privTimestampStrippingSampleQueue.setSampleOffsetUs(this.sampleOffsetUs);
        privTimestampStrippingSampleQueue.sourceId(this.chunkUid);
        privTimestampStrippingSampleQueue.setUpstreamFormatChangeListener(this);
        int i6 = length + 1;
        this.sampleQueueTrackIds = Arrays.copyOf(this.sampleQueueTrackIds, i6);
        this.sampleQueueTrackIds[length] = i;
        this.sampleQueues = (SampleQueue[]) Arrays.copyOf(this.sampleQueues, i6);
        this.sampleQueues[length] = privTimestampStrippingSampleQueue;
        this.sampleQueueIsAudioVideoFlags = Arrays.copyOf(this.sampleQueueIsAudioVideoFlags, i6);
        boolean[] zArr = this.sampleQueueIsAudioVideoFlags;
        if (i2 == 1 || i2 == 2) {
            z = true;
        }
        zArr[length] = z;
        this.haveAudioVideoSampleQueues |= this.sampleQueueIsAudioVideoFlags[length];
        if (i2 == 1) {
            this.audioSampleQueueMappingDone = true;
            this.audioSampleQueueIndex = length;
        } else if (i2 == 2) {
            this.videoSampleQueueMappingDone = true;
            this.videoSampleQueueIndex = length;
        }
        if (getTrackTypeScore(i2) > getTrackTypeScore(this.primarySampleQueueType)) {
            this.primarySampleQueueIndex = length;
            this.primarySampleQueueType = i2;
        }
        this.sampleQueuesEnabledStates = Arrays.copyOf(this.sampleQueuesEnabledStates, i6);
        return privTimestampStrippingSampleQueue;
    }

    public void unbindSampleQueue(int i) {
        int i2 = this.trackGroupToSampleQueueIndex[i];
        Assertions.checkState(this.sampleQueuesEnabledStates[i2]);
        this.sampleQueuesEnabledStates[i2] = false;
    }
}
