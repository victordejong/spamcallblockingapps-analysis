package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.SeekParameters;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.offline.StreamKey;
import androidx.media2.exoplayer.external.source.CompositeSequenceableLoaderFactory;
import androidx.media2.exoplayer.external.source.MediaPeriod;
import androidx.media2.exoplayer.external.source.MediaSourceEventListener;
import androidx.media2.exoplayer.external.source.SampleStream;
import androidx.media2.exoplayer.external.source.SequenceableLoader;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.source.hls.HlsSampleStreamWrapper;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsMasterPlaylist;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker;
import androidx.media2.exoplayer.external.trackselection.TrackSelection;
import androidx.media2.exoplayer.external.upstream.Allocator;
import androidx.media2.exoplayer.external.upstream.LoadErrorHandlingPolicy;
import androidx.media2.exoplayer.external.upstream.TransferListener;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsMediaPeriod.class */
public final class HlsMediaPeriod implements MediaPeriod, HlsSampleStreamWrapper.Callback, HlsPlaylistTracker.PlaylistEventListener {
    public final Allocator allocator;
    public final boolean allowChunklessPreparation;
    @Nullable
    public MediaPeriod.Callback callback;
    public SequenceableLoader compositeSequenceableLoader;
    public final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    public final HlsDataSourceFactory dataSourceFactory;
    public final MediaSourceEventListener.EventDispatcher eventDispatcher;
    public final HlsExtractorFactory extractorFactory;
    public final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    @Nullable
    public final TransferListener mediaTransferListener;
    public boolean notifiedReadingStarted;
    public int pendingPrepareCount;
    public final HlsPlaylistTracker playlistTracker;
    public TrackGroupArray trackGroups;
    public final boolean useSessionKeys;
    public final IdentityHashMap<SampleStream, Integer> streamWrapperIndices = new IdentityHashMap<>();
    public final TimestampAdjusterProvider timestampAdjusterProvider = new TimestampAdjusterProvider();
    public HlsSampleStreamWrapper[] sampleStreamWrappers = new HlsSampleStreamWrapper[0];
    public HlsSampleStreamWrapper[] enabledSampleStreamWrappers = new HlsSampleStreamWrapper[0];
    public int[][] manifestUrlIndicesPerWrapper = new int[0];

    /* JADX WARN: Type inference failed for: r1v19, types: [int[], int[][]] */
    public HlsMediaPeriod(HlsExtractorFactory hlsExtractorFactory, HlsPlaylistTracker hlsPlaylistTracker, HlsDataSourceFactory hlsDataSourceFactory, @Nullable TransferListener transferListener, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher, Allocator allocator, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, boolean z, boolean z2) {
        this.extractorFactory = hlsExtractorFactory;
        this.playlistTracker = hlsPlaylistTracker;
        this.dataSourceFactory = hlsDataSourceFactory;
        this.mediaTransferListener = transferListener;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.eventDispatcher = eventDispatcher;
        this.allocator = allocator;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.allowChunklessPreparation = z;
        this.useSessionKeys = z2;
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(new SequenceableLoader[0]);
        eventDispatcher.mediaPeriodCreated();
    }

