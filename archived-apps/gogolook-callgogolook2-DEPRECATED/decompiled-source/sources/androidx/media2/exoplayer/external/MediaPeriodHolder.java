package androidx.media2.exoplayer.external;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.source.ClippingMediaPeriod;
import androidx.media2.exoplayer.external.source.EmptySampleStream;
import androidx.media2.exoplayer.external.source.MediaPeriod;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.source.SampleStream;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.TrackSelection;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionArray;
import androidx.media2.exoplayer.external.trackselection.TrackSelector;
import androidx.media2.exoplayer.external.trackselection.TrackSelectorResult;
import androidx.media2.exoplayer.external.upstream.Allocator;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Log;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/MediaPeriodHolder.class */
public final class MediaPeriodHolder {
    public static final String TAG = "MediaPeriodHolder";
    public boolean hasEnabledTracks;
    public MediaPeriodInfo info;
    public final boolean[] mayRetainStreamFlags;
    public final MediaPeriod mediaPeriod;
    public final MediaSource mediaSource;
    @Nullable
    public MediaPeriodHolder next;
    public boolean prepared;
    public final RendererCapabilities[] rendererCapabilities;
    public long rendererPositionOffsetUs;
    public final SampleStream[] sampleStreams;
    @Nullable
    public TrackGroupArray trackGroups;
    public final TrackSelector trackSelector;
    @Nullable
    public TrackSelectorResult trackSelectorResult;
    public final Object uid;

    public MediaPeriodHolder(RendererCapabilities[] rendererCapabilitiesArr, long j, TrackSelector trackSelector, Allocator allocator, MediaSource mediaSource, MediaPeriodInfo mediaPeriodInfo) {
        this.rendererCapabilities = rendererCapabilitiesArr;
        long j2 = mediaPeriodInfo.startPositionUs;
        this.rendererPositionOffsetUs = j - j2;
        this.trackSelector = trackSelector;
        this.mediaSource = mediaSource;
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.f80id;
        this.uid = mediaPeriodId.periodUid;
        this.info = mediaPeriodInfo;
        this.sampleStreams = new SampleStream[rendererCapabilitiesArr.length];
        this.mayRetainStreamFlags = new boolean[rendererCapabilitiesArr.length];
        this.mediaPeriod = createMediaPeriod(mediaPeriodId, mediaSource, allocator, j2, mediaPeriodInfo.endPositionUs);
    }

    private void associateNoSampleRenderersWithEmptySampleStream(SampleStream[] sampleStreamArr) {
        TrackSelectorResult trackSelectorResult = (TrackSelectorResult) Assertions.checkNotNull(this.trackSelectorResult);
        int i = 0;
        while (true) {
            RendererCapabilities[] rendererCapabilitiesArr = this.rendererCapabilities;
            if (i < rendererCapabilitiesArr.length) {
                if (rendererCapabilitiesArr[i].getTrackType() == 6 && trackSelectorResult.isRendererEnabled(i)) {
                    sampleStreamArr[i] = new EmptySampleStream();
                }
                i++;
            } else {
                return;
            }
        }
    }

    public static MediaPeriod createMediaPeriod(MediaSource.MediaPeriodId mediaPeriodId, MediaSource mediaSource, Allocator allocator, long j, long j2) {
        MediaPeriod createPeriod = mediaSource.createPeriod(mediaPeriodId, allocator, j);
        if (!(j2 == C0463C.TIME_UNSET || j2 == Long.MIN_VALUE)) {
            createPeriod = new ClippingMediaPeriod(createPeriod, true, 0L, j2);
        }
        return createPeriod;
    }

    private void disableTrackSelectionsInResult() {
        TrackSelectorResult trackSelectorResult = this.trackSelectorResult;
        if (isLoadingMediaPeriod() && trackSelectorResult != null) {
            for (int i = 0; i < trackSelectorResult.length; i++) {
                boolean isRendererEnabled = trackSelectorResult.isRendererEnabled(i);
                TrackSelection trackSelection = trackSelectorResult.selections.get(i);
                if (isRendererEnabled && trackSelection != null) {
                    trackSelection.disable();
                }
            }
        }
    }

