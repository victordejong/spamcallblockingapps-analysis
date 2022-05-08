package androidx.media2.exoplayer.external;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.source.SampleStream;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.MediaClock;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/NoSampleRenderer.class */
public abstract class NoSampleRenderer implements Renderer, RendererCapabilities {
    public RendererConfiguration configuration;
    public int index;
    public int state;
    public SampleStream stream;
    public boolean streamIsFinal;

    @Override // androidx.media2.exoplayer.external.Renderer
    public final void disable() {
        boolean z = true;
        if (this.state != 1) {
            z = false;
        }
        Assertions.checkState(z);
        this.state = 0;
        this.stream = null;
        this.streamIsFinal = false;
        onDisabled();
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final void enable(RendererConfiguration rendererConfiguration, Format[] formatArr, SampleStream sampleStream, long j, boolean z, long j2) throws ExoPlaybackException {
        Assertions.checkState(this.state == 0);
        this.configuration = rendererConfiguration;
        this.state = 1;
        onEnabled(z);
        replaceStream(formatArr, sampleStream, j2);
        onPositionReset(j, z);
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final RendererCapabilities getCapabilities() {
        return this;
    }

    public final RendererConfiguration getConfiguration() {
        return this.configuration;
    }

    public final int getIndex() {
        return this.index;
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public MediaClock getMediaClock() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public long getReadingPositionUs() {
        return Long.MIN_VALUE;
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final int getState() {
        return this.state;
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final SampleStream getStream() {
        return this.stream;
    }

    @Override // androidx.media2.exoplayer.external.Renderer, androidx.media2.exoplayer.external.RendererCapabilities
    public final int getTrackType() {
        return 6;
    }

    @Override // androidx.media2.exoplayer.external.PlayerMessage.Target
    public void handleMessage(int i, @Nullable Object obj) throws ExoPlaybackException {
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final boolean hasReadStreamToEnd() {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final boolean isCurrentStreamFinal() {
        return this.streamIsFinal;
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public boolean isEnded() {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public boolean isReady() {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final void maybeThrowStreamError() throws IOException {
    }

    public void onDisabled() {
    }

    public void onEnabled(boolean z) throws ExoPlaybackException {
    }

    public void onPositionReset(long j, boolean z) throws ExoPlaybackException {
    }

    public void onRendererOffsetChanged(long j) throws ExoPlaybackException {
    }

    public void onReset() {
    }

    public void onStarted() throws ExoPlaybackException {
    }

    public void onStopped() throws ExoPlaybackException {
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final void replaceStream(Format[] formatArr, SampleStream sampleStream, long j) throws ExoPlaybackException {
        Assertions.checkState(!this.streamIsFinal);
        this.stream = sampleStream;
        onRendererOffsetChanged(j);
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final void reset() {
        Assertions.checkState(this.state == 0);
        onReset();
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final void resetPosition(long j) throws ExoPlaybackException {
        this.streamIsFinal = false;
        onPositionReset(j, false);
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final void setCurrentStreamFinal() {
        this.streamIsFinal = true;
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final void setIndex(int i) {
        this.index = i;
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public void setOperatingRate(float f) throws ExoPlaybackException {
        Renderer$$CC.setOperatingRate$$dflt$$(this, f);
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final void start() throws ExoPlaybackException {
        boolean z = true;
        if (this.state != 1) {
            z = false;
        }
        Assertions.checkState(z);
        this.state = 2;
        onStarted();
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final void stop() throws ExoPlaybackException {
        Assertions.checkState(this.state == 2);
        this.state = 1;
        onStopped();
    }

    @Override // androidx.media2.exoplayer.external.RendererCapabilities
    public int supportsFormat(Format format) throws ExoPlaybackException {
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.RendererCapabilities
    public int supportsMixedMimeTypeAdaptation() throws ExoPlaybackException {
        return 0;
    }
}
