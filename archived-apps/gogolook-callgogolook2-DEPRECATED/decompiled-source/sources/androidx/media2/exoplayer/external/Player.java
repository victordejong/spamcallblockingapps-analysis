package androidx.media2.exoplayer.external;

import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.audio.AudioAttributes;
import androidx.media2.exoplayer.external.audio.AudioListener;
import androidx.media2.exoplayer.external.audio.AuxEffectInfo;
import androidx.media2.exoplayer.external.metadata.MetadataOutput;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.text.TextOutput;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionArray;
import androidx.media2.exoplayer.external.video.VideoFrameMetadataListener;
import androidx.media2.exoplayer.external.video.VideoListener;
import androidx.media2.exoplayer.external.video.spherical.CameraMotionListener;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Player.class */
public interface Player {
    public static final int DISCONTINUITY_REASON_AD_INSERTION = 3;
    public static final int DISCONTINUITY_REASON_INTERNAL = 4;
    public static final int DISCONTINUITY_REASON_PERIOD_TRANSITION = 0;
    public static final int DISCONTINUITY_REASON_SEEK = 1;
    public static final int DISCONTINUITY_REASON_SEEK_ADJUSTMENT = 2;
    public static final int REPEAT_MODE_ALL = 2;
    public static final int REPEAT_MODE_OFF = 0;
    public static final int REPEAT_MODE_ONE = 1;
    public static final int STATE_BUFFERING = 2;
    public static final int STATE_ENDED = 4;
    public static final int STATE_IDLE = 1;
    public static final int STATE_READY = 3;
    public static final int TIMELINE_CHANGE_REASON_DYNAMIC = 2;
    public static final int TIMELINE_CHANGE_REASON_PREPARED = 0;
    public static final int TIMELINE_CHANGE_REASON_RESET = 1;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Player$AudioComponent.class */
    public interface AudioComponent {
        void addAudioListener(AudioListener audioListener);

        void clearAuxEffectInfo();

        AudioAttributes getAudioAttributes();

        int getAudioSessionId();

        float getVolume();

        void removeAudioListener(AudioListener audioListener);

        @Deprecated
        void setAudioAttributes(AudioAttributes audioAttributes);

        void setAudioAttributes(AudioAttributes audioAttributes, boolean z);

        void setAuxEffectInfo(AuxEffectInfo auxEffectInfo);

