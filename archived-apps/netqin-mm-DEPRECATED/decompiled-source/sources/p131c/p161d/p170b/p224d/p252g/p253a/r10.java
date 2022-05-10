package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdxq;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: c.d.b.d.g.a.r10 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/r10.class */
public abstract class r10<OutputT> extends zzdxq.C7251h<OutputT> {

    /* renamed from: j */
    public static final AbstractC3975a f14853j;

    /* renamed from: k */
    public static final Logger f14854k = Logger.getLogger(r10.class.getName());

    /* renamed from: h */
    public volatile Set<Throwable> f14855h = null;

    /* renamed from: i */
    public volatile int f14856i;

    /* renamed from: c.d.b.d.g.a.r10$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/r10$a.class */
    public static abstract class AbstractC3975a {
        public AbstractC3975a() {
        }

        /* renamed from: a */
        public abstract int mo26451a(r10 r10Var);

        /* renamed from: a */
        public abstract void mo26450a(r10 r10Var, Set<Throwable> set, Set<Throwable> set2);
    }

    /* renamed from: c.d.b.d.g.a.r10$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/r10$b.class */
    public static final class C3976b extends AbstractC3975a {
        public C3976b() {
            super();
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.r10.AbstractC3975a
        /* renamed from: a */
        public final int mo26451a(r10 r10Var) {
            int b;
            synchronized (r10Var) {
                b = r10.m26455b(r10Var);
            }
            return b;
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.r10.AbstractC3975a
        /* renamed from: a */
        public final void mo26450a(r10 r10Var, Set<Throwable> set, Set<Throwable> set2) {
            synchronized (r10Var) {
                if (r10Var.f14855h == null) {
                    r10Var.f14855h = set2;
                }
            }
        }
    }

    /* renamed from: c.d.b.d.g.a.r10$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/r10$c.class */
    public static final class C3977c extends AbstractC3975a {

        /* renamed from: a */
        public final AtomicReferenceFieldUpdater<r10, Set<Throwable>> f14857a;

        /* renamed from: b */
        public final AtomicIntegerFieldUpdater<r10> f14858b;

        public C3977c(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super();
            this.f14857a = atomicReferenceFieldUpdater;
            this.f14858b = atomicIntegerFieldUpdater;
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.r10.AbstractC3975a
        /* renamed from: a */
        public final int mo26451a(r10 r10Var) {
            return this.f14858b.decrementAndGet(r10Var);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.r10.AbstractC3975a
        /* renamed from: a */
        public final void mo26450a(r10 r10Var, Set<Throwable> set, Set<Throwable> set2) {
            this.f14857a.compareAndSet(r10Var, null, set2);
        }
    }

    static {
        Throwable th;
        AbstractC3975a aVar;
        try {
            aVar = new C3977c(AtomicReferenceFieldUpdater.newUpdater(r10.class, Set.class, "h"), AtomicIntegerFieldUpdater.newUpdater(r10.class, "i"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            aVar = new C3976b();
        }
        f14853j = aVar;
        if (th != null) {
            f14854k.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    public r10(int i) {
        this.f14856i = i;
    }

    /* renamed from: b */
    public static /* synthetic */ int m26455b(r10 r10Var) {
        int i = r10Var.f14856i - 1;
        r10Var.f14856i = i;
        return i;
    }

    /* renamed from: a */
    public abstract void mo13035a(Set<Throwable> set);

    /* renamed from: h */
    public final Set<Throwable> m26454h() {
        Set<Throwable> set = this.f14855h;
        Set<Throwable> set2 = set;
        if (set == null) {
            Set<Throwable> newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            mo13035a(newSetFromMap);
            f14853j.mo26450a(this, null, newSetFromMap);
            set2 = this.f14855h;
        }
        return set2;
    }

    /* renamed from: i */
    public final int m26453i() {
        return f14853j.mo26451a(this);
    }

    /* renamed from: j */
    public final void m26452j() {
        this.f14855h = null;
    }
}
