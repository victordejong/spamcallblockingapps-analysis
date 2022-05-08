package androidx.media2.exoplayer.external;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Timeline;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.TrackSelectorResult;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/PlaybackInfo.class */
public final class PlaybackInfo {
    public static final MediaSource.MediaPeriodId DUMMY_MEDIA_PERIOD_ID = new MediaSource.MediaPeriodId(new Object());
    public volatile long bufferedPositionUs;
    public final long contentPositionUs;
    public final boolean isLoading;
    public final MediaSource.MediaPeriodId loadingMediaPeriodId;
    @Nullable
    public final Object manifest;
    public final MediaSource.MediaPeriodId periodId;
    public final int playbackState;
    public volatile long positionUs;
    public final long startPositionUs;
    public final Timeline timeline;
    public volatile long totalBufferedDurationUs;
    public final TrackGroupArray trackGroups;
    public final TrackSelectorResult trackSelectorResult;

    public PlaybackInfo(Timeline timeline, @Nullable Object obj, MediaSource.MediaPeriodId mediaPeriodId, long j, long j2, int i, boolean z, TrackGroupArray trackGroupArray, TrackSelectorResult trackSelectorResult, MediaSource.MediaPeriodId mediaPeriodId2, long j3, long j4, long j5) {
        this.timeline = timeline;
        this.manifest = obj;
        this.periodId = mediaPeriodId;
        this.startPositionUs = j;
        this.contentPositionUs = j2;
        this.playbackState = i;
        this.isLoading = z;
        this.trackGroups = trackGroupArray;
        this.trackSelectorResult = trackSelectorResult;
        this.loadingMediaPeriodId = mediaPeriodId2;
        this.bufferedPositionUs = j3;
        this.totalBufferedDurationUs = j4;
        this.positionUs = j5;
    }

    public static PlaybackInfo createDummy(long j, TrackSelectorResult trackSelectorResult) {
        return new PlaybackInfo(Timeline.EMPTY, null, DUMMY_MEDIA_PERIOD_ID, j, C0463C.TIME_UNSET, 1, false, TrackGroupArray.EMPTY, trackSelectorResult, DUMMY_MEDIA_PERIOD_ID, j, 0L, j);
    }

    @CheckResult
    public PlaybackInfo copyWithIsLoading(boolean z) {
        return new PlaybackInfo(this.timeline, this.manifest, this.periodId, this.startPositionUs, this.contentPositionUs, this.playbackState, z, this.trackGroups, this.trackSelectorResult, this.loadingMediaPeriodId, this.bufferedPositionUs, this.totalBufferedDurationUs, this.positionUs);
    }

    @CheckResult
    public PlaybackInfo copyWithLoadingMediaPeriodId(MediaSource.MediaPeriodId mediaPeriodId) {
        return new PlaybackInfo(this.timeline, this.manifest, this.periodId, this.startPositionUs, this.contentPositionUs, this.playbackState, this.isLoading, this.trackGroups, this.trackSelectorResult, mediaPeriodId, this.bufferedPositionUs, this.totalBufferedDurationUs, this.positionUs);
    }

    @CheckResult
    public PlaybackInfo copyWithNewPosition(MediaSource.MediaPeriodId mediaPeriodId, long j, long j2, long j3) {
        Timeline timeline = this.timeline;
        Object obj = this.manifest;
        if (!mediaPeriodId.isAd()) {
            j2 = C0463C.TIME_UNSET;
        }
        return new PlaybackInfo(timeline, obj, mediaPeriodId, j, j2, this.playbackState, this.isLoading, this.trackGroups, this.trackSelectorResult, this.loadingMediaPeriodId, this.bufferedPositionUs, j3, j);
    }

    @CheckResult
    public PlaybackInfo copyWithPlaybackState(int i) {
        return new PlaybackInfo(this.timeline, this.manifest, this.periodId, this.startPositionUs, this.contentPositionUs, i, this.isLoading, this.trackGroups, this.trackSelectorResult, this.loadingMediaPeriodId, this.bufferedPositionUs, this.totalBufferedDurationUs, this.positionUs);
    }

    @CheckResult
    public PlaybackInfo copyWithTimeline(Timeline timeline, Object obj) {
        return new PlaybackInfo(timeline, obj, this.periodId, this.startPositionUs, this.contentPositionUs, this.playbackState, this.isLoading, this.trackGroups, this.trackSelectorResult, this.loadingMediaPeriodId, this.bufferedPositionUs, this.totalBufferedDurationUs, this.positionUs);
    }

    @CheckResult
    public PlaybackInfo copyWithTrackInfo(TrackGroupArray trackGroupArray, TrackSelectorResult trackSelectorResult) {
        return new PlaybackInfo(this.timeline, this.manifest, this.periodId, this.startPositionUs, this.contentPositionUs, this.playbackState, this.isLoading, trackGroupArray, trackSelectorResult, this.loadingMediaPeriodId, this.bufferedPositionUs, this.totalBufferedDurationUs, this.positionUs);
    }

    public MediaSource.MediaPeriodId getDummyFirstMediaPeriodId(boolean z, Timeline.Window window) {
        if (this.timeline.isEmpty()) {
            return DUMMY_MEDIA_PERIOD_ID;
        }
        Timeline timeline = this.timeline;
        return new MediaSource.MediaPeriodId(this.timeline.getUidOfPeriod(timeline.getWindow(timeline.getFirstWindowIndex(z), window).firstPeriodIndex));
    }
}
