package androidx.core.p037g;

import android.os.Build;
import android.view.ViewGroup;
/* renamed from: androidx.core.g.f */
/* loaded from: classes-dex2jar.jar:androidx/core/g/f.class */
public final class C0727f {
    /* renamed from: a */
    public static int m8406a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return Build.VERSION.SDK_INT >= 17 ? marginLayoutParams.getMarginStart() : marginLayoutParams.leftMargin;
    }

    /* renamed from: a */
    public static void m8405a(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            marginLayoutParams.setMarginEnd(i);
        } else {
            marginLayoutParams.rightMargin = i;
        }
    }

    /* renamed from: b */
    public static int m8404b(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return Build.VERSION.SDK_INT >= 17 ? marginLayoutParams.getMarginEnd() : marginLayoutParams.rightMargin;
    }
}
