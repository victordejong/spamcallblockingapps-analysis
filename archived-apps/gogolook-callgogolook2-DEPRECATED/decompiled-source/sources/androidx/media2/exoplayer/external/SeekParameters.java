package androidx.media2.exoplayer.external;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Assertions;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/SeekParameters.class */
public final class SeekParameters {
    public final long toleranceAfterUs;
    public final long toleranceBeforeUs;
    public static final SeekParameters EXACT = new SeekParameters(0, 0);
    public static final SeekParameters CLOSEST_SYNC = new SeekParameters(Long.MAX_VALUE, Long.MAX_VALUE);
    public static final SeekParameters PREVIOUS_SYNC = new SeekParameters(Long.MAX_VALUE, 0);
    public static final SeekParameters NEXT_SYNC = new SeekParameters(0, Long.MAX_VALUE);
    public static final SeekParameters DEFAULT = EXACT;

    public SeekParameters(long j, long j2) {
        boolean z = true;
        Assertions.checkArgument(j >= 0);
        if (j2 < 0) {
            z = false;
        }
        Assertions.checkArgument(z);
        this.toleranceBeforeUs = j;
        this.toleranceAfterUs = j2;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || SeekParameters.class != obj.getClass()) {
            return false;
        }
        SeekParameters seekParameters = (SeekParameters) obj;
        if (!(this.toleranceBeforeUs == seekParameters.toleranceBeforeUs && this.toleranceAfterUs == seekParameters.toleranceAfterUs)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((int) this.toleranceBeforeUs) * 31) + ((int) this.toleranceAfterUs);
    }
}
