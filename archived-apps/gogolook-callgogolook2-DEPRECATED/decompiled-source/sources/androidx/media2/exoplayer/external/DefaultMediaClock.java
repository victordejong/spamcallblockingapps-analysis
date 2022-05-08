package androidx.media2.exoplayer.external;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Clock;
import androidx.media2.exoplayer.external.util.MediaClock;
import androidx.media2.exoplayer.external.util.StandaloneMediaClock;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/DefaultMediaClock.class */
public final class DefaultMediaClock implements MediaClock {
    public final PlaybackParameterListener listener;
    @Nullable
    public MediaClock rendererClock;
    @Nullable
    public Renderer rendererClockSource;
    public final StandaloneMediaClock standaloneMediaClock;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/DefaultMediaClock$PlaybackParameterListener.class */
    public interface PlaybackParameterListener {
        void onPlaybackParametersChanged(PlaybackParameters playbackParameters);
    }

    public DefaultMediaClock(PlaybackParameterListener playbackParameterListener, Clock clock) {
        this.listener = playbackParameterListener;
        this.standaloneMediaClock = new StandaloneMediaClock(clock);
    }

    private void ensureSynced() {
        this.standaloneMediaClock.resetPosition(this.rendererClock.getPositionUs());
        PlaybackParameters playbackParameters = this.rendererClock.getPlaybackParameters();
        if (!playbackParameters.equals(this.standaloneMediaClock.getPlaybackParameters())) {
            this.standaloneMediaClock.setPlaybackParameters(playbackParameters);
            this.listener.onPlaybackParametersChanged(playbackParameters);
        }
    }

    private boolean isUsingRendererClock() {
        Renderer renderer = this.rendererClockSource;
        return renderer != null && !renderer.isEnded() && (this.rendererClockSource.isReady() || !this.rendererClockSource.hasReadStreamToEnd());
    }

    @Override // androidx.media2.exoplayer.external.util.MediaClock
    public PlaybackParameters getPlaybackParameters() {
        MediaClock mediaClock = this.rendererClock;
        return mediaClock != null ? mediaClock.getPlaybackParameters() : this.standaloneMediaClock.getPlaybackParameters();
    }

    @Override // androidx.media2.exoplayer.external.util.MediaClock
    public long getPositionUs() {
        return isUsingRendererClock() ? this.rendererClock.getPositionUs() : this.standaloneMediaClock.getPositionUs();
    }

    public void onRendererDisabled(Renderer renderer) {
        if (renderer == this.rendererClockSource) {
            this.rendererClock = null;
            this.rendererClockSource = null;
        }
    }

    public void onRendererEnabled(Renderer renderer) throws ExoPlaybackException {
        MediaClock mediaClock;
        MediaClock mediaClock2 = renderer.getMediaClock();
        if (mediaClock2 != null && mediaClock2 != (mediaClock = this.rendererClock)) {
            if (mediaClock == null) {
                this.rendererClock = mediaClock2;
                this.rendererClockSource = renderer;
                this.rendererClock.setPlaybackParameters(this.standaloneMediaClock.getPlaybackParameters());
                ensureSynced();
                return;
            }
            throw ExoPlaybackException.createForUnexpected(new IllegalStateException("Multiple renderer media clocks enabled."));
        }
    }

    public void resetPosition(long j) {
        this.standaloneMediaClock.resetPosition(j);
    }

    @Override // androidx.media2.exoplayer.external.util.MediaClock
    public PlaybackParameters setPlaybackParameters(PlaybackParameters playbackParameters) {
        MediaClock mediaClock = this.rendererClock;
        PlaybackParameters playbackParameters2 = playbackParameters;
        if (mediaClock != null) {
            playbackParameters2 = mediaClock.setPlaybackParameters(playbackParameters);
        }
        this.standaloneMediaClock.setPlaybackParameters(playbackParameters2);
        this.listener.onPlaybackParametersChanged(playbackParameters2);
        return playbackParameters2;
    }

    public void start() {
        this.standaloneMediaClock.start();
    }

    public void stop() {
        this.standaloneMediaClock.stop();
    }

    public long syncAndGetPositionUs() {
        if (!isUsingRendererClock()) {
            return this.standaloneMediaClock.getPositionUs();
        }
        ensureSynced();
        return this.rendererClock.getPositionUs();
    }
}
