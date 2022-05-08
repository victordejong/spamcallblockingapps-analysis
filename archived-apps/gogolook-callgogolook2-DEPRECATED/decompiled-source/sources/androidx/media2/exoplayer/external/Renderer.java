package androidx.media2.exoplayer.external;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.PlayerMessage;
import androidx.media2.exoplayer.external.source.SampleStream;
import androidx.media2.exoplayer.external.util.MediaClock;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Renderer.class */
public interface Renderer extends PlayerMessage.Target {
    public static final int STATE_DISABLED = 0;
    public static final int STATE_ENABLED = 1;
    public static final int STATE_STARTED = 2;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Renderer$State.class */
    public @interface State {
    }

    void disable();

    void enable(RendererConfiguration rendererConfiguration, Format[] formatArr, SampleStream sampleStream, long j, boolean z, long j2) throws ExoPlaybackException;

    RendererCapabilities getCapabilities();

    MediaClock getMediaClock();

    long getReadingPositionUs();

    int getState();

    SampleStream getStream();

    int getTrackType();

    boolean hasReadStreamToEnd();

    boolean isCurrentStreamFinal();

    boolean isEnded();

    boolean isReady();

    void maybeThrowStreamError() throws IOException;

    void render(long j, long j2) throws ExoPlaybackException;

    void replaceStream(Format[] formatArr, SampleStream sampleStream, long j) throws ExoPlaybackException;

    void reset();

    void resetPosition(long j) throws ExoPlaybackException;

    void setCurrentStreamFinal();

    void setIndex(int i);

    void setOperatingRate(float f) throws ExoPlaybackException;

    void start() throws ExoPlaybackException;

    void stop() throws ExoPlaybackException;
}
