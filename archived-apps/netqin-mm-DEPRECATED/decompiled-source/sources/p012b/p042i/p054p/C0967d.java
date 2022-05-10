package p012b.p042i.p054p;

import android.graphics.Rect;
import android.os.Build;
import android.view.Gravity;
/* renamed from: b.i.p.d */
/* loaded from: classes-dex2jar.jar:b/i/p/d.class */
public final class C0967d {
    /* renamed from: a */
    public static int m35388a(int i, int i2) {
        return Build.VERSION.SDK_INT >= 17 ? Gravity.getAbsoluteGravity(i, i2) : i & (-8388609);
    }

    /* renamed from: a */
    public static void m35387a(int i, int i2, int i3, Rect rect, Rect rect2, int i4) {
        if (Build.VERSION.SDK_INT >= 17) {
            Gravity.apply(i, i2, i3, rect, rect2, i4);
        } else {
            Gravity.apply(i, i2, i3, rect, rect2);
        }
    }
}