        void setVolume(float f);
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Player$DefaultEventListener.class */
    public static abstract class DefaultEventListener implements EventListener {
        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onLoadingChanged(boolean z) {
            Player$EventListener$$CC.onLoadingChanged$$dflt$$(this, z);
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
            Player$EventListener$$CC.onPlaybackParametersChanged$$dflt$$(this, playbackParameters);
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onPlayerError(ExoPlaybackException exoPlaybackException) {
            Player$EventListener$$CC.onPlayerError$$dflt$$(this, exoPlaybackException);
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onPlayerStateChanged(boolean z, int i) {
            Player$EventListener$$CC.onPlayerStateChanged$$dflt$$(this, z, i);
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onPositionDiscontinuity(int i) {
            Player$EventListener$$CC.onPositionDiscontinuity$$dflt$$(this, i);
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onRepeatModeChanged(int i) {
            Player$EventListener$$CC.onRepeatModeChanged$$dflt$$(this, i);
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onSeekProcessed() {
            Player$EventListener$$CC.onSeekProcessed$$dflt$$(this);
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onShuffleModeEnabledChanged(boolean z) {
            Player$EventListener$$CC.onShuffleModeEnabledChanged$$dflt$$(this, z);
        }

        @Deprecated
        public void onTimelineChanged(Timeline timeline, @Nullable Object obj) {
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onTimelineChanged(Timeline timeline, @Nullable Object obj, int i) {
            onTimelineChanged(timeline, obj);
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
            Player$EventListener$$CC.onTracksChanged$$dflt$$(this, trackGroupArray, trackSelectionArray);
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Player$DiscontinuityReason.class */
    public @interface DiscontinuityReason {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Player$EventListener.class */
    public interface EventListener {
        void onLoadingChanged(boolean z);

        void onPlaybackParametersChanged(PlaybackParameters playbackParameters);

        void onPlayerError(ExoPlaybackException exoPlaybackException);

        void onPlayerStateChanged(boolean z, int i);

        void onPositionDiscontinuity(int i);

        void onRepeatModeChanged(int i);

        void onSeekProcessed();

        void onShuffleModeEnabledChanged(boolean z);

        void onTimelineChanged(Timeline timeline, @Nullable Object obj, int i);

        void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Player$MetadataComponent.class */
    public interface MetadataComponent {
        void addMetadataOutput(MetadataOutput metadataOutput);

        void removeMetadataOutput(MetadataOutput metadataOutput);
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Player$RepeatMode.class */
    public @interface RepeatMode {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Player$State.class */
    public @interface State {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Player$TextComponent.class */
    public interface TextComponent {
        void addTextOutput(TextOutput textOutput);

        void removeTextOutput(TextOutput textOutput);
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Player$TimelineChangeReason.class */
    public @interface TimelineChangeReason {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Player$VideoComponent.class */
    public interface VideoComponent {
        void addVideoListener(VideoListener videoListener);

        void clearCameraMotionListener(CameraMotionListener cameraMotionListener);

        void clearVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

        void clearVideoSurface();

        void clearVideoSurface(Surface surface);

        void clearVideoSurfaceHolder(SurfaceHolder surfaceHolder);

        void clearVideoSurfaceView(SurfaceView surfaceView);

        void clearVideoTextureView(TextureView textureView);

        int getVideoScalingMode();

        void removeVideoListener(VideoListener videoListener);

        void setCameraMotionListener(CameraMotionListener cameraMotionListener);

        void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

        void setVideoScalingMode(int i);

        void setVideoSurface(@Nullable Surface surface);

        void setVideoSurfaceHolder(SurfaceHolder surfaceHolder);

        void setVideoSurfaceView(SurfaceView surfaceView);

        void setVideoTextureView(TextureView textureView);
    }

    void addListener(EventListener eventListener);

    Looper getApplicationLooper();

    @Nullable
    AudioComponent getAudioComponent();

    int getBufferedPercentage();

    long getBufferedPosition();

    long getContentBufferedPosition();

    long getContentDuration();

    long getContentPosition();

    int getCurrentAdGroupIndex();

    int getCurrentAdIndexInAdGroup();

    @Nullable
    Object getCurrentManifest();

    int getCurrentPeriodIndex();

    long getCurrentPosition();

    @Nullable
    Object getCurrentTag();

    Timeline getCurrentTimeline();

    TrackGroupArray getCurrentTrackGroups();

    TrackSelectionArray getCurrentTrackSelections();

    int getCurrentWindowIndex();

    long getDuration();

    @Nullable
    MetadataComponent getMetadataComponent();

    int getNextWindowIndex();

    boolean getPlayWhenReady();

    @Nullable
    ExoPlaybackException getPlaybackError();

    PlaybackParameters getPlaybackParameters();

    int getPlaybackState();

    int getPreviousWindowIndex();

    int getRendererCount();

    int getRendererType(int i);

    int getRepeatMode();

    boolean getShuffleModeEnabled();

    @Nullable
    TextComponent getTextComponent();

    long getTotalBufferedDuration();

    @Nullable
    VideoComponent getVideoComponent();

    boolean hasNext();

    boolean hasPrevious();

    boolean isCurrentWindowDynamic();

    boolean isCurrentWindowSeekable();

    boolean isLoading();

    boolean isPlayingAd();

    void next();

    void previous();

    void release();

    void removeListener(EventListener eventListener);

    void seekTo(int i, long j);

    void seekTo(long j);

    void seekToDefaultPosition();

    void seekToDefaultPosition(int i);

    void setPlayWhenReady(boolean z);

    void setPlaybackParameters(@Nullable PlaybackParameters playbackParameters);

    void setRepeatMode(int i);

    void setShuffleModeEnabled(boolean z);

    void stop();

    void stop(boolean z);
}