    private void buildAndPrepareAudioSampleStreamWrappers(long j, List<HlsMasterPlaylist.Rendition> list, List<HlsSampleStreamWrapper> list2, List<int[]> list3, Map<String, DrmInitData> map) {
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        ArrayList arrayList3 = new ArrayList(list.size());
        HashSet hashSet = new HashSet();
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i).name;
            if (hashSet.add(str)) {
                arrayList.clear();
                arrayList2.clear();
                arrayList3.clear();
                boolean z = true;
                for (int i2 = 0; i2 < list.size(); i2++) {
                    z = z;
                    if (Util.areEqual(str, list.get(i2).name)) {
                        HlsMasterPlaylist.Rendition rendition = list.get(i2);
                        arrayList3.add(Integer.valueOf(i2));
                        arrayList.add(rendition.url);
                        arrayList2.add(rendition.format);
                        z &= rendition.format.codecs != null;
                    }
                }
                HlsSampleStreamWrapper buildSampleStreamWrapper = buildSampleStreamWrapper(1, (Uri[]) arrayList.toArray(new Uri[0]), (Format[]) arrayList2.toArray(new Format[0]), null, Collections.emptyList(), map, j);
                list3.add(Util.toArray(arrayList3));
                list2.add(buildSampleStreamWrapper);
                if (this.allowChunklessPreparation && z) {
                    buildSampleStreamWrapper.prepareWithMasterPlaylistInfo(new TrackGroupArray(new TrackGroup((Format[]) arrayList2.toArray(new Format[0]))), 0, TrackGroupArray.EMPTY);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void buildAndPrepareMainSampleStreamWrapper(androidx.media2.exoplayer.external.source.hls.playlist.HlsMasterPlaylist r12, long r13, java.util.List<androidx.media2.exoplayer.external.source.hls.HlsSampleStreamWrapper> r15, java.util.List<int[]> r16, java.util.Map<java.lang.String, androidx.media2.exoplayer.external.drm.DrmInitData> r17) {
        /*
            Method dump skipped, instructions count: 789
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.HlsMediaPeriod.buildAndPrepareMainSampleStreamWrapper(androidx.media2.exoplayer.external.source.hls.playlist.HlsMasterPlaylist, long, java.util.List, java.util.List, java.util.Map):void");
    }

    private void buildAndPrepareSampleStreamWrappers(long j) {
        HlsMasterPlaylist hlsMasterPlaylist = (HlsMasterPlaylist) Assertions.checkNotNull(this.playlistTracker.getMasterPlaylist());
        Map<String, DrmInitData> deriveOverridingDrmInitData = this.useSessionKeys ? deriveOverridingDrmInitData(hlsMasterPlaylist.sessionKeyDrmInitData) : Collections.emptyMap();
        boolean isEmpty = hlsMasterPlaylist.variants.isEmpty();
        List<HlsMasterPlaylist.Rendition> list = hlsMasterPlaylist.audios;
        List<HlsMasterPlaylist.Rendition> list2 = hlsMasterPlaylist.subtitles;
        this.pendingPrepareCount = 0;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!isEmpty) {
            buildAndPrepareMainSampleStreamWrapper(hlsMasterPlaylist, j, arrayList, arrayList2, deriveOverridingDrmInitData);
        }
        buildAndPrepareAudioSampleStreamWrappers(j, list, arrayList, arrayList2, deriveOverridingDrmInitData);
        for (int i = 0; i < list2.size(); i++) {
            HlsMasterPlaylist.Rendition rendition = list2.get(i);
            HlsSampleStreamWrapper buildSampleStreamWrapper = buildSampleStreamWrapper(3, new Uri[]{rendition.url}, new Format[]{rendition.format}, null, Collections.emptyList(), deriveOverridingDrmInitData, j);
            arrayList2.add(new int[]{i});
            arrayList.add(buildSampleStreamWrapper);
            buildSampleStreamWrapper.prepareWithMasterPlaylistInfo(new TrackGroupArray(new TrackGroup(rendition.format)), 0, TrackGroupArray.EMPTY);
        }
        this.sampleStreamWrappers = (HlsSampleStreamWrapper[]) arrayList.toArray(new HlsSampleStreamWrapper[0]);
        this.manifestUrlIndicesPerWrapper = (int[][]) arrayList2.toArray(new int[0]);
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr = this.sampleStreamWrappers;
        this.pendingPrepareCount = hlsSampleStreamWrapperArr.length;
        hlsSampleStreamWrapperArr[0].setIsTimestampMaster(true);
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.continuePreparing();
        }
        this.enabledSampleStreamWrappers = this.sampleStreamWrappers;
    }

    private HlsSampleStreamWrapper buildSampleStreamWrapper(int i, Uri[] uriArr, Format[] formatArr, Format format, List<Format> list, Map<String, DrmInitData> map, long j) {
        return new HlsSampleStreamWrapper(i, this, new HlsChunkSource(this.extractorFactory, this.playlistTracker, uriArr, formatArr, this.dataSourceFactory, this.mediaTransferListener, this.timestampAdjusterProvider, list), map, this.allocator, j, format, this.loadErrorHandlingPolicy, this.eventDispatcher);
    }

    public static Format deriveAudioFormat(Format format, Format format2, boolean z) {
        String str;
        int i;
        int i2;
        int i3;
        String str2;
        String str3;
        if (format2 != null) {
            str2 = format2.codecs;
            i3 = format2.channelCount;
            i2 = format2.selectionFlags;
            i = format2.roleFlags;
            str = format2.language;
            str3 = format2.label;
        } else {
            str2 = Util.getCodecsOfType(format.codecs, 1);
            if (z) {
                i3 = format.channelCount;
                i2 = format.selectionFlags;
                i = format.roleFlags;
                str = format.language;
                str3 = format.label;
            } else {
                str3 = null;
                str = null;
                i3 = -1;
                i2 = 0;
                i = 0;
            }
        }
        return Format.createAudioContainerFormat(format.f79id, str3, format.containerMimeType, MimeTypes.getMediaMimeType(str2), str2, z ? format.bitrate : -1, i3, -1, null, i2, i, str);
    }

    public static Map<String, DrmInitData> deriveOverridingDrmInitData(List<DrmInitData> list) {
        ArrayList arrayList = new ArrayList(list);
        HashMap hashMap = new HashMap();
        int i = 0;
        while (i < arrayList.size()) {
            DrmInitData drmInitData = list.get(i);
            String str = drmInitData.schemeType;
            i++;
            int i2 = i;
            while (i2 < arrayList.size()) {
                DrmInitData drmInitData2 = (DrmInitData) arrayList.get(i2);
                if (TextUtils.equals(drmInitData2.schemeType, str)) {
                    drmInitData = drmInitData.merge(drmInitData2);
                    arrayList.remove(i2);
                } else {
                    i2++;
                }
            }
            hashMap.put(str, drmInitData);
        }
        return hashMap;
    }

    public static Format deriveVideoFormat(Format format) {
        String codecsOfType = Util.getCodecsOfType(format.codecs, 2);
        return Format.createVideoContainerFormat(format.f79id, format.label, format.containerMimeType, MimeTypes.getMediaMimeType(codecsOfType), codecsOfType, format.bitrate, format.width, format.height, format.frameRate, null, format.selectionFlags, format.roleFlags);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
    public boolean continueLoading(long j) {
        if (this.trackGroups != null) {
            return this.compositeSequenceableLoader.continueLoading(j);
        }
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.continuePreparing();
        }
        return false;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.enabledSampleStreamWrappers) {
            hlsSampleStreamWrapper.discardBuffer(j, z);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        return j;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.compositeSequenceableLoader.getBufferedPositionUs();
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return this.compositeSequenceableLoader.getNextLoadPositionUs();
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public List<StreamKey> getStreamKeys(List<TrackSelection> list) {
        int i;
        TrackGroupArray trackGroupArray;
        int[] iArr;
        HlsMasterPlaylist hlsMasterPlaylist = (HlsMasterPlaylist) Assertions.checkNotNull(this.playlistTracker.getMasterPlaylist());
        int i2 = !hlsMasterPlaylist.variants.isEmpty();
        int length = this.sampleStreamWrappers.length;
        int size = hlsMasterPlaylist.subtitles.size();
        if (i2 != 0) {
            HlsSampleStreamWrapper hlsSampleStreamWrapper = this.sampleStreamWrappers[0];
            iArr = this.manifestUrlIndicesPerWrapper[0];
            trackGroupArray = hlsSampleStreamWrapper.getTrackGroups();
            i = hlsSampleStreamWrapper.getPrimaryTrackGroupIndex();
        } else {
            iArr = new int[0];
            trackGroupArray = TrackGroupArray.EMPTY;
            i = 0;
        }
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        boolean z2 = false;
        for (TrackSelection trackSelection : list) {
            TrackGroup trackGroup = trackSelection.getTrackGroup();
            int indexOf = trackGroupArray.indexOf(trackGroup);
            if (indexOf == -1) {
                int i3 = i2;
                while (true) {
                    HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr = this.sampleStreamWrappers;
                    z = z;
                    z2 = z2;
                    if (i3 >= hlsSampleStreamWrapperArr.length) {
                        break;
                    } else if (hlsSampleStreamWrapperArr[i3].getTrackGroups().indexOf(trackGroup) != -1) {
                        int i4 = i3 < length - size ? 1 : 2;
                        int[] iArr2 = this.manifestUrlIndicesPerWrapper[i3];
                        int i5 = 0;
                        while (true) {
                            z = z;
                            z2 = z2;
                            if (i5 < trackSelection.length()) {
                                arrayList.add(new StreamKey(i4, iArr2[trackSelection.getIndexInTrackGroup(i5)]));
                                i5++;
                            }
                        }
                    } else {
                        i3++;
                    }
                }
            } else if (indexOf == i) {
                for (int i6 = 0; i6 < trackSelection.length(); i6++) {
                    arrayList.add(new StreamKey(0, iArr[trackSelection.getIndexInTrackGroup(i6)]));
                }
                z2 = true;
                z = z;
            } else {
                z = true;
                z2 = z2;
            }
        }
        if (z && !z2) {
            int i7 = iArr[0];
            int i8 = hlsMasterPlaylist.variants.get(iArr[0]).format.bitrate;
            for (int i9 = 1; i9 < iArr.length; i9++) {
                int i10 = hlsMasterPlaylist.variants.get(iArr[i9]).format.bitrate;
                i8 = i8;
                if (i10 < i8) {
                    i7 = iArr[i9];
                    i8 = i10;
                }
            }
            arrayList.add(new StreamKey(0, i7));
        }
        return arrayList;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.trackGroups;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.maybeThrowPrepareError();
        }
    }

    public void onContinueLoadingRequested(HlsSampleStreamWrapper hlsSampleStreamWrapper) {
        this.callback.onContinueLoadingRequested(this);
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
    public void onPlaylistChanged() {
        this.callback.onContinueLoadingRequested(this);
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
    public boolean onPlaylistError(Uri uri, long j) {
        boolean z = true;
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            z &= hlsSampleStreamWrapper.onPlaylistError(uri, j);
        }
        this.callback.onContinueLoadingRequested(this);
        return z;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.HlsSampleStreamWrapper.Callback
    public void onPlaylistRefreshRequired(Uri uri) {
        this.playlistTracker.refreshPlaylist(uri);
    }

    @Override // androidx.media2.exoplayer.external.source.hls.HlsSampleStreamWrapper.Callback
    public void onPrepared() {
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr;
        int i = this.pendingPrepareCount - 1;
        this.pendingPrepareCount = i;
        if (i <= 0) {
            int i2 = 0;
            for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
                i2 += hlsSampleStreamWrapper.getTrackGroups().length;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[i2];
            int i3 = 0;
            for (HlsSampleStreamWrapper hlsSampleStreamWrapper2 : this.sampleStreamWrappers) {
                int i4 = hlsSampleStreamWrapper2.getTrackGroups().length;
                int i5 = 0;
                while (i5 < i4) {
                    trackGroupArr[i3] = hlsSampleStreamWrapper2.getTrackGroups().get(i5);
                    i5++;
                    i3++;
                }
            }
            this.trackGroups = new TrackGroupArray(trackGroupArr);
            this.callback.onPrepared(this);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j) {
        this.callback = callback;
        this.playlistTracker.addListener(this);
        buildAndPrepareSampleStreamWrappers(j);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public long readDiscontinuity() {
        if (this.notifiedReadingStarted) {
            return C0463C.TIME_UNSET;
        }
        this.eventDispatcher.readingStarted();
        this.notifiedReadingStarted = true;
        return C0463C.TIME_UNSET;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
        this.compositeSequenceableLoader.reevaluateBuffer(j);
    }

    public void release() {
        this.playlistTracker.removeListener(this);
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.release();
        }
        this.callback = null;
        this.eventDispatcher.mediaPeriodReleased();
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public long seekToUs(long j) {
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr = this.enabledSampleStreamWrappers;
        if (hlsSampleStreamWrapperArr.length > 0) {
            boolean seekToUs = hlsSampleStreamWrapperArr[0].seekToUs(j, false);
            int i = 1;
            while (true) {
                HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr2 = this.enabledSampleStreamWrappers;
                if (i >= hlsSampleStreamWrapperArr2.length) {
                    break;
                }
                hlsSampleStreamWrapperArr2[i].seekToUs(j, seekToUs);
                i++;
            }
            if (seekToUs) {
                this.timestampAdjusterProvider.reset();
            }
        }
        return j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x01ee, code lost:
        if (r0 == r0[0]) goto L_0x020b;
     */
    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long selectTracks(androidx.media2.exoplayer.external.trackselection.TrackSelection[] r10, boolean[] r11, androidx.media2.exoplayer.external.source.SampleStream[] r12, boolean[] r13, long r14) {
        /*
            Method dump skipped, instructions count: 581
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.HlsMediaPeriod.selectTracks(androidx.media2.exoplayer.external.trackselection.TrackSelection[], boolean[], androidx.media2.exoplayer.external.source.SampleStream[], boolean[], long):long");
    }
}
