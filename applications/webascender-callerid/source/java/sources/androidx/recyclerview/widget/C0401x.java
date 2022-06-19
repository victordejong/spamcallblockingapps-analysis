package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView$l;
import f.e.d;
import f.e.g;
import f.h.k.e;
import f.h.k.f;
/* renamed from: androidx.recyclerview.widget.x */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/x.class */
public class C0401x {

    /* renamed from: a */
    final g<RecyclerView$d0, C0402a> f2150a = new g<>();

    /* renamed from: b */
    final d<RecyclerView$d0> f2151b = new d<>();

    /* renamed from: androidx.recyclerview.widget.x$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/x$a.class */
    public static class C0402a {

        /* renamed from: d */
        static e<C0402a> f2152d = new f(20);

        /* renamed from: a */
        int f2153a;

        /* renamed from: b */
        RecyclerView$l.C0362c f2154b;

        /* renamed from: c */
        RecyclerView$l.C0362c f2155c;

        private C0402a() {
        }

        /* renamed from: a */
        static void m4851a() {
            do {
            } while (f2152d.b() != null);
        }

        /* renamed from: b */
        static C0402a m4850b() {
            C0402a c0402a = (C0402a) f2152d.b();
            C0402a c0402a2 = c0402a;
            if (c0402a == null) {
                c0402a2 = new C0402a();
            }
            return c0402a2;
        }

        /* renamed from: c */
        static void m4849c(C0402a c0402a) {
            c0402a.f2153a = 0;
            c0402a.f2154b = null;
            c0402a.f2155c = null;
            f2152d.a(c0402a);
        }
    }

    /* renamed from: androidx.recyclerview.widget.x$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/x$b.class */
    interface AbstractC0403b {
        /* renamed from: a */
        void m4848a(RecyclerView$d0 recyclerView$d0);

        /* renamed from: b */
        void m4847b(RecyclerView$d0 recyclerView$d0, RecyclerView$l.C0362c c0362c, RecyclerView$l.C0362c c0362c2);

        /* renamed from: c */
        void m4846c(RecyclerView$d0 recyclerView$d0, RecyclerView$l.C0362c c0362c, RecyclerView$l.C0362c c0362c2);

        /* renamed from: d */
        void m4845d(RecyclerView$d0 recyclerView$d0, RecyclerView$l.C0362c c0362c, RecyclerView$l.C0362c c0362c2);
    }

    C0401x() {
    }

    /* renamed from: l */
    private RecyclerView$l.C0362c m4857l(RecyclerView$d0 recyclerView$d0, int i) {
        C0402a c0402a;
        RecyclerView$l.C0362c c0362c;
        int g = this.f2150a.g(recyclerView$d0);
        if (g >= 0 && (c0402a = (C0402a) this.f2150a.n(g)) != null) {
            int i2 = c0402a.f2153a;
            if ((i2 & i) == 0) {
                return null;
            }
            int i3 = (i ^ (-1)) & i2;
            c0402a.f2153a = i3;
            if (i == 4) {
                c0362c = c0402a.f2154b;
            } else if (i != 8) {
                throw new IllegalArgumentException("Must provide flag PRE or POST");
            } else {
                c0362c = c0402a.f2155c;
            }
            if ((i3 & 12) == 0) {
                this.f2150a.l(g);
                C0402a.m4849c(c0402a);
            }
            return c0362c;
        }
        return null;
    }

    /* renamed from: a */
    void m4868a(RecyclerView$d0 recyclerView$d0, RecyclerView$l.C0362c c0362c) {
        C0402a c0402a = (C0402a) this.f2150a.get(recyclerView$d0);
        C0402a c0402a2 = c0402a;
        if (c0402a == null) {
            c0402a2 = C0402a.m4850b();
            this.f2150a.put(recyclerView$d0, c0402a2);
        }
        c0402a2.f2153a |= 2;
        c0402a2.f2154b = c0362c;
    }

    /* renamed from: b */
    public void m4867b(RecyclerView$d0 recyclerView$d0) {
        C0402a c0402a = (C0402a) this.f2150a.get(recyclerView$d0);
        C0402a c0402a2 = c0402a;
        if (c0402a == null) {
            c0402a2 = C0402a.m4850b();
            this.f2150a.put(recyclerView$d0, c0402a2);
        }
        c0402a2.f2153a |= 1;
    }

    /* renamed from: c */
    void m4866c(long j, RecyclerView$d0 recyclerView$d0) {
        this.f2151b.k(j, recyclerView$d0);
    }

