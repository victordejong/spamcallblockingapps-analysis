package androidx.media2.exoplayer.external;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Assertions;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/PlaybackParameters.class */
public final class PlaybackParameters {
    public static final PlaybackParameters DEFAULT = new PlaybackParameters(1.0f);
    public final float pitch;
    public final int scaledUsPerMs;
    public final boolean skipSilence;
    public final float speed;

    public PlaybackParameters(float f) {
        this(f, 1.0f, false);
    }

    public PlaybackParameters(float f, float f2) {
        this(f, f2, false);
    }

    public PlaybackParameters(float f, float f2, boolean z) {
        boolean z2 = true;
        Assertions.checkArgument(f > 0.0f);
        if (f2 <= 0.0f) {
            z2 = false;
        }
        Assertions.checkArgument(z2);
        this.speed = f;
        this.pitch = f2;
        this.skipSilence = z;
        this.scaledUsPerMs = Math.round(f * 1000.0f);
    }

    public boolean equals(@Nullable Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || PlaybackParameters.class != obj.getClass()) {
            return false;
        }
        PlaybackParameters playbackParameters = (PlaybackParameters) obj;
        if (!(this.speed == playbackParameters.speed && this.pitch == playbackParameters.pitch && this.skipSilence == playbackParameters.skipSilence)) {
            z = false;
        }
        return z;
    }

    public long getMediaTimeUsForPlayoutTimeMs(long j) {
        return j * this.scaledUsPerMs;
    }

    public int hashCode() {
        return ((((527 + Float.floatToRawIntBits(this.speed)) * 31) + Float.floatToRawIntBits(this.pitch)) * 31) + (this.skipSilence ? 1 : 0);
    }
}
