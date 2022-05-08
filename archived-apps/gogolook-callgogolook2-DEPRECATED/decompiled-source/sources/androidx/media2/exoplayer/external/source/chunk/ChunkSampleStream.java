package androidx.media2.exoplayer.external.source.chunk;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.FormatHolder;
import androidx.media2.exoplayer.external.SeekParameters;
import androidx.media2.exoplayer.external.decoder.DecoderInputBuffer;
import androidx.media2.exoplayer.external.source.MediaSourceEventListener;
import androidx.media2.exoplayer.external.source.SampleQueue;
import androidx.media2.exoplayer.external.source.SampleStream;
import androidx.media2.exoplayer.external.source.SequenceableLoader;
import androidx.media2.exoplayer.external.source.chunk.ChunkSource;
import androidx.media2.exoplayer.external.upstream.Allocator;
import androidx.media2.exoplayer.external.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media2.exoplayer.external.upstream.LoadErrorHandlingPolicy;
import androidx.media2.exoplayer.external.upstream.Loader;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/chunk/ChunkSampleStream.class */
public class ChunkSampleStream<T extends ChunkSource> implements SampleStream, SequenceableLoader, Loader.Callback<Chunk>, Loader.ReleaseCallback {
    public static final String TAG = "ChunkSampleStream";
    public final SequenceableLoader.Callback<ChunkSampleStream<T>> callback;
    public final T chunkSource;
    public long decodeOnlyUntilPositionUs;
    public final SampleQueue[] embeddedSampleQueues;
    public final Format[] embeddedTrackFormats;
    public final int[] embeddedTrackTypes;
    public final boolean[] embeddedTracksSelected;
    public final MediaSourceEventListener.EventDispatcher eventDispatcher;
    public long lastSeekPositionUs;
    public final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    public final Loader loader;
    public boolean loadingFinished;
    public final BaseMediaChunkOutput mediaChunkOutput;
    public final ArrayList<BaseMediaChunk> mediaChunks;
    public final ChunkHolder nextChunkHolder;
    public int nextNotifyPrimaryFormatMediaChunkIndex;
    public long pendingResetPositionUs;
    public Format primaryDownstreamTrackFormat;
    public final SampleQueue primarySampleQueue;
    public final int primaryTrackType;
    public final List<BaseMediaChunk> readOnlyMediaChunks;
    @Nullable
    public ReleaseCallback<T> releaseCallback;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream.class */
    public final class EmbeddedSampleStream implements SampleStream {
        public final int index;
        public boolean notifiedDownstreamFormat;
        public final ChunkSampleStream<T> parent;
        public final SampleQueue sampleQueue;

        public EmbeddedSampleStream(ChunkSampleStream<T> chunkSampleStream, SampleQueue sampleQueue, int i) {
            this.parent = chunkSampleStream;
            this.sampleQueue = sampleQueue;
            this.index = i;
        }

        private void maybeNotifyDownstreamFormat() {
            if (!this.notifiedDownstreamFormat) {
                ChunkSampleStream.this.eventDispatcher.downstreamFormatChanged(ChunkSampleStream.this.embeddedTrackTypes[this.index], ChunkSampleStream.this.embeddedTrackFormats[this.index], 0, null, ChunkSampleStream.this.lastSeekPositionUs);
                this.notifiedDownstreamFormat = true;
            }
        }

        @Override // androidx.media2.exoplayer.external.source.SampleStream
        public boolean isReady() {
            ChunkSampleStream chunkSampleStream = ChunkSampleStream.this;
            return chunkSampleStream.loadingFinished || (!chunkSampleStream.isPendingReset() && this.sampleQueue.hasNextSample());
        }

        @Override // androidx.media2.exoplayer.external.source.SampleStream
        public void maybeThrowError() throws IOException {
        }

        @Override // androidx.media2.exoplayer.external.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z) {
            if (ChunkSampleStream.this.isPendingReset()) {
                return -3;
            }
            maybeNotifyDownstreamFormat();
            SampleQueue sampleQueue = this.sampleQueue;
            ChunkSampleStream chunkSampleStream = ChunkSampleStream.this;
            return sampleQueue.read(formatHolder, decoderInputBuffer, z, chunkSampleStream.loadingFinished, chunkSampleStream.decodeOnlyUntilPositionUs);
        }