    private void disassociateNoSampleRenderersWithEmptySampleStream(SampleStream[] sampleStreamArr) {
        int i = 0;
        while (true) {
            RendererCapabilities[] rendererCapabilitiesArr = this.rendererCapabilities;
            if (i < rendererCapabilitiesArr.length) {
                if (rendererCapabilitiesArr[i].getTrackType() == 6) {
                    sampleStreamArr[i] = null;
                }
                i++;
            } else {
                return;
            }
        }
    }

    private void enableTrackSelectionsInResult() {
        TrackSelectorResult trackSelectorResult = this.trackSelectorResult;
        if (isLoadingMediaPeriod() && trackSelectorResult != null) {
            for (int i = 0; i < trackSelectorResult.length; i++) {
                boolean isRendererEnabled = trackSelectorResult.isRendererEnabled(i);
                TrackSelection trackSelection = trackSelectorResult.selections.get(i);
                if (isRendererEnabled && trackSelection != null) {
                    trackSelection.enable();
                }
            }
        }
    }

    private boolean isLoadingMediaPeriod() {
        return this.next == null;
    }

    public static void releaseMediaPeriod(long j, MediaSource mediaSource, MediaPeriod mediaPeriod) {
        try {
            if (j == C0463C.TIME_UNSET || j == Long.MIN_VALUE) {
                mediaSource.releasePeriod(mediaPeriod);
            } else {
                mediaSource.releasePeriod(((ClippingMediaPeriod) mediaPeriod).mediaPeriod);
            }
        } catch (RuntimeException e) {
            Log.m37486e(TAG, "Period release failed.", e);
        }
    }

    public long applyTrackSelection(TrackSelectorResult trackSelectorResult, long j, boolean z) {
        return applyTrackSelection(trackSelectorResult, j, z, new boolean[this.rendererCapabilities.length]);
    }

