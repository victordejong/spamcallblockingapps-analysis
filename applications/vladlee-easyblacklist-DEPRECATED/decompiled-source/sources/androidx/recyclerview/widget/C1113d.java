package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.recyclerview.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d.class */
public final class C1113d {

    /* renamed from: a */
    final AbstractC1115b f4774a;

    /* renamed from: b */
    final C1114a f4775b = new C1114a();

    /* renamed from: c */
    final List<View> f4776c = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d$a.class */
    public static final class C1114a {

        /* renamed from: a */
        long f4777a = 0;

        /* renamed from: b */
        C1114a f4778b;

        C1114a() {
        }

        /* renamed from: a */
        private void m6790a() {
            if (this.f4778b == null) {
                this.f4778b = new C1114a();
            }
        }

        /* renamed from: a */
        final void m6789a(int i) {
            C1114a aVar = this;
            while (i >= 64) {
                aVar.m6790a();
                aVar = aVar.f4778b;
                i -= 64;
            }
            aVar.f4777a |= 1 << i;
        }

        /* renamed from: a */
        final void m6788a(int i, boolean z) {
            boolean z2 = z;
            C1114a aVar = this;
            while (true) {
                if (i >= 64) {
                    aVar.m6790a();
                    aVar = aVar.f4778b;
                    i -= 64;
                } else {
                    boolean z3 = (aVar.f4777a & Long.MIN_VALUE) != 0;
                    long j = (1 << i) - 1;
                    long j2 = aVar.f4777a;
                    aVar.f4777a = ((j2 & (j ^ (-1))) << 1) | (j2 & j);
                    if (z2) {
                        aVar.m6789a(i);
                    } else {
                        aVar.m6787b(i);
                    }
                    if (z3 || aVar.f4778b != null) {
                        aVar.m6790a();
                        aVar = aVar.f4778b;
                        i = 0;
                        z2 = z3;
                    } else {
                        return;
                    }
                }
            }
        }

        /* renamed from: b */
        final void m6787b(int i) {
            C1114a aVar = this;
            while (i >= 64) {
                aVar = aVar.f4778b;
                if (aVar != null) {
                    i -= 64;
                } else {
                    return;
                }
            }
            aVar.f4777a &= (1 << i) ^ (-1);
        }

        /* renamed from: c */
        final boolean m6786c(int i) {
            C1114a aVar = this;
            while (i >= 64) {
                aVar.m6790a();
                aVar = aVar.f4778b;
                i -= 64;
            }
            return ((1 << i) & aVar.f4777a) != 0;
        }

        /* renamed from: d */
        final boolean m6785d(int i) {
            C1114a aVar = this;
            while (i >= 64) {
                aVar.m6790a();
                aVar = aVar.f4778b;
                i -= 64;
            }
            long j = 1 << i;
            boolean z = (aVar.f4777a & j) != 0;
            aVar.f4777a &= j ^ (-1);
            long j2 = j - 1;
            long j3 = aVar.f4777a;
            aVar.f4777a = Long.rotateRight(j3 & (j2 ^ (-1)), 1) | (j3 & j2);
            C1114a aVar2 = aVar.f4778b;
            if (aVar2 != null) {
                if (aVar2.m6786c(0)) {
                    aVar.m6789a(63);
                }
                aVar.f4778b.m6785d(0);
            }
            return z;
        }

        /* renamed from: e */
        final int m6784e(int i) {
            long j;
            C1114a aVar = this.f4778b;
            if (aVar == null) {
                if (i >= 64) {
                    j = this.f4777a;
                    return Long.bitCount(j);
                }
            } else if (i >= 64) {
                return aVar.m6784e(i - 64) + Long.bitCount(this.f4777a);
            }
            j = ((1 << i) - 1) & this.f4777a;
            return Long.bitCount(j);
        }