        public void release() {
            Assertions.checkState(ChunkSampleStream.this.embeddedTracksSelected[this.index]);
            ChunkSampleStream.this.embeddedTracksSelected[this.index] = false;
        }

        @Override // androidx.media2.exoplayer.external.source.SampleStream
        public int skipData(long j) {
            int i = 0;
            if (ChunkSampleStream.this.isPendingReset()) {
                return 0;
            }
            maybeNotifyDownstreamFormat();
            if (!ChunkSampleStream.this.loadingFinished || j <= this.sampleQueue.getLargestQueuedTimestampUs()) {
                i = this.sampleQueue.advanceTo(j, true, true);
                if (i == -1) {
                }
            } else {
                i = this.sampleQueue.advanceToEnd();
            }
            return i;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$ReleaseCallback.class */
    public interface ReleaseCallback<T extends ChunkSource> {
        void onSampleStreamReleased(ChunkSampleStream<T> chunkSampleStream);
    }

    @Deprecated
    public ChunkSampleStream(int i, int[] iArr, Format[] formatArr, T t, SequenceableLoader.Callback<ChunkSampleStream<T>> callback, Allocator allocator, long j, int i2, MediaSourceEventListener.EventDispatcher eventDispatcher) {
        this(i, iArr, formatArr, t, callback, allocator, j, new DefaultLoadErrorHandlingPolicy(i2), eventDispatcher);
    }

    public ChunkSampleStream(int i, int[] iArr, Format[] formatArr, T t, SequenceableLoader.Callback<ChunkSampleStream<T>> callback, Allocator allocator, long j, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher) {
        this.primaryTrackType = i;
        this.embeddedTrackTypes = iArr;
        this.embeddedTrackFormats = formatArr;
        this.chunkSource = t;
        this.callback = callback;
        this.eventDispatcher = eventDispatcher;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.loader = new Loader("Loader:ChunkSampleStream");
        this.nextChunkHolder = new ChunkHolder();
        this.mediaChunks = new ArrayList<>();
        this.readOnlyMediaChunks = Collections.unmodifiableList(this.mediaChunks);
        int i2 = 0;
        int length = iArr == null ? 0 : iArr.length;
        this.embeddedSampleQueues = new SampleQueue[length];
        this.embeddedTracksSelected = new boolean[length];
        int i3 = length + 1;
        int[] iArr2 = new int[i3];
        SampleQueue[] sampleQueueArr = new SampleQueue[i3];
        this.primarySampleQueue = new SampleQueue(allocator);
        iArr2[0] = i;
        sampleQueueArr[0] = this.primarySampleQueue;
        while (i2 < length) {
            SampleQueue sampleQueue = new SampleQueue(allocator);
            this.embeddedSampleQueues[i2] = sampleQueue;
            i2++;
            sampleQueueArr[i2] = sampleQueue;
            iArr2[i2] = iArr[i2];
        }
        this.mediaChunkOutput = new BaseMediaChunkOutput(iArr2, sampleQueueArr);
        this.pendingResetPositionUs = j;
        this.lastSeekPositionUs = j;
    }

    private void discardDownstreamMediaChunks(int i) {
        int min = Math.min(primarySampleIndexToMediaChunkIndex(i, 0), this.nextNotifyPrimaryFormatMediaChunkIndex);
        if (min > 0) {
            Util.removeRange(this.mediaChunks, 0, min);
            this.nextNotifyPrimaryFormatMediaChunkIndex -= min;
        }
    }

    private BaseMediaChunk discardUpstreamMediaChunksFromIndex(int i) {
        BaseMediaChunk baseMediaChunk = this.mediaChunks.get(i);
        ArrayList<BaseMediaChunk> arrayList = this.mediaChunks;
        Util.removeRange(arrayList, i, arrayList.size());
        this.nextNotifyPrimaryFormatMediaChunkIndex = Math.max(this.nextNotifyPrimaryFormatMediaChunkIndex, this.mediaChunks.size());
        int i2 = 0;
        this.primarySampleQueue.discardUpstreamSamples(baseMediaChunk.getFirstSampleIndex(0));
        while (true) {
            SampleQueue[] sampleQueueArr = this.embeddedSampleQueues;
            if (i2 >= sampleQueueArr.length) {
                return baseMediaChunk;
            }
            SampleQueue sampleQueue = sampleQueueArr[i2];
            i2++;
            sampleQueue.discardUpstreamSamples(baseMediaChunk.getFirstSampleIndex(i2));
        }
    }

    private BaseMediaChunk getLastMediaChunk() {
        ArrayList<BaseMediaChunk> arrayList = this.mediaChunks;
        return arrayList.get(arrayList.size() - 1);
    }

    private boolean haveReadFromMediaChunk(int i) {
        int readIndex;
        int i2;
        BaseMediaChunk baseMediaChunk = this.mediaChunks.get(i);
        if (this.primarySampleQueue.getReadIndex() > baseMediaChunk.getFirstSampleIndex(0)) {
            return true;
        }
        int i3 = 0;
        do {
            SampleQueue[] sampleQueueArr = this.embeddedSampleQueues;
            if (i3 >= sampleQueueArr.length) {
                return false;
            }
            readIndex = sampleQueueArr[i3].getReadIndex();
            i2 = i3 + 1;
            i3 = i2;
        } while (readIndex <= baseMediaChunk.getFirstSampleIndex(i2));
        return true;
    }

    private boolean isMediaChunk(Chunk chunk) {
        return chunk instanceof BaseMediaChunk;
    }

    private void maybeNotifyPrimaryTrackFormatChanged() {
        int primarySampleIndexToMediaChunkIndex = primarySampleIndexToMediaChunkIndex(this.primarySampleQueue.getReadIndex(), this.nextNotifyPrimaryFormatMediaChunkIndex - 1);
        while (true) {
            int i = this.nextNotifyPrimaryFormatMediaChunkIndex;
            if (i <= primarySampleIndexToMediaChunkIndex) {
                this.nextNotifyPrimaryFormatMediaChunkIndex = i + 1;
                maybeNotifyPrimaryTrackFormatChanged(i);
            } else {
                return;
            }
        }
    }

    private void maybeNotifyPrimaryTrackFormatChanged(int i) {
        BaseMediaChunk baseMediaChunk = this.mediaChunks.get(i);
        Format format = baseMediaChunk.trackFormat;
        if (!format.equals(this.primaryDownstreamTrackFormat)) {
            this.eventDispatcher.downstreamFormatChanged(this.primaryTrackType, format, baseMediaChunk.trackSelectionReason, baseMediaChunk.trackSelectionData, baseMediaChunk.startTimeUs);
        }
        this.primaryDownstreamTrackFormat = format;
    }

    private int primarySampleIndexToMediaChunkIndex(int i, int i2) {
        int i3;
        do {
            i3 = i2 + 1;
            if (i3 >= this.mediaChunks.size()) {
                return this.mediaChunks.size() - 1;
            }
            i2 = i3;
        } while (this.mediaChunks.get(i3).getFirstSampleIndex(0) <= i);
        return i3 - 1;
    }

    @Override // androidx.media2.exoplayer.external.source.SequenceableLoader
    public boolean continueLoading(long j) {
        long j2;
        List<BaseMediaChunk> list;
        boolean z = false;
        if (this.loadingFinished || this.loader.isLoading()) {
            return false;
        }
        boolean isPendingReset = isPendingReset();
        if (isPendingReset) {
            list = Collections.emptyList();
            j2 = this.pendingResetPositionUs;
        } else {
            list = this.readOnlyMediaChunks;
            j2 = getLastMediaChunk().endTimeUs;
        }
        this.chunkSource.getNextChunk(j, j2, list, this.nextChunkHolder);
        ChunkHolder chunkHolder = this.nextChunkHolder;
        boolean z2 = chunkHolder.endOfStream;
        Chunk chunk = chunkHolder.chunk;
        chunkHolder.clear();
        if (z2) {
            this.pendingResetPositionUs = C0463C.TIME_UNSET;
            this.loadingFinished = true;
            return true;
        } else if (chunk == null) {
            return false;
        } else {
            if (isMediaChunk(chunk)) {
                BaseMediaChunk baseMediaChunk = (BaseMediaChunk) chunk;
                if (isPendingReset) {
                    if (baseMediaChunk.startTimeUs == this.pendingResetPositionUs) {
                        z = true;
                    }
                    this.decodeOnlyUntilPositionUs = z ? 0L : this.pendingResetPositionUs;
                    this.pendingResetPositionUs = C0463C.TIME_UNSET;
                }
                baseMediaChunk.init(this.mediaChunkOutput);
                this.mediaChunks.add(baseMediaChunk);
            }
            this.eventDispatcher.loadStarted(chunk.dataSpec, chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, this.loader.startLoading(chunk, this, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(chunk.type)));
            return true;
        }
    }

    public void discardBuffer(long j, boolean z) {
        if (!isPendingReset()) {
            int firstIndex = this.primarySampleQueue.getFirstIndex();
            this.primarySampleQueue.discardTo(j, z, true);
            int firstIndex2 = this.primarySampleQueue.getFirstIndex();
            if (firstIndex2 > firstIndex) {
                long firstTimestampUs = this.primarySampleQueue.getFirstTimestampUs();
                int i = 0;
                while (true) {
                    SampleQueue[] sampleQueueArr = this.embeddedSampleQueues;
                    if (i >= sampleQueueArr.length) {
                        break;
                    }
                    sampleQueueArr[i].discardTo(firstTimestampUs, z, this.embeddedTracksSelected[i]);
                    i++;
                }
            }
            discardDownstreamMediaChunks(firstIndex2);
        }
    }

    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        return this.chunkSource.getAdjustedSeekPositionUs(j, seekParameters);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
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
            androidx.media2.exoplayer.external.source.chunk.BaseMediaChunk r0 = r0.getLastMediaChunk()
            r8 = r0
            r0 = r8
            boolean r0 = r0.isLoadCompleted()
            if (r0 == 0) goto L_0x002b
            goto L_0x004e
        L_0x002b:
            r0 = r5
            java.util.ArrayList<androidx.media2.exoplayer.external.source.chunk.BaseMediaChunk> r0 = r0.mediaChunks
            int r0 = r0.size()
            r1 = 1
            if (r0 <= r1) goto L_0x004c
            r0 = r5
            java.util.ArrayList<androidx.media2.exoplayer.external.source.chunk.BaseMediaChunk> r0 = r0.mediaChunks
            r8 = r0
            r0 = r8
            r1 = r8
            int r1 = r1.size()
            r2 = 2
            int r1 = r1 - r2
            java.lang.Object r0 = r0.get(r1)
            androidx.media2.exoplayer.external.source.chunk.BaseMediaChunk r0 = (androidx.media2.exoplayer.external.source.chunk.BaseMediaChunk) r0
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
            r1 = r5
            androidx.media2.exoplayer.external.source.SampleQueue r1 = r1.primarySampleQueue
            long r1 = r1.getLargestQueuedTimestampUs()
            long r0 = java.lang.Math.max(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.chunk.ChunkSampleStream.getBufferedPositionUs():long");
    }

    public T getChunkSource() {
        return this.chunkSource;
    }

    @Override // androidx.media2.exoplayer.external.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        return this.loadingFinished ? Long.MIN_VALUE : getLastMediaChunk().endTimeUs;
    }

