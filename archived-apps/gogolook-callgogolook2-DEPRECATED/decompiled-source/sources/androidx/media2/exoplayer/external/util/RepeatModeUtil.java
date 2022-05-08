package androidx.media2.exoplayer.external.util;

import androidx.annotation.RestrictTo;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/RepeatModeUtil.class */
public final class RepeatModeUtil {
    public static final int REPEAT_TOGGLE_MODE_ALL = 2;
    public static final int REPEAT_TOGGLE_MODE_NONE = 0;
    public static final int REPEAT_TOGGLE_MODE_ONE = 1;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/RepeatModeUtil$RepeatToggleModes.class */
    public @interface RepeatToggleModes {
    }

    public static int getNextRepeatMode(int i, int i2) {
        for (int i3 = 1; i3 <= 2; i3++) {
            int i4 = (i + i3) % 3;
            if (isRepeatModeEnabled(i4, i2)) {
                return i4;
            }
        }
        return i;
    }

    public static boolean isRepeatModeEnabled(int i, int i2) {
        boolean z = true;
        boolean z2 = true;
        if (i != 0) {
            if (i == 1) {
                z2 = (i2 & 1) != 0;
            } else if (i != 2) {
                return false;
            } else {
                if ((i2 & 2) == 0) {
                    z = false;
                }
                return z;
            }
        }
        return z2;
    }
}
