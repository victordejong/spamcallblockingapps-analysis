package androidx.recyclerview.widget;

import android.view.View;
/* renamed from: androidx.recyclerview.widget.w */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/w.class */
class C0398w {

    /* renamed from: a */
    final AbstractC0400b f2143a;

    /* renamed from: b */
    C0399a f2144b = new C0399a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.w$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/w$a.class */
    public static class C0399a {

        /* renamed from: a */
        int f2145a = 0;

        /* renamed from: b */
        int f2146b;

        /* renamed from: c */
        int f2147c;

        /* renamed from: d */
        int f2148d;

        /* renamed from: e */
        int f2149e;

        C0399a() {
        }

        /* renamed from: a */
        void m4878a(int i) {
            this.f2145a = i | this.f2145a;
        }

        /* renamed from: b */
        boolean m4877b() {
            int i = this.f2145a;
            if ((i & 7) == 0 || (i & (m4876c(this.f2148d, this.f2146b) << 0)) != 0) {
                int i2 = this.f2145a;
                if ((i2 & 112) != 0 && (i2 & (m4876c(this.f2148d, this.f2147c) << 4)) == 0) {
                    return false;
                }
                int i3 = this.f2145a;
                if ((i3 & 1792) != 0 && (i3 & (m4876c(this.f2149e, this.f2146b) << 8)) == 0) {
                    return false;
                }
                int i4 = this.f2145a;
                return (i4 & 28672) == 0 || (i4 & (m4876c(this.f2149e, this.f2147c) << 12)) != 0;
            }
            return false;
        }

        /* renamed from: c */
        int m4876c(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }

        /* renamed from: d */
        void m4875d() {
            this.f2145a = 0;
        }

        /* renamed from: e */
        void m4874e(int i, int i2, int i3, int i4) {
            this.f2146b = i;
            this.f2147c = i2;
            this.f2148d = i3;
            this.f2149e = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.w$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/w$b.class */
    public interface AbstractC0400b {
        /* renamed from: a */
        View m4873a(int i);

        /* renamed from: b */
        int m4872b(View view);

        /* renamed from: c */
        int m4871c();

        /* renamed from: d */
        int m4870d();

        /* renamed from: e */
        int m4869e(View view);
    }

    public C0398w(AbstractC0400b abstractC0400b) {
        this.f2143a = abstractC0400b;
    }

    /* renamed from: a */
    View m4880a(int i, int i2, int i3, int i4) {
        int m4871c = this.f2143a.m4871c();
        int m4870d = this.f2143a.m4870d();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (true) {
            View view2 = view;
            if (i != i2) {
                View m4873a = this.f2143a.m4873a(i);
                this.f2144b.m4874e(m4871c, m4870d, this.f2143a.m4872b(m4873a), this.f2143a.m4869e(m4873a));
                if (i3 != 0) {
                    this.f2144b.m4875d();
                    this.f2144b.m4878a(i3);
                    if (this.f2144b.m4877b()) {
                        return m4873a;
                    }
                }
                View view3 = view2;
                if (i4 != 0) {
                    this.f2144b.m4875d();
                    this.f2144b.m4878a(i4);
                    view3 = view2;
                    if (this.f2144b.m4877b()) {
                        view3 = m4873a;
                    }
                }
                i += i5;
                view = view3;
            } else {
                return view2;
            }
        }
    }

    /* renamed from: b */
    public boolean m4879b(View view, int i) {
        this.f2144b.m4874e(this.f2143a.m4871c(), this.f2143a.m4870d(), this.f2143a.m4872b(view), this.f2143a.m4869e(view));
        if (i != 0) {
            this.f2144b.m4875d();
            this.f2144b.m4878a(i);
            return this.f2144b.m4877b();
        }
        return false;
    }
}