    public boolean isPendingReset() {
        return this.pendingResetPositionUs != C0463C.TIME_UNSET;
    }

    @Override // androidx.media2.exoplayer.external.source.SampleStream
    public boolean isReady() {
        return this.loadingFinished || (!isPendingReset() && this.primarySampleQueue.hasNextSample());
    }

    @Override // androidx.media2.exoplayer.external.source.SampleStream
    public void maybeThrowError() throws IOException {
        this.loader.maybeThrowError();
        if (!this.loader.isLoading()) {
            this.chunkSource.maybeThrowError();
        }
    }

    public void onLoadCanceled(Chunk chunk, long j, long j2, boolean z) {
        this.eventDispatcher.loadCanceled(chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, j, j2, chunk.bytesLoaded());
        if (!z) {
            this.primarySampleQueue.reset();
            for (SampleQueue sampleQueue : this.embeddedSampleQueues) {
                sampleQueue.reset();
            }
            this.callback.onContinueLoadingRequested(this);
        }
    }

    public void onLoadCompleted(Chunk chunk, long j, long j2) {
        this.chunkSource.onChunkLoadCompleted(chunk);
        this.eventDispatcher.loadCompleted(chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, j, j2, chunk.bytesLoaded());
        this.callback.onContinueLoadingRequested(this);
    }

