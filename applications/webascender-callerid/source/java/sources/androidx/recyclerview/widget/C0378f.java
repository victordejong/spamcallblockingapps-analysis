package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/f.class */
public class C0378f {

    /* renamed from: a */
    final AbstractC0380b f2051a;

    /* renamed from: b */
    final C0379a f2052b = new C0379a();

    /* renamed from: c */
    final List<View> f2053c = new ArrayList();

    /* renamed from: androidx.recyclerview.widget.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/f$a.class */
    public static class C0379a {

        /* renamed from: a */
        long f2054a = 0;

        /* renamed from: b */
        C0379a f2055b;

        C0379a() {
        }

        /* renamed from: c */
        private void m4957c() {
            if (this.f2055b == null) {
                this.f2055b = new C0379a();
            }
        }

        /* renamed from: a */
        void m4959a(int i) {
            if (i < 64) {
                this.f2054a &= (1 << i) ^ (-1);
                return;
            }
            C0379a c0379a = this.f2055b;
            if (c0379a == null) {
                return;
            }
            c0379a.m4959a(i - 64);
        }

        /* renamed from: b */
        int m4958b(int i) {
            C0379a c0379a = this.f2055b;
            return c0379a == null ? i >= 64 ? Long.bitCount(this.f2054a) : Long.bitCount(this.f2054a & ((1 << i) - 1)) : i < 64 ? Long.bitCount(this.f2054a & ((1 << i) - 1)) : c0379a.m4958b(i - 64) + Long.bitCount(this.f2054a);
        }

        /* renamed from: d */
        boolean m4956d(int i) {
            if (i < 64) {
                return (this.f2054a & (1 << i)) != 0;
            }
            m4957c();
            return this.f2055b.m4956d(i - 64);
        }

        /* renamed from: e */
        void m4955e(int i, boolean z) {
            if (i >= 64) {
                m4957c();
                this.f2055b.m4955e(i - 64, z);
                return;
            }
            long j = this.f2054a;
            boolean z2 = (Long.MIN_VALUE & j) != 0;
            long j2 = (1 << i) - 1;
            this.f2054a = ((j & (j2 ^ (-1))) << 1) | (j & j2);
            if (z) {
                m4952h(i);
            } else {
                m4959a(i);
            }
            if (!z2 && this.f2055b == null) {
                return;
            }
            m4957c();
            this.f2055b.m4955e(0, z2);
        }

        /* renamed from: f */
        boolean m4954f(int i) {
            if (i >= 64) {
                m4957c();
                return this.f2055b.m4954f(i - 64);
            }
            long j = 1 << i;
            long j2 = this.f2054a;
            boolean z = (j2 & j) != 0;
            long j3 = j2 & (j ^ (-1));
            this.f2054a = j3;
            long j4 = j - 1;
            this.f2054a = (j3 & j4) | Long.rotateRight((j4 ^ (-1)) & j3, 1);
            C0379a c0379a = this.f2055b;
            if (c0379a != null) {
                if (c0379a.m4956d(0)) {
                    m4952h(63);
                }
                this.f2055b.m4954f(0);
            }
            return z;
        }

        /* renamed from: g */
        void m4953g() {
            this.f2054a = 0L;
            C0379a c0379a = this.f2055b;
            if (c0379a != null) {
                c0379a.m4953g();
            }
        }

        /* renamed from: h */
        void m4952h(int i) {
            if (i < 64) {
                this.f2054a |= 1 << i;
                return;
            }
            m4957c();
            this.f2055b.m4952h(i - 64);
        }

        public String toString() {
            String str;
            if (this.f2055b == null) {
                str = Long.toBinaryString(this.f2054a);
            } else {
                str = this.f2055b.toString() + "xx" + Long.toBinaryString(this.f2054a);
            }
            return str;
        }
    }

    /* renamed from: androidx.recyclerview.widget.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/f$b.class */
    public interface AbstractC0380b {
        /* renamed from: a */
        View m4951a(int i);

        /* renamed from: b */
        void m4950b(View view);

        /* renamed from: c */
        int m4949c();

        /* renamed from: d */
        void m4948d();

        /* renamed from: e */
        int m4947e(View view);

        /* renamed from: f */
        RecyclerView$d0 m4946f(View view);

        /* renamed from: g */
        void m4945g(int i);

        /* renamed from: h */
        void m4944h(View view);

        /* renamed from: i */
        void m4943i(View view, int i);

        /* renamed from: j */
        void m4942j(int i);

        /* renamed from: k */
        void m4941k(View view, int i, ViewGroup.LayoutParams layoutParams);
    }

