package androidx.core.p037g;

import android.os.Build;
import android.view.WindowInsets;
/* renamed from: androidx.core.g.ag */
/* loaded from: classes-dex2jar.jar:androidx/core/g/ag.class */
public final class C0719ag {

    /* renamed from: a */
    private final Object f3081a;

    private C0719ag(Object obj) {
        this.f3081a = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C0719ag m8435a(Object obj) {
        if (obj == null) {
            return null;
        }
        return new C0719ag(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Object m8436a(C0719ag agVar) {
        if (agVar == null) {
            return null;
        }
        return agVar.f3081a;
    }

    /* renamed from: a */
    public final int m8438a() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f3081a).getSystemWindowInsetLeft();
        }
        return 0;
    }

    /* renamed from: a */
    public final C0719ag m8437a(int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 20) {
            return new C0719ag(((WindowInsets) this.f3081a).replaceSystemWindowInsets(i, i2, i3, i4));
        }
        return null;
    }

    /* renamed from: b */
    public final int m8434b() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f3081a).getSystemWindowInsetTop();
        }
        return 0;
    }

    /* renamed from: c */
    public final int m8433c() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f3081a).getSystemWindowInsetRight();
        }
        return 0;
    }

    /* renamed from: d */
    public final int m8432d() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f3081a).getSystemWindowInsetBottom();
        }
        return 0;
    }

    /* renamed from: e */
    public final boolean m8431e() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f3081a).hasSystemWindowInsets();
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0719ag agVar = (C0719ag) obj;
        Object obj2 = this.f3081a;
        return obj2 == null ? agVar.f3081a == null : obj2.equals(agVar.f3081a);
    }

    /* renamed from: f */
    public final boolean m8430f() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((WindowInsets) this.f3081a).isConsumed();
        }
        return false;
    }

    /* renamed from: g */
    public final C0719ag m8429g() {
        if (Build.VERSION.SDK_INT >= 20) {
            return new C0719ag(((WindowInsets) this.f3081a).consumeSystemWindowInsets());
        }
        return null;
    }

    public final int hashCode() {
        Object obj = this.f3081a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }
}
