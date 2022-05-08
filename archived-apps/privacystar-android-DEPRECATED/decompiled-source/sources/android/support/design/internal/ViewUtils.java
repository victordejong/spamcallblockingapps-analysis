package android.support.design.internal;

import android.graphics.PorterDuff;
import android.support.annotation.RestrictTo;
import android.support.p001v4.view.ViewCompat;
import android.view.View;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:android/support/design/internal/ViewUtils.class */
public class ViewUtils {
    public static boolean isLayoutRtl(View view) {
        boolean z = true;
        if (ViewCompat.getLayoutDirection(view) != 1) {
            z = false;
        }
        return z;
    }

    public static PorterDuff.Mode parseTintMode(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
