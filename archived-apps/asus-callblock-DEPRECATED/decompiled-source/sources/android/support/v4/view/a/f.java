package android.support.v4.view.a;

import android.os.Build;
import android.view.accessibility.AccessibilityRecord;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/a/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final c f219a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f220b;

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/f$a.class */
    static class a extends e {
        a() {
        }

        @Override // android.support.v4.view.a.f.e, android.support.v4.view.a.f.c
        public final void a(Object obj, int i) {
            ((AccessibilityRecord) obj).setFromIndex(i);
        }

        @Override // android.support.v4.view.a.f.e, android.support.v4.view.a.f.c
        public final void a(Object obj, boolean z) {
            ((AccessibilityRecord) obj).setScrollable(z);
        }

        @Override // android.support.v4.view.a.f.e, android.support.v4.view.a.f.c
        public final void b(Object obj, int i) {
            ((AccessibilityRecord) obj).setItemCount(i);
        }

        @Override // android.support.v4.view.a.f.e, android.support.v4.view.a.f.c
        public final void c(Object obj, int i) {
            ((AccessibilityRecord) obj).setScrollX(i);
        }

        @Override // android.support.v4.view.a.f.e, android.support.v4.view.a.f.c
        public final void d(Object obj, int i) {
            ((AccessibilityRecord) obj).setScrollY(i);
        }

        @Override // android.support.v4.view.a.f.e, android.support.v4.view.a.f.c
        public final void e(Object obj, int i) {
            ((AccessibilityRecord) obj).setToIndex(i);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/f$b.class */
    static class b extends a {
        b() {
        }

        @Override // android.support.v4.view.a.f.e, android.support.v4.view.a.f.c
        public final void f(Object obj, int i) {
            ((AccessibilityRecord) obj).setMaxScrollX(i);
        }

        @Override // android.support.v4.view.a.f.e, android.support.v4.view.a.f.c
        public final void g(Object obj, int i) {
            ((AccessibilityRecord) obj).setMaxScrollY(i);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/f$c.class */
    public interface c {
        void a(Object obj, int i);

        void a(Object obj, boolean z);

        void b(Object obj, int i);

        void c(Object obj, int i);

        void d(Object obj, int i);

        void e(Object obj, int i);

        void f(Object obj, int i);

        void g(Object obj, int i);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/f$d.class */
    static final class d extends b {
        d() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/f$e.class */
    static class e implements c {
        e() {
        }

        @Override // android.support.v4.view.a.f.c
        public void a(Object obj, int i) {
        }

        @Override // android.support.v4.view.a.f.c
        public void a(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.f.c
        public void b(Object obj, int i) {
        }

        @Override // android.support.v4.view.a.f.c
        public void c(Object obj, int i) {
        }

        @Override // android.support.v4.view.a.f.c
        public void d(Object obj, int i) {
        }

        @Override // android.support.v4.view.a.f.c
        public void e(Object obj, int i) {
        }

        @Override // android.support.v4.view.a.f.c
        public void f(Object obj, int i) {
        }

        @Override // android.support.v4.view.a.f.c
        public void g(Object obj, int i) {
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            f219a = new d();
        } else if (Build.VERSION.SDK_INT >= 15) {
            f219a = new b();
        } else if (Build.VERSION.SDK_INT >= 14) {
            f219a = new a();
        } else {
            f219a = new e();
        }
    }

    public f(Object obj) {
        this.f220b = obj;
    }

    public final void a(boolean z) {
        f219a.a(this.f220b, z);
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null) {
                z = false;
            } else if (getClass() != obj.getClass()) {
                z = false;
            } else {
                f fVar = (f) obj;
                if (this.f220b == null) {
                    if (fVar.f220b != null) {
                        z = false;
                    }
                } else if (!this.f220b.equals(fVar.f220b)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return this.f220b == null ? 0 : this.f220b.hashCode();
    }
}
