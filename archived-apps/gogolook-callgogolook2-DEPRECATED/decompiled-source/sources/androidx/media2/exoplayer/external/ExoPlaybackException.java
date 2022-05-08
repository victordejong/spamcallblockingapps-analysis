package androidx.media2.exoplayer.external;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Assertions;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ExoPlaybackException.class */
public final class ExoPlaybackException extends Exception {
    public static final int TYPE_OUT_OF_MEMORY = 4;
    public static final int TYPE_REMOTE = 3;
    public static final int TYPE_RENDERER = 1;
    public static final int TYPE_SOURCE = 0;
    public static final int TYPE_UNEXPECTED = 2;
    @Nullable
    public final Throwable cause;
    public final int rendererIndex;
    public final int type;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ExoPlaybackException$Type.class */
    public @interface Type {
    }

    public ExoPlaybackException(int i, String str) {
        super(str);
        this.type = i;
        this.rendererIndex = -1;
        this.cause = null;
    }

    public ExoPlaybackException(int i, Throwable th, int i2) {
        super(th);
        this.type = i;
        this.cause = th;
        this.rendererIndex = i2;
    }

    public static ExoPlaybackException createForOutOfMemoryError(OutOfMemoryError outOfMemoryError) {
        return new ExoPlaybackException(4, outOfMemoryError, -1);
    }

    public static ExoPlaybackException createForRemote(String str) {
        return new ExoPlaybackException(3, str);
    }

    public static ExoPlaybackException createForRenderer(Exception exc, int i) {
        return new ExoPlaybackException(1, exc, i);
    }

    public static ExoPlaybackException createForSource(IOException iOException) {
        return new ExoPlaybackException(0, iOException, -1);
    }

    public static ExoPlaybackException createForUnexpected(RuntimeException runtimeException) {
        return new ExoPlaybackException(2, runtimeException, -1);
    }

    public OutOfMemoryError getOutOfMemoryError() {
        Assertions.checkState(this.type == 4);
        return (OutOfMemoryError) Assertions.checkNotNull(this.cause);
    }

    public Exception getRendererException() {
        boolean z = true;
        if (this.type != 1) {
            z = false;
        }
        Assertions.checkState(z);
        return (Exception) Assertions.checkNotNull(this.cause);
    }

    public IOException getSourceException() {
        Assertions.checkState(this.type == 0);
        return (IOException) Assertions.checkNotNull(this.cause);
    }

    public RuntimeException getUnexpectedException() {
        Assertions.checkState(this.type == 2);
        return (RuntimeException) Assertions.checkNotNull(this.cause);
    }
}
