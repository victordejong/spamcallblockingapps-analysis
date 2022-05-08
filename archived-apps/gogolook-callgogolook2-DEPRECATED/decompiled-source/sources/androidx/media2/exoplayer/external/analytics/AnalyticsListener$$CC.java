package androidx.media2.exoplayer.external.analytics;

import android.view.Surface;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.PlaybackParameters;
import androidx.media2.exoplayer.external.analytics.AnalyticsListener;
import androidx.media2.exoplayer.external.audio.AudioAttributes;
import androidx.media2.exoplayer.external.decoder.DecoderCounters;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.source.MediaSourceEventListener;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionArray;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/analytics/AnalyticsListener$$CC.class */
public abstract /* synthetic */ class AnalyticsListener$$CC {
    public static void onAudioAttributesChanged$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, AudioAttributes audioAttributes) {
    }

    public static void onAudioSessionId$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i) {
    }

    public static void onAudioUnderrun$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
    }

    public static void onBandwidthEstimate$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
    }

    public static void onDecoderDisabled$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i, DecoderCounters decoderCounters) {
    }

    public static void onDecoderEnabled$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i, DecoderCounters decoderCounters) {
    }

    public static void onDecoderInitialized$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i, String str, long j) {
    }

    public static void onDecoderInputFormatChanged$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i, Format format) {
    }

    public static void onDownstreamFormatChanged$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    public static void onDrmKeysLoaded$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void onDrmKeysRemoved$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void onDrmKeysRestored$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void onDrmSessionAcquired$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void onDrmSessionManagerError$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, Exception exc) {
    }

    public static void onDrmSessionReleased$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void onDroppedVideoFrames$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i, long j) {
    }

    public static void onLoadCanceled$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    public static void onLoadCompleted$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    public static void onLoadError$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData, IOException iOException, boolean z) {
    }

    public static void onLoadStarted$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    public static void onLoadingChanged$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, boolean z) {
    }

    public static void onMediaPeriodCreated$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void onMediaPeriodReleased$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void onMetadata$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, Metadata metadata) {
    }

    public static void onPlaybackParametersChanged$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, PlaybackParameters playbackParameters) {
    }

    public static void onPlayerError$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, ExoPlaybackException exoPlaybackException) {
    }

    public static void onPlayerStateChanged$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, boolean z, int i) {
    }

    public static void onPositionDiscontinuity$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i) {
    }

    public static void onReadingStarted$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void onRenderedFirstFrame$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, Surface surface) {
    }

    public static void onRepeatModeChanged$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i) {
    }

    public static void onSeekProcessed$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void onSeekStarted$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void onShuffleModeChanged$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, boolean z) {
    }

    public static void onSurfaceSizeChanged$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i, int i2) {
    }

    public static void onTimelineChanged$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i) {
    }

    public static void onTracksChanged$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
    }

    public static void onUpstreamDiscarded$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    public static void onVideoSizeChanged$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i, int i2, int i3, float f) {
    }

    public static void onVolumeChanged$$dflt$$(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, float f) {
    }
}
