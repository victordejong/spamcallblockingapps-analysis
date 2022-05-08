package androidx.lifecycle;

import androidx.lifecycle.AbstractC0927f;
import androidx.p016a.p017a.p018a.C0225a;
import androidx.p016a.p017a.p019b.C0232b;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData.class */
public abstract class LiveData<T> {

    /* renamed from: b */
    static final Object f3870b = new Object();

    /* renamed from: d */
    volatile Object f3873d;

    /* renamed from: f */
    private volatile Object f3875f;

    /* renamed from: h */
    private boolean f3877h;

    /* renamed from: i */
    private boolean f3878i;

    /* renamed from: a */
    final Object f3871a = new Object();

    /* renamed from: e */
    private C0232b<AbstractC0941q<? super T>, LiveData<T>.AbstractC0919a> f3874e = new C0232b<>();

    /* renamed from: c */
    int f3872c = 0;

    /* renamed from: g */
    private int f3876g = -1;

    /* renamed from: j */
    private final Runnable f3879j = new RunnableC0938n(this);

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$LifecycleBoundObserver.class */
    class LifecycleBoundObserver extends LiveData<T>.AbstractC0919a implements AbstractC0926e {

        /* renamed from: a */
        final AbstractC0932i f3880a;

        LifecycleBoundObserver(AbstractC0932i iVar, AbstractC0941q<? super T> qVar) {
            super(qVar);
            this.f3880a = iVar;
        }

        @Override // androidx.lifecycle.AbstractC0930g
        /* renamed from: a */
        public final void mo6700a(AbstractC0932i iVar, AbstractC0927f.EnumC0928a aVar) {
            if (this.f3880a.getLifecycle().mo7584a() == AbstractC0927f.EnumC0929b.DESTROYED) {
                LiveData.this.mo7603a((AbstractC0941q) this.f3882c);
            } else {
                m7595a(mo7597a());
            }
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0919a
        /* renamed from: a */
        final boolean mo7597a() {
            return this.f3880a.getLifecycle().mo7584a().m7585a(AbstractC0927f.EnumC0929b.STARTED);
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0919a
        /* renamed from: a */
        final boolean mo7596a(AbstractC0932i iVar) {
            return this.f3880a == iVar;
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0919a
        /* renamed from: b */
        final void mo7594b() {
            this.f3880a.getLifecycle().mo7575b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.lifecycle.LiveData$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$a.class */
    public abstract class AbstractC0919a {

        /* renamed from: c */
        final AbstractC0941q<? super T> f3882c;

        /* renamed from: d */
        boolean f3883d;

        /* renamed from: e */
        int f3884e = -1;

        AbstractC0919a(AbstractC0941q<? super T> qVar) {
            this.f3882c = qVar;
        }

        /* renamed from: a */
        final void m7595a(boolean z) {
            if (z != this.f3883d) {
                this.f3883d = z;
                int i = 1;
                boolean z2 = LiveData.this.f3872c == 0;
                LiveData liveData = LiveData.this;
                int i2 = liveData.f3872c;
                if (!this.f3883d) {
                    i = -1;
                }
                liveData.f3872c = i2 + i;
                if (z2 && this.f3883d) {
                    LiveData.this.mo7601b();
                }
                if (LiveData.this.f3872c == 0 && !this.f3883d) {
                    LiveData.this.mo7599c();
                }
                if (this.f3883d) {
                    LiveData.this.m7605a(this);
                }
            }
        }

        /* renamed from: a */
        abstract boolean mo7597a();

        /* renamed from: a */
        boolean mo7596a(AbstractC0932i iVar) {
            return false;
        }

        /* renamed from: b */
        void mo7594b() {
        }
    }

    public LiveData() {
        Object obj = f3870b;
        this.f3875f = obj;
        this.f3873d = obj;
    }

    /* renamed from: a */
    private static void m7602a(String str) {
        if (!C0225a.m9980a().mo9978b()) {
            throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
        }
    }

    /* renamed from: b */
    private void m7600b(LiveData<T>.AbstractC0919a aVar) {
        if (aVar.f3883d) {
            if (!aVar.mo7597a()) {
                aVar.m7595a(false);
                return;
            }
            int i = aVar.f3884e;
            int i2 = this.f3876g;
            if (i < i2) {
                aVar.f3884e = i2;
                aVar.f3882c.mo7558a((Object) this.f3875f);
            }
        }
    }

    /* renamed from: a */
    public final T m7606a() {
        T t = (T) this.f3875f;
        if (t != f3870b) {
            return t;
        }
        return null;
    }

    /* renamed from: a */
    final void m7605a(LiveData<T>.AbstractC0919a aVar) {
        if (this.f3877h) {
            this.f3878i = true;
            return;
        }
        this.f3877h = true;
        LiveData<T>.AbstractC0919a aVar2 = aVar;
        do {
            this.f3878i = false;
            if (aVar2 == null) {
                C0232b<AbstractC0941q<? super T>, LiveData<T>.AbstractC0919a>.C0236d c = this.f3874e.m9968c();
                while (true) {
                    aVar2 = aVar2;
                    if (!c.hasNext()) {
                        break;
                    }
                    m7600b((AbstractC0919a) ((AbstractC0919a) c.next().getValue()));
                    if (this.f3878i) {
                        aVar2 = aVar2;
                        break;
                    }
                }
            } else {
                m7600b((AbstractC0919a) aVar2);
                aVar2 = null;
            }
        } while (this.f3878i);
        this.f3877h = false;
    }

    /* renamed from: a */
    public final void m7604a(AbstractC0932i iVar, AbstractC0941q<? super T> qVar) {
        m7602a("observe");
        if (iVar.getLifecycle().mo7584a() != AbstractC0927f.EnumC0929b.DESTROYED) {
            LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(iVar, qVar);
            LiveData<T>.AbstractC0919a a = this.f3874e.mo9972a(qVar, lifecycleBoundObserver);
            if (a != null && !a.mo7596a(iVar)) {
                throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
            } else if (a == null) {
                iVar.getLifecycle().mo7580a(lifecycleBoundObserver);
            }
        }
    }

    /* renamed from: a */
    public void mo7603a(AbstractC0941q<? super T> qVar) {
        m7602a("removeObserver");
        LiveData<T>.AbstractC0919a b = this.f3874e.mo9970b(qVar);
        if (b != null) {
            b.mo7594b();
            b.m7595a(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void mo7560a(T t) {
        boolean z;
        synchronized (this.f3871a) {
            z = this.f3873d == f3870b;
            this.f3873d = t;
        }
        if (z) {
            C0225a.m9980a().mo9977b(this.f3879j);
        }
    }

    /* renamed from: b */
    protected void mo7601b() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public void mo7559b(T t) {
        m7602a("setValue");
        this.f3876g++;
        this.f3875f = t;
        m7605a((AbstractC0919a) null);
    }

    /* renamed from: c */
    protected void mo7599c() {
    }

    /* renamed from: d */
    public final boolean m7598d() {
        return this.f3872c > 0;
    }
}