    /* renamed from: d */
    void m4865d(RecyclerView$d0 recyclerView$d0, RecyclerView$l.C0362c c0362c) {
        C0402a c0402a = (C0402a) this.f2150a.get(recyclerView$d0);
        C0402a c0402a2 = c0402a;
        if (c0402a == null) {
            c0402a2 = C0402a.m4850b();
            this.f2150a.put(recyclerView$d0, c0402a2);
        }
        c0402a2.f2155c = c0362c;
        c0402a2.f2153a |= 8;
    }

    /* renamed from: e */
    void m4864e(RecyclerView$d0 recyclerView$d0, RecyclerView$l.C0362c c0362c) {
        C0402a c0402a = (C0402a) this.f2150a.get(recyclerView$d0);
        C0402a c0402a2 = c0402a;
        if (c0402a == null) {
            c0402a2 = C0402a.m4850b();
            this.f2150a.put(recyclerView$d0, c0402a2);
        }
        c0402a2.f2154b = c0362c;
        c0402a2.f2153a |= 4;
    }

    /* renamed from: f */
    void m4863f() {
        this.f2150a.clear();
        this.f2151b.b();
    }

    /* renamed from: g */
    RecyclerView$d0 m4862g(long j) {
        return (RecyclerView$d0) this.f2151b.f(j);
    }

    /* renamed from: h */
    boolean m4861h(RecyclerView$d0 recyclerView$d0) {
        C0402a c0402a = (C0402a) this.f2150a.get(recyclerView$d0);
        boolean z = true;
        if (c0402a == null || (c0402a.f2153a & 1) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: i */
    boolean m4860i(RecyclerView$d0 recyclerView$d0) {
        C0402a c0402a = (C0402a) this.f2150a.get(recyclerView$d0);
        return (c0402a == null || (c0402a.f2153a & 4) == 0) ? false : true;
    }

    /* renamed from: j */
    void m4859j() {
        C0402a.m4851a();
    }

    /* renamed from: k */
    public void m4858k(RecyclerView$d0 recyclerView$d0) {
        m4853p(recyclerView$d0);
    }

    /* renamed from: m */
    RecyclerView$l.C0362c m4856m(RecyclerView$d0 recyclerView$d0) {
        return m4857l(recyclerView$d0, 8);
    }

    /* renamed from: n */
    RecyclerView$l.C0362c m4855n(RecyclerView$d0 recyclerView$d0) {
        return m4857l(recyclerView$d0, 4);
    }

    /* renamed from: o */
    void m4854o(AbstractC0403b abstractC0403b) {
        for (int size = this.f2150a.size() - 1; size >= 0; size--) {
            RecyclerView$d0 recyclerView$d0 = (RecyclerView$d0) this.f2150a.j(size);
            C0402a c0402a = (C0402a) this.f2150a.l(size);
            int i = c0402a.f2153a;
            if ((i & 3) == 3) {
                abstractC0403b.m4848a(recyclerView$d0);
            } else if ((i & 1) != 0) {
                RecyclerView$l.C0362c c0362c = c0402a.f2154b;
                if (c0362c == null) {
                    abstractC0403b.m4848a(recyclerView$d0);
                } else {
                    abstractC0403b.m4846c(recyclerView$d0, c0362c, c0402a.f2155c);
                }
            } else if ((i & 14) == 14) {
                abstractC0403b.m4847b(recyclerView$d0, c0402a.f2154b, c0402a.f2155c);
            } else if ((i & 12) == 12) {
                abstractC0403b.m4845d(recyclerView$d0, c0402a.f2154b, c0402a.f2155c);
            } else if ((i & 4) != 0) {
                abstractC0403b.m4846c(recyclerView$d0, c0402a.f2154b, null);
            } else if ((i & 8) != 0) {
                abstractC0403b.m4847b(recyclerView$d0, c0402a.f2154b, c0402a.f2155c);
            }
            C0402a.m4849c(c0402a);
        }
    }

    /* renamed from: p */
    public void m4853p(RecyclerView$d0 recyclerView$d0) {
        C0402a c0402a = (C0402a) this.f2150a.get(recyclerView$d0);
        if (c0402a == null) {
            return;
        }
        c0402a.f2153a &= -2;
    }

    /* renamed from: q */
    public void m4852q(RecyclerView$d0 recyclerView$d0) {
        int n = this.f2151b.n() - 1;
        while (true) {
            if (n < 0) {
                break;
            } else if (recyclerView$d0 == this.f2151b.o(n)) {
                this.f2151b.m(n);
                break;
            } else {
                n--;
            }
        }
        C0402a c0402a = (C0402a) this.f2150a.remove(recyclerView$d0);
        if (c0402a != null) {
            C0402a.m4849c(c0402a);
        }
    }
}
