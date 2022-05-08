package androidx.media2.exoplayer.external.trackselection;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.RendererCapabilities;
import androidx.media2.exoplayer.external.Timeline;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.upstream.BandwidthMeter;
import androidx.media2.exoplayer.external.util.Assertions;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackSelector.class */
public abstract class TrackSelector {
    @Nullable
    public BandwidthMeter bandwidthMeter;
    @Nullable
    public InvalidationListener listener;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackSelector$InvalidationListener.class */
    public interface InvalidationListener {
        void onTrackSelectionsInvalidated();
    }

    public final BandwidthMeter getBandwidthMeter() {
        return (BandwidthMeter) Assertions.checkNotNull(this.bandwidthMeter);
    }

    public final void init(InvalidationListener invalidationListener, BandwidthMeter bandwidthMeter) {
        this.listener = invalidationListener;
        this.bandwidthMeter = bandwidthMeter;
    }

    public final void invalidate() {
        InvalidationListener invalidationListener = this.listener;
        if (invalidationListener != null) {
            invalidationListener.onTrackSelectionsInvalidated();
        }
    }

    public abstract void onSelectionActivated(Object obj);

    public abstract TrackSelectorResult selectTracks(RendererCapabilities[] rendererCapabilitiesArr, TrackGroupArray trackGroupArray, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) throws ExoPlaybackException;
}