    public long applyTrackSelection(TrackSelectorResult trackSelectorResult, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= trackSelectorResult.length) {
                break;
            }
            boolean[] zArr2 = this.mayRetainStreamFlags;
            if (z || !trackSelectorResult.isEquivalent(this.trackSelectorResult, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        disassociateNoSampleRenderersWithEmptySampleStream(this.sampleStreams);
        disableTrackSelectionsInResult();
        this.trackSelectorResult = trackSelectorResult;
        enableTrackSelectionsInResult();
        TrackSelectionArray trackSelectionArray = trackSelectorResult.selections;
        long selectTracks = this.mediaPeriod.selectTracks(trackSelectionArray.getAll(), this.mayRetainStreamFlags, this.sampleStreams, zArr, j);
        associateNoSampleRenderersWithEmptySampleStream(this.sampleStreams);
        this.hasEnabledTracks = false;
        int i2 = 0;
        while (true) {
            SampleStream[] sampleStreamArr = this.sampleStreams;
            if (i2 >= sampleStreamArr.length) {
                return selectTracks;
            }
            if (sampleStreamArr[i2] != null) {
                Assertions.checkState(trackSelectorResult.isRendererEnabled(i2));
                if (this.rendererCapabilities[i2].getTrackType() != 6) {
                    this.hasEnabledTracks = true;
                }
            } else {
                Assertions.checkState(trackSelectionArray.get(i2) == null);
            }
            i2++;
        }
    }

    public void continueLoading(long j) {
        Assertions.checkState(isLoadingMediaPeriod());
        this.mediaPeriod.continueLoading(toPeriodTime(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getBufferedPositionUs() {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.prepared
            if (r0 != 0) goto L_0x000f
            r0 = r5
            androidx.media2.exoplayer.external.MediaPeriodInfo r0 = r0.info
            long r0 = r0.startPositionUs
            return r0
        L_0x000f:
            r0 = r5
            boolean r0 = r0.hasEnabledTracks
            if (r0 == 0) goto L_0x0023
            r0 = r5
            androidx.media2.exoplayer.external.source.MediaPeriod r0 = r0.mediaPeriod
            long r0 = r0.getBufferedPositionUs()
            r6 = r0
            goto L_0x0027
        L_0x0023:
            r0 = -9223372036854775808
            r6 = r0
        L_0x0027:
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0039
            r0 = r5
            androidx.media2.exoplayer.external.MediaPeriodInfo r0 = r0.info
            long r0 = r0.durationUs
            r8 = r0
        L_0x0039:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.MediaPeriodHolder.getBufferedPositionUs():long");
    }

    @Nullable
    public MediaPeriodHolder getNext() {
        return this.next;
    }

    public long getNextLoadPositionUs() {
        return !this.prepared ? 0L : this.mediaPeriod.getNextLoadPositionUs();
    }

    public long getRendererOffset() {
        return this.rendererPositionOffsetUs;
    }

    public long getStartPositionRendererTime() {
        return this.info.startPositionUs + this.rendererPositionOffsetUs;
    }

    public TrackGroupArray getTrackGroups() {
        return (TrackGroupArray) Assertions.checkNotNull(this.trackGroups);
    }

    public TrackSelectorResult getTrackSelectorResult() {
        return (TrackSelectorResult) Assertions.checkNotNull(this.trackSelectorResult);
    }

    public void handlePrepared(float f, Timeline timeline) throws ExoPlaybackException {
        this.prepared = true;
        this.trackGroups = this.mediaPeriod.getTrackGroups();
        long applyTrackSelection = applyTrackSelection((TrackSelectorResult) Assertions.checkNotNull(selectTracks(f, timeline)), this.info.startPositionUs, false);
        long j = this.rendererPositionOffsetUs;
        MediaPeriodInfo mediaPeriodInfo = this.info;
        this.rendererPositionOffsetUs = j + (mediaPeriodInfo.startPositionUs - applyTrackSelection);
        this.info = mediaPeriodInfo.copyWithStartPositionUs(applyTrackSelection);
    }

    public boolean isFullyBuffered() {
        return this.prepared && (!this.hasEnabledTracks || this.mediaPeriod.getBufferedPositionUs() == Long.MIN_VALUE);
    }

    public void reevaluateBuffer(long j) {
        Assertions.checkState(isLoadingMediaPeriod());
        if (this.prepared) {
            this.mediaPeriod.reevaluateBuffer(toPeriodTime(j));
        }
    }

    public void release() {
        disableTrackSelectionsInResult();
        this.trackSelectorResult = null;
        releaseMediaPeriod(this.info.endPositionUs, this.mediaSource, this.mediaPeriod);
    }

    @Nullable
    public TrackSelectorResult selectTracks(float f, Timeline timeline) throws ExoPlaybackException {
        TrackSelection[] all;
        TrackSelectorResult selectTracks = this.trackSelector.selectTracks(this.rendererCapabilities, getTrackGroups(), this.info.f80id, timeline);
        if (selectTracks.isEquivalent(this.trackSelectorResult)) {
            return null;
        }
        for (TrackSelection trackSelection : selectTracks.selections.getAll()) {
            if (trackSelection != null) {
                trackSelection.onPlaybackSpeed(f);
            }
        }
        return selectTracks;
    }

    public void setNext(@Nullable MediaPeriodHolder mediaPeriodHolder) {
        if (mediaPeriodHolder != this.next) {
            disableTrackSelectionsInResult();
            this.next = mediaPeriodHolder;
            enableTrackSelectionsInResult();
        }
    }

    public long toPeriodTime(long j) {
        return j - getRendererOffset();
    }

    public long toRendererTime(long j) {
        return j + getRendererOffset();
    }
}
