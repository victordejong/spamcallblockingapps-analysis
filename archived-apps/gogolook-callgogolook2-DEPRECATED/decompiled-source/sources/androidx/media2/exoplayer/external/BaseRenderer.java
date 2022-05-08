package androidx.media2.exoplayer.external;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.decoder.DecoderInputBuffer;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.drm.DrmSessionManager;
import androidx.media2.exoplayer.external.source.SampleStream;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.MediaClock;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/BaseRenderer.class */
public abstract class BaseRenderer implements Renderer, RendererCapabilities {
    public RendererConfiguration configuration;
    public int index;
    public long readingPositionUs = Long.MIN_VALUE;
    public int state;
    public SampleStream stream;
    public Format[] streamFormats;
    public boolean streamIsFinal;
    public long streamOffsetUs;
    public final int trackType;

    public BaseRenderer(int i) {
        this.trackType = i;
    }

    public static boolean supportsFormatDrm(@Nullable DrmSessionManager<?> drmSessionManager, @Nullable DrmInitData drmInitData) {
        if (drmInitData == null) {
            return true;
        }
        if (drmSessionManager == null) {
            return false;
        }
        return drmSessionManager.canAcquireSession(drmInitData);
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final void disable() {
        boolean z = true;
        if (this.state != 1) {
            z = false;
        }
        Assertions.checkState(z);
        this.state = 0;
        this.stream = null;
        this.streamFormats = null;
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
    public final long getReadingPositionUs() {
        return this.readingPositionUs;
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final int getState() {
        return this.state;
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final SampleStream getStream() {
        return this.stream;
    }

    public final Format[] getStreamFormats() {
        return this.streamFormats;
    }

    @Override // androidx.media2.exoplayer.external.Renderer, androidx.media2.exoplayer.external.RendererCapabilities
    public final int getTrackType() {
        return this.trackType;
    }

    @Override // androidx.media2.exoplayer.external.PlayerMessage.Target
    public void handleMessage(int i, @Nullable Object obj) throws ExoPlaybackException {
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final boolean hasReadStreamToEnd() {
        return this.readingPositionUs == Long.MIN_VALUE;
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final boolean isCurrentStreamFinal() {
        return this.streamIsFinal;
    }

    public final boolean isSourceReady() {
        return hasReadStreamToEnd() ? this.streamIsFinal : this.stream.isReady();
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final void maybeThrowStreamError() throws IOException {
        this.stream.maybeThrowError();
    }

    public void onDisabled() {
    }

    public void onEnabled(boolean z) throws ExoPlaybackException {
    }

    public void onPositionReset(long j, boolean z) throws ExoPlaybackException {
    }

    public void onReset() {
    }

    public void onStarted() throws ExoPlaybackException {
    }

    public void onStopped() throws ExoPlaybackException {
    }

    public void onStreamChanged(Format[] formatArr, long j) throws ExoPlaybackException {
    }

    public final int readSource(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z) {
        int readData = this.stream.readData(formatHolder, decoderInputBuffer, z);
        int i = -4;
        if (readData == -4) {
            if (decoderInputBuffer.isEndOfStream()) {
                this.readingPositionUs = Long.MIN_VALUE;
                if (!this.streamIsFinal) {
                    i = -3;
                }
                return i;
            }
            decoderInputBuffer.timeUs += this.streamOffsetUs;
            this.readingPositionUs = Math.max(this.readingPositionUs, decoderInputBuffer.timeUs);
        } else if (readData == -5) {
            Format format = formatHolder.format;
            long j = format.subsampleOffsetUs;
            if (j != Long.MAX_VALUE) {
                formatHolder.format = format.copyWithSubsampleOffsetUs(j + this.streamOffsetUs);
            }
        }
        return readData;
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final void replaceStream(Format[] formatArr, SampleStream sampleStream, long j) throws ExoPlaybackException {
        Assertions.checkState(!this.streamIsFinal);
        this.stream = sampleStream;
        this.readingPositionUs = j;
        this.streamFormats = formatArr;
        this.streamOffsetUs = j;
        onStreamChanged(formatArr, j);
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final void reset() {
        Assertions.checkState(this.state == 0);
        onReset();
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public final void resetPosition(long j) throws ExoPlaybackException {
        this.streamIsFinal = false;
        this.readingPositionUs = j;
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

    public int skipSource(long j) {
        return this.stream.skipData(j - this.streamOffsetUs);
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
    public int supportsMixedMimeTypeAdaptation() throws ExoPlaybackException {
        return 0;
    }
}