    C0378f(AbstractC0380b abstractC0380b) {
        this.f2051a = abstractC0380b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (r5.f2052b.m4956d(r8) == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
        return r8;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m4972h(int r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 >= 0) goto L6
            r0 = -1
            return r0
        L6:
            r0 = r5
            androidx.recyclerview.widget.f$b r0 = r0.f2051a
            int r0 = r0.m4949c()
            r7 = r0
            r0 = r6
            r8 = r0
        L12:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L45
            r0 = r6
            r1 = r8
            r2 = r5
            androidx.recyclerview.widget.f$a r2 = r2.f2052b
            r3 = r8
            int r2 = r2.m4958b(r3)
            int r1 = r1 - r2
            int r0 = r0 - r1
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L3d
        L2a:
            r0 = r5
            androidx.recyclerview.widget.f$a r0 = r0.f2052b
            r1 = r8
            boolean r0 = r0.m4956d(r1)
            if (r0 == 0) goto L3b
            int r8 = r8 + 1
            goto L2a
        L3b:
            r0 = r8
            return r0
        L3d:
            r0 = r8
            r1 = r9
            int r0 = r0 + r1
            r8 = r0
            goto L12
        L45:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0378f.m4972h(int):int");
    }

    /* renamed from: l */
    private void m4968l(View view) {
        this.f2053c.add(view);
        this.f2051a.m4950b(view);
    }

    /* renamed from: t */
    private boolean m4960t(View view) {
        if (this.f2053c.remove(view)) {
            this.f2051a.m4944h(view);
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public void m4979a(View view, int i, boolean z) {
        int m4949c = i < 0 ? this.f2051a.m4949c() : m4972h(i);
        this.f2052b.m4955e(m4949c, z);
        if (z) {
            m4968l(view);
        }
        this.f2051a.m4943i(view, m4949c);
    }

    /* renamed from: b */
    void m4978b(View view, boolean z) {
        m4979a(view, -1, z);
    }

    /* renamed from: c */
    public void m4977c(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int m4949c = i < 0 ? this.f2051a.m4949c() : m4972h(i);
        this.f2052b.m4955e(m4949c, z);
        if (z) {
            m4968l(view);
        }
        this.f2051a.m4941k(view, m4949c, layoutParams);
    }

    /* renamed from: d */
    public void m4976d(int i) {
        int m4972h = m4972h(i);
        this.f2052b.m4954f(m4972h);
        this.f2051a.m4945g(m4972h);
    }

    /* renamed from: e */
    public View m4975e(int i) {
        int size = this.f2053c.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f2053c.get(i2);
            RecyclerView$d0 m4946f = this.f2051a.m4946f(view);
            if (m4946f.getLayoutPosition() == i && !m4946f.isInvalid() && !m4946f.isRemoved()) {
                return view;
            }
        }
        return null;
    }

    /* renamed from: f */
    public View m4974f(int i) {
        return this.f2051a.m4951a(m4972h(i));
    }

    /* renamed from: g */
    public int m4973g() {
        return this.f2051a.m4949c() - this.f2053c.size();
    }

    /* renamed from: i */
    public View m4971i(int i) {
        return this.f2051a.m4951a(i);
    }

    /* renamed from: j */
    public int m4970j() {
        return this.f2051a.m4949c();
    }

    /* renamed from: k */
    void m4969k(View view) {
        int m4947e = this.f2051a.m4947e(view);
        if (m4947e >= 0) {
            this.f2052b.m4952h(m4947e);
            m4968l(view);
            return;
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    /* renamed from: m */
    public int m4967m(View view) {
        int m4947e = this.f2051a.m4947e(view);
        if (m4947e != -1 && !this.f2052b.m4956d(m4947e)) {
            return m4947e - this.f2052b.m4958b(m4947e);
        }
        return -1;
    }

    /* renamed from: n */
    public boolean m4966n(View view) {
        return this.f2053c.contains(view);
    }

    /* renamed from: o */
    void m4965o() {
        this.f2052b.m4953g();
        for (int size = this.f2053c.size() - 1; size >= 0; size--) {
            this.f2051a.m4944h(this.f2053c.get(size));
            this.f2053c.remove(size);
        }
        this.f2051a.m4948d();
    }

    /* renamed from: p */
    public void m4964p(View view) {
        int m4947e = this.f2051a.m4947e(view);
        if (m4947e < 0) {
            return;
        }
        if (this.f2052b.m4954f(m4947e)) {
            m4960t(view);
        }
        this.f2051a.m4942j(m4947e);
    }

    /* renamed from: q */
    public void m4963q(int i) {
        int m4972h = m4972h(i);
        View m4951a = this.f2051a.m4951a(m4972h);
        if (m4951a == null) {
            return;
        }
        if (this.f2052b.m4954f(m4972h)) {
            m4960t(m4951a);
        }
        this.f2051a.m4942j(m4972h);
    }

    /* renamed from: r */
    boolean m4962r(View view) {
        int m4947e = this.f2051a.m4947e(view);
        if (m4947e == -1) {
            m4960t(view);
            return true;
        } else if (!this.f2052b.m4956d(m4947e)) {
            return false;
        } else {
            this.f2052b.m4954f(m4947e);
            m4960t(view);
            this.f2051a.m4942j(m4947e);
            return true;
        }
    }

    /* renamed from: s */
    public void m4961s(View view) {
        int m4947e = this.f2051a.m4947e(view);
        if (m4947e < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        } else if (this.f2052b.m4956d(m4947e)) {
            this.f2052b.m4959a(m4947e);
            m4960t(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    public String toString() {
        return this.f2052b.toString() + ", hidden list:" + this.f2053c.size();
    }
}
