package androidx.recyclerview.widget;

import androidx.core.p005os.C0232h;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;
/* renamed from: androidx.recyclerview.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/k.class */
final class RunnableC0389k implements Runnable {

    /* renamed from: j */
    static final ThreadLocal<RunnableC0389k> f2119j = new ThreadLocal<>();

    /* renamed from: k */
    static Comparator<C0391c> f2120k = new C0390a();

    /* renamed from: g */
    long f2122g;

    /* renamed from: h */
    long f2123h;

    /* renamed from: f */
    ArrayList<RecyclerView> f2121f = new ArrayList<>();

    /* renamed from: i */
    private ArrayList<C0391c> f2124i = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/k$a.class */
    static final class C0390a implements Comparator<C0391c> {
        C0390a() {
        }

        /* renamed from: a */
        public int compare(C0391c c0391c, C0391c c0391c2) {
            RecyclerView recyclerView = c0391c.f2128d;
            if ((recyclerView == null) != (c0391c2.f2128d == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z = c0391c.f2125a;
            if (z != c0391c2.f2125a) {
                int i = 1;
                if (z) {
                    i = -1;
                }
                return i;
            }
            int i2 = c0391c2.f2126b - c0391c.f2126b;
            if (i2 != 0) {
                return i2;
            }
            int i3 = c0391c.f2127c - c0391c2.f2127c;
            if (i3 == 0) {
                return 0;
            }
            return i3;
        }
    }

    /* renamed from: androidx.recyclerview.widget.k$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/k$c.class */
    public static class C0391c {

        /* renamed from: a */
        public boolean f2125a;

        /* renamed from: b */
        public int f2126b;

        /* renamed from: c */
        public int f2127c;

        /* renamed from: d */
        public RecyclerView f2128d;

        /* renamed from: e */
        public int f2129e;

        C0391c() {
        }

        /* renamed from: a */
        public void m4913a() {
            this.f2125a = false;
            this.f2126b = 0;
            this.f2127c = 0;
            this.f2128d = null;
            this.f2129e = 0;
        }
    }

    RunnableC0389k() {
    }

    /* renamed from: b */
    private void m4923b() {
        int i;
        int i2;
        C0391c c0391c;
        int size = this.f2121f.size();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= size) {
                break;
            }
            RecyclerView recyclerView = this.f2121f.get(i3);
            int i5 = i;
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.l0.c(recyclerView, false);
                i5 = i + recyclerView.l0.d;
            }
            i3++;
            i4 = i5;
        }
        this.f2124i.ensureCapacity(i);
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i6 >= size) {
                Collections.sort(this.f2124i, f2120k);
                return;
            }
            RecyclerView recyclerView2 = this.f2121f.get(i6);
            if (recyclerView2.getWindowVisibility() != 0) {
                i2 = i8;
            } else {
                b bVar = recyclerView2.l0;
                int abs = Math.abs(bVar.a) + Math.abs(bVar.b);
                int i9 = 0;
                while (true) {
                    i2 = i8;
                    if (i9 < bVar.d * 2) {
                        if (i8 >= this.f2124i.size()) {
                            c0391c = new C0391c();
                            this.f2124i.add(c0391c);
                        } else {
                            c0391c = this.f2124i.get(i8);
                        }
                        int[] iArr = bVar.c;
                        int i10 = iArr[i9 + 1];
                        c0391c.f2125a = i10 <= abs;
                        c0391c.f2126b = abs;
                        c0391c.f2127c = i10;
                        c0391c.f2128d = recyclerView2;
                        c0391c.f2129e = iArr[i9];
                        i8++;
                        i9 += 2;
                    }
                }
            }
            i6++;
            i7 = i2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    private void m4922c(C0391c c0391c, long j) {
        RecyclerView$d0 m4916i = m4916i(c0391c.f2128d, c0391c.f2129e, c0391c.f2125a ? (char) 65535 : j);
        if (m4916i == null || m4916i.mNestedRecyclerView == null || !m4916i.isBound() || m4916i.isInvalid()) {
            return;
        }
        m4917h(m4916i.mNestedRecyclerView.get(), j);
    }

    /* renamed from: d */
    private void m4921d(long j) {
        for (int i = 0; i < this.f2124i.size(); i++) {
            C0391c c0391c = this.f2124i.get(i);
            if (c0391c.f2128d == null) {
                return;
            }
            m4922c(c0391c, j);
            c0391c.m4913a();
        }
    }

    /* renamed from: e */
    static boolean m4920e(RecyclerView recyclerView, int i) {
        int m4970j = recyclerView.j.m4970j();
        for (int i2 = 0; i2 < m4970j; i2++) {
            RecyclerView$d0 h0 = RecyclerView.h0(recyclerView.j.m4971i(i2));
            if (h0.mPosition == i && !h0.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    private void m4917h(RecyclerView recyclerView, long j) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.I && recyclerView.j.m4970j() != 0) {
            recyclerView.X0();
        }
        b bVar = recyclerView.l0;
        bVar.c(recyclerView, true);
        if (bVar.d == 0) {
            return;
        }
        try {
            C0232h.m5938a("RV Nested Prefetch");
            recyclerView.m0.m5291f(recyclerView.q);
            for (int i = 0; i < bVar.d * 2; i += 2) {
                m4916i(recyclerView, bVar.c[i], j);
            }
        } finally {
            C0232h.m5937b();
        }
    }

    /* renamed from: i */
    private RecyclerView$d0 m4916i(RecyclerView recyclerView, int i, long j) {
        if (m4920e(recyclerView, i)) {
            return null;
        }
        RecyclerView$v recyclerView$v = recyclerView.g;
        try {
            recyclerView.J0();
            RecyclerView$d0 m5088I = recyclerView$v.m5088I(i, false, j);
            if (m5088I != null) {
                if (!m5088I.isBound() || m5088I.isInvalid()) {
                    recyclerView$v.m5083a(m5088I, false);
                } else {
                    recyclerView$v.m5095B(m5088I.itemView);
                }
            }
            return m5088I;
        } finally {
            recyclerView.L0(false);
        }
    }

    /* renamed from: a */
    public void m4924a(RecyclerView recyclerView) {
        this.f2121f.add(recyclerView);
    }

    /* renamed from: f */
    public void m4919f(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f2122g == 0) {
            this.f2122g = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.l0.e(i, i2);
    }

    /* renamed from: g */
    void m4918g(long j) {
        m4923b();
        m4921d(j);
    }

    /* renamed from: j */
    public void m4915j(RecyclerView recyclerView) {
        this.f2121f.remove(recyclerView);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    @Override // java.lang.Runnable
    public void run() {
        char c;
        try {
            C0232h.m5938a("RV Prefetch");
            if (!this.f2121f.isEmpty()) {
                int size = this.f2121f.size();
                int i = 0;
                ?? r0 = 0;
                while (true) {
                    c = r0;
                    if (i >= size) {
                        break;
                    }
                    RecyclerView recyclerView = this.f2121f.get(i);
                    char c2 = c;
                    if (recyclerView.getWindowVisibility() == 0) {
                        c2 = Math.max(recyclerView.getDrawingTime(), (long) c);
                    }
                    i++;
                    r0 = c2;
                }
                if (c != 0) {
                    m4918g(TimeUnit.MILLISECONDS.toNanos(c) + this.f2123h);
                }
            }
        } finally {
            this.f2122g = 0L;
            C0232h.m5937b();
        }
    }
}