        public final String toString() {
            if (this.f4778b == null) {
                return Long.toBinaryString(this.f4777a);
            }
            return this.f4778b.toString() + "xx" + Long.toBinaryString(this.f4777a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d$b.class */
    public interface AbstractC1115b {
        /* renamed from: a */
        int mo6783a();

        /* renamed from: a */
        int mo6781a(View view);

        /* renamed from: a */
        void mo6782a(int i);

        /* renamed from: a */
        void mo6780a(View view, int i);

        /* renamed from: a */
        void mo6779a(View view, int i, ViewGroup.LayoutParams layoutParams);

        /* renamed from: b */
        View mo6777b(int i);

        /* renamed from: b */
        RecyclerView.AbstractC1082t mo6776b(View view);

        /* renamed from: b */
        void mo6778b();

        /* renamed from: c */
        void mo6775c(int i);

        /* renamed from: c */
        void mo6774c(View view);

        /* renamed from: d */
        void mo6773d(View view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1113d(AbstractC1115b bVar) {
        this.f4774a = bVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (r5.f4775b.m6786c(r8) == false) goto L_0x003b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
        return r8;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m6796e(int r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 >= 0) goto L_0x0006
            r0 = -1
            return r0
        L_0x0006:
            r0 = r5
            androidx.recyclerview.widget.d$b r0 = r0.f4774a
            int r0 = r0.mo6783a()
            r7 = r0
            r0 = r6
            r8 = r0
        L_0x0012:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x0045
            r0 = r6
            r1 = r8
            r2 = r5
            androidx.recyclerview.widget.d$a r2 = r2.f4775b
            r3 = r8
            int r2 = r2.m6784e(r3)
            int r1 = r1 - r2
            int r0 = r0 - r1
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x003d
        L_0x002a:
            r0 = r5
            androidx.recyclerview.widget.d$a r0 = r0.f4775b
            r1 = r8
            boolean r0 = r0.m6786c(r1)
            if (r0 == 0) goto L_0x003b
            int r8 = r8 + 1
            goto L_0x002a
        L_0x003b:
            r0 = r8
            return r0
        L_0x003d:
            r0 = r8
            r1 = r9
            int r0 = r0 + r1
            r8 = r0
            goto L_0x0012
        L_0x0045:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C1113d.m6796e(int):int");
    }

    /* renamed from: h */
    private void m6792h(View view) {
        this.f4776c.add(view);
        this.f4774a.mo6774c(view);
    }

    /* renamed from: i */
    private boolean m6791i(View view) {
        if (!this.f4776c.remove(view)) {
            return false;
        }
        this.f4774a.mo6773d(view);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6809a() {
        C1114a aVar = this.f4775b;
        while (true) {
            aVar.f4777a = 0L;
            if (aVar.f4778b == null) {
                break;
            }
            aVar = aVar.f4778b;
        }
        for (int size = this.f4776c.size() - 1; size >= 0; size--) {
            this.f4774a.mo6773d(this.f4776c.get(size));
            this.f4776c.remove(size);
        }
        this.f4774a.mo6778b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6808a(int i) {
        int e = m6796e(i);
        View b = this.f4774a.mo6777b(e);
        if (b != null) {
            if (this.f4775b.m6785d(e)) {
                m6791i(b);
            }
            this.f4774a.mo6782a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6807a(View view) {
        m6805a(view, -1, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6806a(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int a = i < 0 ? this.f4774a.mo6783a() : m6796e(i);
        this.f4775b.m6788a(a, z);
        if (z) {
            m6792h(view);
        }
        this.f4774a.mo6779a(view, a, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6805a(View view, int i, boolean z) {
        int a = i < 0 ? this.f4774a.mo6783a() : m6796e(i);
        this.f4775b.m6788a(a, z);
        if (z) {
            m6792h(view);
        }
        this.f4774a.mo6780a(view, a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final int m6804b() {
        return this.f4774a.mo6783a() - this.f4776c.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final View m6803b(int i) {
        return this.f4774a.mo6777b(m6796e(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m6802b(View view) {
        int a = this.f4774a.mo6781a(view);
        if (a >= 0) {
            if (this.f4775b.m6785d(a)) {
                m6791i(view);
            }
            this.f4774a.mo6782a(a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final int m6801c() {
        return this.f4774a.mo6783a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final int m6799c(View view) {
        int a = this.f4774a.mo6781a(view);
        if (a != -1 && !this.f4775b.m6786c(a)) {
            return a - this.f4775b.m6784e(a);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final View m6800c(int i) {
        return this.f4774a.mo6777b(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m6798d(int i) {
        int e = m6796e(i);
        this.f4775b.m6785d(e);
        this.f4774a.mo6775c(e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final boolean m6797d(View view) {
        return this.f4776c.contains(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m6795e(View view) {
        int a = this.f4774a.mo6781a(view);
        if (a >= 0) {
            this.f4775b.m6789a(a);
            m6792h(view);
            return;
        }
        throw new IllegalArgumentException("view is not a child, cannot hide ".concat(String.valueOf(view)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m6794f(View view) {
        int a = this.f4774a.mo6781a(view);
        if (a < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide ".concat(String.valueOf(view)));
        } else if (this.f4775b.m6786c(a)) {
            this.f4775b.m6787b(a);
            m6791i(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden".concat(String.valueOf(view)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final boolean m6793g(View view) {
        int a = this.f4774a.mo6781a(view);
        if (a == -1) {
            m6791i(view);
            return true;
        } else if (!this.f4775b.m6786c(a)) {
            return false;
        } else {
            this.f4775b.m6785d(a);
            m6791i(view);
            this.f4774a.mo6782a(a);
            return true;
        }
    }

    public final String toString() {
        return this.f4775b.toString() + ", hidden list:" + this.f4776c.size();
    }
}
