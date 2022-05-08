package androidx.core.view;

import android.os.Build;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/core/view/MarginLayoutParamsCompat.class */
public final class MarginLayoutParamsCompat {
    private MarginLayoutParamsCompat() {
    }

    /* renamed from: a */
    public static int m19295a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return Build.VERSION.SDK_INT >= 17 ? marginLayoutParams.getMarginEnd() : marginLayoutParams.rightMargin;
    }

    /* renamed from: b */
    public static int m19294b(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return Build.VERSION.SDK_INT >= 17 ? marginLayoutParams.getMarginStart() : marginLayoutParams.leftMargin;
    }

    /* renamed from: c */
    public static void m19293c(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            marginLayoutParams.resolveLayoutDirection(i);
        }
    }

    /* renamed from: d */
    public static void m19292d(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            marginLayoutParams.setMarginEnd(i);
        } else {
            marginLayoutParams.rightMargin = i;
        }
    }

    /* renamed from: e */
    public static void m19291e(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            marginLayoutParams.setMarginStart(i);
        } else {
            marginLayoutParams.leftMargin = i;
        }
    }
}
