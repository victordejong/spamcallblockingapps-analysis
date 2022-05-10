package p012b.p042i.p054p;

import android.os.Build;
import android.view.ViewGroup;
/* renamed from: b.i.p.g */
/* loaded from: classes-dex2jar.jar:b/i/p/g.class */
public final class C0988g {
    /* renamed from: a */
    public static int m35298a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return Build.VERSION.SDK_INT >= 17 ? marginLayoutParams.getMarginEnd() : marginLayoutParams.rightMargin;
    }

    /* renamed from: b */
    public static int m35297b(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return Build.VERSION.SDK_INT >= 17 ? marginLayoutParams.getMarginStart() : marginLayoutParams.leftMargin;
    }
}
