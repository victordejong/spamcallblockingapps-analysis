package androidx.core.p037g;

import android.content.Context;
import android.os.Build;
import android.view.PointerIcon;
/* renamed from: androidx.core.g.r */
/* loaded from: classes-dex2jar.jar:androidx/core/g/r.class */
public final class C0739r {

    /* renamed from: a */
    private Object f3101a;

    private C0739r(Object obj) {
        this.f3101a = obj;
    }

    /* renamed from: a */
    public static C0739r m8375a(Context context) {
        return Build.VERSION.SDK_INT >= 24 ? new C0739r(PointerIcon.getSystemIcon(context, 1002)) : new C0739r(null);
    }

    /* renamed from: a */
    public final Object m8376a() {
        return this.f3101a;
    }
}
