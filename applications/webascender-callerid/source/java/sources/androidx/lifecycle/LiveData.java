package androidx.lifecycle;

import androidx.lifecycle.AbstractC0329h;
import f.b.a.a.a;
import f.b.a.b.b;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData.class */
public abstract class LiveData<T> {

    /* renamed from: k */
    static final Object f1673k = new Object();

    /* renamed from: a */
    final Object f1674a;

    /* renamed from: b */
    private b<AbstractC0343u<? super T>, LiveData<T>.AbstractC0312c> f1675b;

    /* renamed from: c */
    int f1676c;

    /* renamed from: d */
    private boolean f1677d;

    /* renamed from: e */
    private volatile Object f1678e;

    /* renamed from: f */
    volatile Object f1679f;

    /* renamed from: g */
    private int f1680g;

    /* renamed from: h */
    private boolean f1681h;

    /* renamed from: i */
    private boolean f1682i;

    /* renamed from: j */
    private final Runnable f1683j;

    /* renamed from: androidx.lifecycle.LiveData$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$a.class */
    class RunnableC0311a implements Runnable {
        RunnableC0311a() {
            LiveData.this = r4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f1674a) {
                obj = LiveData.this.f1679f;
                LiveData.this.f1679f = LiveData.f1673k;
            }
            LiveData.this.m5474n(obj);
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$c */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$c.class */
    public abstract class AbstractC0312c {

        /* renamed from: f */
        final AbstractC0343u<? super T> f1685f;

        /* renamed from: g */
        boolean f1686g;

        /* renamed from: h */
        int f1687h = -1;

        AbstractC0312c(AbstractC0343u<? super T> abstractC0343u) {
            LiveData.this = r4;
            this.f1685f = abstractC0343u;
        }

        /* renamed from: h */
        void m5473h(boolean z) {
            if (z == this.f1686g) {
                return;
            }
            this.f1686g = z;
            LiveData.this.m5485c(z ? 1 : -1);
            if (!this.f1686g) {
                return;
            }
            LiveData.this.m5483e(this);
        }

        /* renamed from: i */
        void m5472i() {
        }

        /* renamed from: j */
        boolean m5471j(AbstractC0340n abstractC0340n) {
            return false;
        }

        /* renamed from: k */
        abstract boolean m5470k();
    }

    public LiveData() {
        this.f1674a = new Object();
        this.f1675b = new b<>();
        this.f1676c = 0;
        Object obj = f1673k;
        this.f1679f = obj;
        this.f1683j = new RunnableC0311a();
        this.f1678e = obj;
        this.f1680g = -1;
    }

    public LiveData(T t) {
        this.f1674a = new Object();
        this.f1675b = new b<>();
        this.f1676c = 0;
        this.f1679f = f1673k;
        this.f1683j = new RunnableC0311a();
        this.f1678e = t;
        this.f1680g = 0;
    }

    /* renamed from: b */
    static void m5486b(String str) {
        if (a.e().b()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    /* renamed from: d */
    private void m5484d(LiveData<T>.AbstractC0312c abstractC0312c) {
        if (!abstractC0312c.f1686g) {
            return;
        }
        if (!abstractC0312c.m5470k()) {
            abstractC0312c.m5473h(false);
            return;
        }
        int i = abstractC0312c.f1687h;
        int i2 = this.f1680g;
        if (i >= i2) {
            return;
        }
        abstractC0312c.f1687h = i2;
        abstractC0312c.f1685f.m5421a((Object) this.f1678e);
    }

    /* renamed from: c */
    void m5485c(int i) {
        int i2 = this.f1676c;
        this.f1676c = i + i2;
        if (this.f1677d) {
            return;
        }
        this.f1677d = true;
        while (true) {
            try {
                int i3 = this.f1676c;
                if (i2 == i3) {
                    return;
                }
                boolean z = i2 == 0 && i3 > 0;
                boolean z2 = i2 > 0 && i3 == 0;
                if (z) {
                    m5478j();
                } else if (z2) {
                    m5477k();
                }
                i2 = i3;
            } finally {
                this.f1677d = false;
            }
        }
    }

    /* renamed from: e */
    void m5483e(LiveData<T>.AbstractC0312c abstractC0312c) {
        LiveData<T>.AbstractC0312c abstractC0312c2;
        if (this.f1681h) {
            this.f1682i = true;
            return;
        }
        this.f1681h = true;
        LiveData<T>.AbstractC0312c abstractC0312c3 = abstractC0312c;
        do {
            this.f1682i = false;
            if (abstractC0312c3 == null) {
                b.d g = this.f1675b.g();
                while (true) {
                    abstractC0312c2 = abstractC0312c3;
                    if (!g.hasNext()) {
                        break;
                    }
                    m5484d((AbstractC0312c) ((Map.Entry) g.next()).getValue());
                    if (this.f1682i) {
                        abstractC0312c2 = abstractC0312c3;
                        break;
                    }
                }
            } else {
                m5484d(abstractC0312c3);
                abstractC0312c2 = null;
            }
            abstractC0312c3 = abstractC0312c2;
        } while (this.f1682i);
        this.f1681h = false;
    }

    /* renamed from: f */
    public T m5482f() {
        T t = (T) this.f1678e;
        if (t != f1673k) {
            return t;
        }
        return null;
    }

    /* renamed from: g */
    public boolean m5481g() {
        return this.f1676c > 0;
    }

    /* renamed from: h */
    public void m5480h(AbstractC0340n abstractC0340n, AbstractC0343u<? super T> abstractC0343u) {
        m5486b("observe");
        if (abstractC0340n.getLifecycle().m5438b() == AbstractC0329h.EnumC0332c.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(this, abstractC0340n, abstractC0343u);
        AbstractC0312c abstractC0312c = (AbstractC0312c) this.f1675b.j(abstractC0343u, lifecycleBoundObserver);
        if (abstractC0312c != null && !abstractC0312c.m5471j(abstractC0340n)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (abstractC0312c != null) {
            return;
        }
        abstractC0340n.getLifecycle().m5439a(lifecycleBoundObserver);
    }

    /* renamed from: i */
    public void m5479i(AbstractC0343u<? super T> abstractC0343u) {
        m5486b("observeForever");
        b bVar = new b(this, abstractC0343u);
        AbstractC0312c abstractC0312c = (AbstractC0312c) this.f1675b.j(abstractC0343u, bVar);
        if (!(abstractC0312c instanceof LifecycleBoundObserver)) {
            if (abstractC0312c != null) {
                return;
            }
            bVar.m5473h(true);
            return;
        }
        throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
    }

    /* renamed from: j */
    protected void m5478j() {
    }

    /* renamed from: k */
    protected void m5477k() {
    }

    /* renamed from: l */
    protected void m5476l(T t) {
        boolean z;
        synchronized (this.f1674a) {
            z = this.f1679f == f1673k;
            this.f1679f = t;
        }
        if (!z) {
            return;
        }
        a.e().c(this.f1683j);
    }

    /* renamed from: m */
    public void m5475m(AbstractC0343u<? super T> abstractC0343u) {
        m5486b("removeObserver");
        AbstractC0312c abstractC0312c = (AbstractC0312c) this.f1675b.k(abstractC0343u);
        if (abstractC0312c == null) {
            return;
        }
        abstractC0312c.m5472i();
        abstractC0312c.m5473h(false);
    }

    /* renamed from: n */
    protected void m5474n(T t) {
        m5486b("setValue");
        this.f1680g++;
        this.f1678e = t;
        m5483e(null);
    }
}