    public Loader.LoadErrorAction onLoadError(Chunk chunk, long j, long j2, IOException iOException, int i) {
        long bytesLoaded = chunk.bytesLoaded();
        boolean isMediaChunk = isMediaChunk(chunk);
        int size = this.mediaChunks.size() - 1;
        boolean z = bytesLoaded == 0 || !isMediaChunk || !haveReadFromMediaChunk(size);
        Loader.LoadErrorAction loadErrorAction = null;
        if (this.chunkSource.onChunkLoadError(chunk, z, iOException, z ? this.loadErrorHandlingPolicy.getBlacklistDurationMsFor(chunk.type, j2, iOException, i) : C0463C.TIME_UNSET)) {
            if (z) {
                Loader.LoadErrorAction loadErrorAction2 = Loader.DONT_RETRY;
                loadErrorAction = loadErrorAction2;
                if (isMediaChunk) {
                    Assertions.checkState(discardUpstreamMediaChunksFromIndex(size) == chunk);
                    loadErrorAction = loadErrorAction2;
                    if (this.mediaChunks.isEmpty()) {
                        this.pendingResetPositionUs = this.lastSeekPositionUs;
                        loadErrorAction = loadErrorAction2;
                    }
                }
            } else {
                Log.m37483w(TAG, "Ignoring attempt to cancel non-cancelable load.");
                loadErrorAction = null;
            }
        }
        Loader.LoadErrorAction loadErrorAction3 = loadErrorAction;
        if (loadErrorAction == null) {
            long retryDelayMsFor = this.loadErrorHandlingPolicy.getRetryDelayMsFor(chunk.type, j2, iOException, i);
            loadErrorAction3 = retryDelayMsFor != C0463C.TIME_UNSET ? Loader.createRetryAction(false, retryDelayMsFor) : Loader.DONT_RETRY_FATAL;
        }
        boolean z2 = !loadErrorAction3.isRetry();
        this.eventDispatcher.loadError(chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, j, j2, bytesLoaded, iOException, z2);
        if (z2) {
            this.callback.onContinueLoadingRequested(this);
        }
        return loadErrorAction3;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        this.primarySampleQueue.reset();
        for (SampleQueue sampleQueue : this.embeddedSampleQueues) {
            sampleQueue.reset();
        }
        ReleaseCallback<T> releaseCallback = this.releaseCallback;
        if (releaseCallback != null) {
            releaseCallback.onSampleStreamReleased(this);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.SampleStream
    public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z) {
        if (isPendingReset()) {
            return -3;
        }
        maybeNotifyPrimaryTrackFormatChanged();
        return this.primarySampleQueue.read(formatHolder, decoderInputBuffer, z, this.loadingFinished, this.decodeOnlyUntilPositionUs);
    }

    @Override // androidx.media2.exoplayer.external.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
        if (!this.loader.isLoading() && !isPendingReset()) {
            int size = this.mediaChunks.size();
            int preferredQueueSize = this.chunkSource.getPreferredQueueSize(j, this.readOnlyMediaChunks);
            int i = preferredQueueSize;
            if (size > preferredQueueSize) {
                while (true) {
                    if (i >= size) {
                        i = size;
                        break;
                    } else if (!haveReadFromMediaChunk(i)) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (i != size) {
                    long j2 = getLastMediaChunk().endTimeUs;
                    BaseMediaChunk discardUpstreamMediaChunksFromIndex = discardUpstreamMediaChunksFromIndex(i);
                    if (this.mediaChunks.isEmpty()) {
                        this.pendingResetPositionUs = this.lastSeekPositionUs;
                    }
                    this.loadingFinished = false;
                    this.eventDispatcher.upstreamDiscarded(this.primaryTrackType, discardUpstreamMediaChunksFromIndex.startTimeUs, j2);
                }
            }
        }
    }

    public void release() {
        release(null);
    }

    public void release(@Nullable ReleaseCallback<T> releaseCallback) {
        this.releaseCallback = releaseCallback;
        this.primarySampleQueue.discardToEnd();
        for (SampleQueue sampleQueue : this.embeddedSampleQueues) {
            sampleQueue.discardToEnd();
        }
        this.loader.release(this);
    }

    public void seekToUs(long j) {
        BaseMediaChunk baseMediaChunk;
        boolean z;
        SampleQueue[] sampleQueueArr;
        this.lastSeekPositionUs = j;
        if (isPendingReset()) {
            this.pendingResetPositionUs = j;
            return;
        }
        int i = 0;
        while (true) {
            baseMediaChunk = null;
            if (i >= this.mediaChunks.size()) {
                break;
            }
            baseMediaChunk = this.mediaChunks.get(i);
            int i2 = (baseMediaChunk.startTimeUs > j ? 1 : (baseMediaChunk.startTimeUs == j ? 0 : -1));
            if (i2 == 0 && baseMediaChunk.clippedStartTimeUs == C0463C.TIME_UNSET) {
                break;
            } else if (i2 > 0) {
                baseMediaChunk = null;
                break;
            } else {
                i++;
            }
        }
        this.primarySampleQueue.rewind();
        if (baseMediaChunk != null) {
            z = this.primarySampleQueue.setReadPosition(baseMediaChunk.getFirstSampleIndex(0));
            this.decodeOnlyUntilPositionUs = 0L;
        } else {
            z = this.primarySampleQueue.advanceTo(j, true, (j > getNextLoadPositionUs() ? 1 : (j == getNextLoadPositionUs() ? 0 : -1)) < 0) != -1;
            this.decodeOnlyUntilPositionUs = this.lastSeekPositionUs;
        }
        if (z) {
            this.nextNotifyPrimaryFormatMediaChunkIndex = primarySampleIndexToMediaChunkIndex(this.primarySampleQueue.getReadIndex(), 0);
            for (SampleQueue sampleQueue : this.embeddedSampleQueues) {
                sampleQueue.rewind();
                sampleQueue.advanceTo(j, true, false);
            }
            return;
        }
        this.pendingResetPositionUs = j;
        this.loadingFinished = false;
        this.mediaChunks.clear();
        this.nextNotifyPrimaryFormatMediaChunkIndex = 0;
        if (this.loader.isLoading()) {
            this.loader.cancelLoading();
            return;
        }
        this.primarySampleQueue.reset();
        for (SampleQueue sampleQueue2 : this.embeddedSampleQueues) {
            sampleQueue2.reset();
        }
    }

    public ChunkSampleStream<T>.EmbeddedSampleStream selectEmbeddedTrack(long j, int i) {
        for (int i2 = 0; i2 < this.embeddedSampleQueues.length; i2++) {
            if (this.embeddedTrackTypes[i2] == i) {
                Assertions.checkState(!this.embeddedTracksSelected[i2]);
                this.embeddedTracksSelected[i2] = true;
                this.embeddedSampleQueues[i2].rewind();
                this.embeddedSampleQueues[i2].advanceTo(j, true, true);
                return new EmbeddedSampleStream(this, this.embeddedSampleQueues[i2], i2);
            }
        }
        throw new IllegalStateException();
    }

    @Override // androidx.media2.exoplayer.external.source.SampleStream
    public int skipData(long j) {
        int i = 0;
        if (isPendingReset()) {
            return 0;
        }
        if (!this.loadingFinished || j <= this.primarySampleQueue.getLargestQueuedTimestampUs()) {
            i = this.primarySampleQueue.advanceTo(j, true, true);
            if (i == -1) {
            }
        } else {
            i = this.primarySampleQueue.advanceToEnd();
        }
        maybeNotifyPrimaryTrackFormatChanged();
        return i;
    }
}
