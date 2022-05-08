package androidx.media2.exoplayer.external.source.ads;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Timeline;
import androidx.media2.exoplayer.external.source.ForwardingTimeline;
import androidx.media2.exoplayer.external.util.Assertions;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@VisibleForTesting(otherwise = 3)
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/SinglePeriodAdTimeline.class */
public final class SinglePeriodAdTimeline extends ForwardingTimeline {
    public final AdPlaybackState adPlaybackState;

    public SinglePeriodAdTimeline(Timeline timeline, AdPlaybackState adPlaybackState) {
        super(timeline);
        boolean z = false;
        Assertions.checkState(timeline.getPeriodCount() == 1);
        Assertions.checkState(timeline.getWindowCount() == 1 ? true : z);
        this.adPlaybackState = adPlaybackState;
    }

    @Override // androidx.media2.exoplayer.external.source.ForwardingTimeline, androidx.media2.exoplayer.external.Timeline
    public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
        this.timeline.getPeriod(i, period, z);
        period.set(period.f81id, period.uid, period.windowIndex, period.durationUs, period.getPositionInWindowUs(), this.adPlaybackState);
        return period;
    }

    @Override // androidx.media2.exoplayer.external.source.ForwardingTimeline, androidx.media2.exoplayer.external.Timeline
    public Timeline.Window getWindow(int i, Timeline.Window window, boolean z, long j) {
        Timeline.Window window2 = super.getWindow(i, window, z, j);
        if (window2.durationUs == C0463C.TIME_UNSET) {
            window2.durationUs = this.adPlaybackState.contentDurationUs;
        }
        return window2;
    }
}
