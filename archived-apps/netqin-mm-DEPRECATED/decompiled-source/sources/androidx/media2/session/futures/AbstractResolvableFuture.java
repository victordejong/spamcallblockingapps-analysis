package androidx.media2.session.futures;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/futures/AbstractResolvableFuture.class */
public abstract class AbstractResolvableFuture<V> implements AbstractFutureC5108l<V> {

    /* renamed from: d */
    public static final boolean f2237d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: e */
    public static final Logger f2238e = Logger.getLogger(AbstractResolvableFuture.class.getName());

    /* renamed from: f */
    public static final AbstractC0435b f2239f;

    /* renamed from: g */
    public static final Object f2240g;

    /* renamed from: a */
    public volatile Object f2241a;

    /* renamed from: b */
    public volatile C0437d f2242b;

    /* renamed from: c */
    public volatile C0441h f2243c;

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/futures/AbstractResolvableFuture$Failure.class */
    public static final class Failure {

        /* renamed from: a */
        public final Throwable f2244a;

        static {
            new Failure(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.media2.session.futures.AbstractResolvableFuture.Failure.1
                @Override // java.lang.Throwable
                public Throwable fillInStackTrace() {
                    synchronized (this) {
                    }
                    return this;
                }
            });
        }

        public Failure(Throwable th) {
            AbstractResolvableFuture.m37701c(th);
            this.f2244a = th;
        }
    }

    /* renamed from: androidx.media2.session.futures.AbstractResolvableFuture$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/futures/AbstractResolvableFuture$b.class */
    public static abstract class AbstractC0435b {
        public AbstractC0435b() {
        }

        /* renamed from: a */
        public abstract void mo37699a(C0441h hVar, C0441h hVar2);

        /* renamed from: a */
        public abstract void mo37698a(C0441h hVar, Thread thread);

        /* renamed from: a */
        public abstract boolean mo37697a(AbstractResolvableFuture<?> abstractResolvableFuture, C0437d dVar, C0437d dVar2);

        /* renamed from: a */
        public abstract boolean mo37696a(AbstractResolvableFuture<?> abstractResolvableFuture, C0441h hVar, C0441h hVar2);

        /* renamed from: a */
        public abstract boolean mo37695a(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2);
    }

    /* renamed from: androidx.media2.session.futures.AbstractResolvableFuture$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/futures/AbstractResolvableFuture$c.class */
    public static final class C0436c {

        /* renamed from: c */
        public static final C0436c f2245c;

        /* renamed from: d */
        public static final C0436c f2246d;

        /* renamed from: a */
        public final boolean f2247a;

        /* renamed from: b */
        public final Throwable f2248b;

        static {
            if (AbstractResolvableFuture.f2237d) {
                f2246d = null;
                f2245c = null;
                return;
            }
            f2246d = new C0436c(false, null);
            f2245c = new C0436c(true, null);
        }

        public C0436c(boolean z, Throwable th) {
            this.f2247a = z;
            this.f2248b = th;
        }
    }

    /* renamed from: androidx.media2.session.futures.AbstractResolvableFuture$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/futures/AbstractResolvableFuture$d.class */
    public static final class C0437d {

        /* renamed from: d */
        public static final C0437d f2249d = new C0437d(null, null);

        /* renamed from: a */
        public final Runnable f2250a;

        /* renamed from: b */
        public final Executor f2251b;

        /* renamed from: c */
        public C0437d f2252c;

        public C0437d(Runnable runnable, Executor executor) {
            this.f2250a = runnable;
            this.f2251b = executor;
        }
    }

    /* renamed from: androidx.media2.session.futures.AbstractResolvableFuture$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/futures/AbstractResolvableFuture$e.class */
    public static final class C0438e extends AbstractC0435b {

        /* renamed from: a */
        public final AtomicReferenceFieldUpdater<C0441h, Thread> f2253a;

        /* renamed from: b */
        public final AtomicReferenceFieldUpdater<C0441h, C0441h> f2254b;

        /* renamed from: c */
        public final AtomicReferenceFieldUpdater<AbstractResolvableFuture, C0441h> f2255c;

        /* renamed from: d */
        public final AtomicReferenceFieldUpdater<AbstractResolvableFuture, C0437d> f2256d;

        /* renamed from: e */
        public final AtomicReferenceFieldUpdater<AbstractResolvableFuture, Object> f2257e;

        public C0438e(AtomicReferenceFieldUpdater<C0441h, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<C0441h, C0441h> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractResolvableFuture, C0441h> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractResolvableFuture, C0437d> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractResolvableFuture, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f2253a = atomicReferenceFieldUpdater;
            this.f2254b = atomicReferenceFieldUpdater2;
            this.f2255c = atomicReferenceFieldUpdater3;
            this.f2256d = atomicReferenceFieldUpdater4;
            this.f2257e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.media2.session.futures.AbstractResolvableFuture.AbstractC0435b
        /* renamed from: a */
        public void mo37699a(C0441h hVar, C0441h hVar2) {
            this.f2254b.lazySet(hVar, hVar2);
        }

        @Override // androidx.media2.session.futures.AbstractResolvableFuture.AbstractC0435b
        /* renamed from: a */
        public void mo37698a(C0441h hVar, Thread thread) {
            this.f2253a.lazySet(hVar, thread);
        }

        @Override // androidx.media2.session.futures.AbstractResolvableFuture.AbstractC0435b
        /* renamed from: a */
        public boolean mo37697a(AbstractResolvableFuture<?> abstractResolvableFuture, C0437d dVar, C0437d dVar2) {
            return this.f2256d.compareAndSet(abstractResolvableFuture, dVar, dVar2);
        }

        @Override // androidx.media2.session.futures.AbstractResolvableFuture.AbstractC0435b
        /* renamed from: a */
        public boolean mo37696a(AbstractResolvableFuture<?> abstractResolvableFuture, C0441h hVar, C0441h hVar2) {
            return this.f2255c.compareAndSet(abstractResolvableFuture, hVar, hVar2);
        }

        @Override // androidx.media2.session.futures.AbstractResolvableFuture.AbstractC0435b
        /* renamed from: a */
        public boolean mo37695a(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2) {
            return this.f2257e.compareAndSet(abstractResolvableFuture, obj, obj2);
        }
    }

    /* renamed from: androidx.media2.session.futures.AbstractResolvableFuture$f */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/futures/AbstractResolvableFuture$f.class */
    public static final class RunnableC0439f<V> implements Runnable {

        /* renamed from: a */
        public final AbstractResolvableFuture<V> f2258a;

        /* renamed from: b */
        public final AbstractFutureC5108l<? extends V> f2259b;

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2258a.f2241a == this) {
                if (AbstractResolvableFuture.f2239f.mo37695a((AbstractResolvableFuture<?>) this.f2258a, (Object) this, AbstractResolvableFuture.m37710a((AbstractFutureC5108l<?>) this.f2259b))) {
                    AbstractResolvableFuture.m37711a((AbstractResolvableFuture<?>) this.f2258a);
                }
            }
        }
    }

    /* renamed from: androidx.media2.session.futures.AbstractResolvableFuture$g */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/futures/AbstractResolvableFuture$g.class */
    public static final class C0440g extends AbstractC0435b {
        public C0440g() {
            super();
        }

        @Override // androidx.media2.session.futures.AbstractResolvableFuture.AbstractC0435b
        /* renamed from: a */
        public void mo37699a(C0441h hVar, C0441h hVar2) {
            hVar.f2262b = hVar2;
        }

        @Override // androidx.media2.session.futures.AbstractResolvableFuture.AbstractC0435b
        /* renamed from: a */
        public void mo37698a(C0441h hVar, Thread thread) {
            hVar.f2261a = thread;
        }

        @Override // androidx.media2.session.futures.AbstractResolvableFuture.AbstractC0435b
        /* renamed from: a */
        public boolean mo37697a(AbstractResolvableFuture<?> abstractResolvableFuture, C0437d dVar, C0437d dVar2) {
            synchronized (abstractResolvableFuture) {
                if (abstractResolvableFuture.f2242b != dVar) {
                    return false;
                }
                abstractResolvableFuture.f2242b = dVar2;
                return true;
            }
        }

        @Override // androidx.media2.session.futures.AbstractResolvableFuture.AbstractC0435b
        /* renamed from: a */
        public boolean mo37696a(AbstractResolvableFuture<?> abstractResolvableFuture, C0441h hVar, C0441h hVar2) {
            synchronized (abstractResolvableFuture) {
                if (abstractResolvableFuture.f2243c != hVar) {
                    return false;
                }
                abstractResolvableFuture.f2243c = hVar2;
                return true;
            }
        }

        @Override // androidx.media2.session.futures.AbstractResolvableFuture.AbstractC0435b
        /* renamed from: a */
        public boolean mo37695a(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2) {
            synchronized (abstractResolvableFuture) {
                if (abstractResolvableFuture.f2241a != obj) {
                    return false;
                }
                abstractResolvableFuture.f2241a = obj2;
                return true;
            }
        }
    }

    /* renamed from: androidx.media2.session.futures.AbstractResolvableFuture$h */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/futures/AbstractResolvableFuture$h.class */
    public static final class C0441h {

        /* renamed from: c */
        public static final C0441h f2260c = new C0441h(false);

        /* renamed from: a */
        public volatile Thread f2261a;

        /* renamed from: b */
        public volatile C0441h f2262b;

        public C0441h() {
            AbstractResolvableFuture.f2239f.mo37698a(this, Thread.currentThread());
        }

        public C0441h(boolean z) {
        }

        /* renamed from: a */
        public void m37694a() {
            Thread thread = this.f2261a;
            if (thread != null) {
                this.f2261a = null;
                LockSupport.unpark(thread);
            }
        }

        /* renamed from: a */
        public void m37693a(C0441h hVar) {
            AbstractResolvableFuture.f2239f.mo37699a(this, hVar);
        }
    }

    static {
        Throwable th;
        AbstractC0435b bVar;
        try {
            bVar = new C0438e(AtomicReferenceFieldUpdater.newUpdater(C0441h.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(C0441h.class, C0441h.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, C0441h.class, "c"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, C0437d.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Object.class, "a"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            bVar = new C0440g();
        }
        f2239f = bVar;
        if (th != null) {
            f2238e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f2240g = new Object();
    }

    /* renamed from: a */
    public static Object m37710a(AbstractFutureC5108l<?> lVar) {
        if (lVar instanceof AbstractResolvableFuture) {
            Object obj = ((AbstractResolvableFuture) lVar).f2241a;
            Object obj2 = obj;
            if (obj instanceof C0436c) {
                C0436c cVar = (C0436c) obj;
                obj2 = obj;
                if (cVar.f2247a) {
                    obj2 = cVar.f2248b != null ? new C0436c(false, cVar.f2248b) : C0436c.f2246d;
                }
            }
            return obj2;
        }
        boolean isCancelled = lVar.isCancelled();
        if ((!f2237d) && isCancelled) {
            return C0436c.f2246d;
        }
        try {
            Object a = m37706a((Future<Object>) lVar);
            Object obj3 = a;
            if (a == null) {
                obj3 = f2240g;
            }
            return obj3;
        } catch (CancellationException e) {
            if (isCancelled) {
                return new C0436c(false, e);
            }
            return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + lVar, e));
        } catch (ExecutionException e2) {
            return new Failure(e2.getCause());
        } catch (Throwable th) {
            return new Failure(th);
        }
    }

    /* renamed from: a */
    public static <V> V m37706a(Future<V> future) throws ExecutionException {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException e) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    /* renamed from: a */
    public static CancellationException m37708a(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [androidx.media2.session.futures.AbstractResolvableFuture, androidx.media2.session.futures.AbstractResolvableFuture<V>] */
    /* JADX WARN: Type inference failed for: r0v24, types: [androidx.media2.session.futures.AbstractResolvableFuture$b] */
    /* renamed from: a */
    public static void m37711a(AbstractResolvableFuture<?> abstractResolvableFuture) {
        C0437d dVar;
        AbstractResolvableFuture<V> abstractResolvableFuture2;
        C0437d dVar2 = null;
        while (true) {
            abstractResolvableFuture.m37700d();
            abstractResolvableFuture.m37714a();
            C0437d a = abstractResolvableFuture.m37713a(dVar2);
            while (a != null) {
                dVar = a.f2252c;
                Runnable runnable = a.f2250a;
                if (runnable instanceof RunnableC0439f) {
                    RunnableC0439f fVar = (RunnableC0439f) runnable;
                    abstractResolvableFuture2 = fVar.f2258a;
                    if (abstractResolvableFuture2.f2241a == fVar) {
                        if (f2239f.mo37695a(abstractResolvableFuture2, fVar, m37710a((AbstractFutureC5108l<?>) fVar.f2259b))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    m37703b(runnable, a.f2251b);
                }
                a = dVar;
            }
            return;
            dVar2 = dVar;
            abstractResolvableFuture = abstractResolvableFuture2;
        }
    }

    /* renamed from: b */
    public static void m37703b(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f2238e;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* renamed from: c */
    public static <T> T m37701c(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    /* renamed from: a */
    public final C0437d m37713a(C0437d dVar) {
        do {
            dVar = this.f2242b;
        } while (!f2239f.mo37697a((AbstractResolvableFuture<?>) this, dVar, C0437d.f2249d));
        while (dVar != null) {
            dVar = dVar.f2252c;
            dVar.f2252c = dVar;
        }
        return dVar;
    }

    /* renamed from: a */
    public final V m37709a(Object obj) throws ExecutionException {
        if (obj instanceof C0436c) {
            throw m37708a("Task was cancelled.", ((C0436c) obj).f2248b);
        } else if (!(obj instanceof Failure)) {
            V v = (V) obj;
            if (obj == f2240g) {
                v = null;
            }
            return v;
        } else {
            throw new ExecutionException(((Failure) obj).f2244a);
        }
    }

    /* renamed from: a */
    public void m37714a() {
    }

    /* renamed from: a */
    public final void m37712a(C0441h hVar) {
        hVar.f2261a = null;
        while (true) {
            C0441h hVar2 = this.f2243c;
            if (hVar2 != C0441h.f2260c) {
                C0441h hVar3 = null;
                while (hVar2 != null) {
                    C0441h hVar4 = hVar2.f2262b;
                    if (hVar2.f2261a != null) {
                        hVar3 = hVar2;
                    } else if (hVar3 != null) {
                        hVar3.f2262b = hVar4;
                        hVar3 = hVar3;
                        if (hVar3.f2261a == null) {
                            break;
                        }
                    } else {
                        hVar3 = hVar3;
                        if (!f2239f.mo37696a((AbstractResolvableFuture<?>) this, hVar2, hVar4)) {
                            break;
                        }
                    }
                    hVar2 = hVar4;
                }
                return;
            }
            return;
        }
    }

    @Override // p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l
    /* renamed from: a */
    public final void mo7696a(Runnable runnable, Executor executor) {
        C0437d dVar;
        m37701c(runnable);
        m37701c(executor);
        C0437d dVar2 = this.f2242b;
        if (dVar2 != C0437d.f2249d) {
            C0437d dVar3 = new C0437d(runnable, executor);
            do {
                dVar3.f2252c = dVar2;
                if (!f2239f.mo37697a((AbstractResolvableFuture<?>) this, dVar2, dVar3)) {
                    dVar = this.f2242b;
                    dVar2 = dVar;
                } else {
                    return;
                }
            } while (dVar != C0437d.f2249d);
            m37703b(runnable, executor);
        }
        m37703b(runnable, executor);
    }

    /* renamed from: a */
    public final void m37707a(StringBuilder sb) {
        try {
            Object a = m37706a((Future<Object>) this);
            sb.append("SUCCESS, result=[");
            sb.append(m37704b(a));
            sb.append("]");
        } catch (CancellationException e) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        }
    }

    /* renamed from: b */
    public final String m37704b(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    /* renamed from: b */
    public void m37705b() {
    }

    /* renamed from: c */
    public String m37702c() {
        Object obj = this.f2241a;
        if (obj instanceof RunnableC0439f) {
            return "setFuture=[" + m37704b(((RunnableC0439f) obj).f2259b) + "]";
        } else if (!(this instanceof ScheduledFuture)) {
            return null;
        } else {
            return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.f2241a;
        if ((obj == null) || (obj instanceof RunnableC0439f)) {
            C0436c cVar = f2237d ? new C0436c(z, new CancellationException("Future.cancel() was called.")) : z ? C0436c.f2245c : C0436c.f2246d;
            z2 = false;
            AbstractResolvableFuture<V> abstractResolvableFuture = this;
            while (true) {
                if (f2239f.mo37695a((AbstractResolvableFuture<?>) abstractResolvableFuture, obj, (Object) cVar)) {
                    if (z) {
                        abstractResolvableFuture.m37705b();
                    }
                    m37711a((AbstractResolvableFuture<?>) abstractResolvableFuture);
                    z2 = true;
                    if (!(obj instanceof RunnableC0439f)) {
                        break;
                    }
                    AbstractFutureC5108l<? extends V> lVar = ((RunnableC0439f) obj).f2259b;
                    if (!(lVar instanceof AbstractResolvableFuture)) {
                        lVar.cancel(z);
                        z2 = true;
                        break;
                    }
                    abstractResolvableFuture = (AbstractResolvableFuture) lVar;
                    obj = abstractResolvableFuture.f2241a;
                    z2 = true;
                    if (!(obj == null) && !(obj instanceof RunnableC0439f)) {
                        break;
                    }
                    z2 = true;
                } else {
                    Object obj2 = abstractResolvableFuture.f2241a;
                    obj = obj2;
                    if (!(obj2 instanceof RunnableC0439f)) {
                        break;
                    }
                }
            }
        } else {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: d */
    public final void m37700d() {
        C0441h hVar;
        do {
            hVar = this.f2243c;
        } while (!f2239f.mo37696a((AbstractResolvableFuture<?>) this, hVar, C0441h.f2260c));
        while (hVar != null) {
            hVar.m37694a();
            hVar = hVar.f2262b;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0053, code lost:
        if (java.lang.Thread.interrupted() != false) goto L_0x0077;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0056, code lost:
        r0 = r5.f2241a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005c, code lost:
        if (r0 == null) goto L_0x0064;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005f, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0064, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006e, code lost:
        if ((r7 & (!(r0 instanceof androidx.media2.session.futures.AbstractResolvableFuture.RunnableC0439f))) == false) goto L_0x004c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0076, code lost:
        return m37709a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0077, code lost:
        m37712a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0083, code lost:
        throw new java.lang.InterruptedException();
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get() throws java.lang.InterruptedException, java.util.concurrent.ExecutionException {
        /*
            r5 = this;
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L_0x009e
            r0 = r5
            java.lang.Object r0 = r0.f2241a
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0014
            r0 = 1
            r7 = r0
            goto L_0x0016
        L_0x0014:
            r0 = 0
            r7 = r0
        L_0x0016:
            r0 = r7
            r1 = r6
            boolean r1 = r1 instanceof androidx.media2.session.futures.AbstractResolvableFuture.RunnableC0439f
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0027
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m37709a(r1)
            return r0
        L_0x0027:
            r0 = r5
            androidx.media2.session.futures.AbstractResolvableFuture$h r0 = r0.f2243c
            r6 = r0
            r0 = r6
            androidx.media2.session.futures.AbstractResolvableFuture$h r1 = androidx.media2.session.futures.AbstractResolvableFuture.C0441h.f2260c
            if (r0 == r1) goto L_0x0095
            androidx.media2.session.futures.AbstractResolvableFuture$h r0 = new androidx.media2.session.futures.AbstractResolvableFuture$h
            r1 = r0
            r1.<init>()
            r8 = r0
        L_0x003b:
            r0 = r8
            r1 = r6
            r0.m37693a(r1)
            androidx.media2.session.futures.AbstractResolvableFuture$b r0 = androidx.media2.session.futures.AbstractResolvableFuture.f2239f
            r1 = r5
            r2 = r6
            r3 = r8
            boolean r0 = r0.mo37696a(r1, r2, r3)
            if (r0 == 0) goto L_0x0084
        L_0x004c:
            r0 = r5
            java.util.concurrent.locks.LockSupport.park(r0)
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L_0x0077
            r0 = r5
            java.lang.Object r0 = r0.f2241a
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0064
            r0 = 1
            r7 = r0
            goto L_0x0066
        L_0x0064:
            r0 = 0
            r7 = r0
        L_0x0066:
            r0 = r7
            r1 = r6
            boolean r1 = r1 instanceof androidx.media2.session.futures.AbstractResolvableFuture.RunnableC0439f
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x004c
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m37709a(r1)
            return r0
        L_0x0077:
            r0 = r5
            r1 = r8
            r0.m37712a(r1)
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x0084:
            r0 = r5
            androidx.media2.session.futures.AbstractResolvableFuture$h r0 = r0.f2243c
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            androidx.media2.session.futures.AbstractResolvableFuture$h r1 = androidx.media2.session.futures.AbstractResolvableFuture.C0441h.f2260c
            if (r0 != r1) goto L_0x003b
        L_0x0095:
            r0 = r5
            r1 = r5
            java.lang.Object r1 = r1.f2241a
            java.lang.Object r0 = r0.m37709a(r1)
            return r0
        L_0x009e:
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            r6 = r0
            goto L_0x00ab
        L_0x00a9:
            r0 = r6
            throw r0
        L_0x00ab:
            goto L_0x00a9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.session.futures.AbstractResolvableFuture.get():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0083, code lost:
        java.util.concurrent.locks.LockSupport.parkNanos(r6, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008c, code lost:
        if (java.lang.Thread.interrupted() != false) goto L_0x00d5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008f, code lost:
        r0 = r6.f2241a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0097, code lost:
        if (r0 == null) goto L_0x00a0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009a, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a0, code lost:
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ad, code lost:
        if ((r13 & (!(r0 instanceof androidx.media2.session.futures.AbstractResolvableFuture.RunnableC0439f))) == false) goto L_0x00b7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b6, code lost:
        return m37709a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b7, code lost:
        r16 = r14 - java.lang.System.nanoTime();
        r10 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c9, code lost:
        if (r16 >= 1000) goto L_0x0083;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00cc, code lost:
        m37712a(r0);
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d5, code lost:
        m37712a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e2, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2, types: [long] */
    /* JADX WARN: Type inference failed for: r16v6, types: [long] */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get(long r7, java.util.concurrent.TimeUnit r9) throws java.lang.InterruptedException, java.util.concurrent.TimeoutException, java.util.concurrent.ExecutionException {
        /*
            Method dump skipped, instructions count: 796
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.session.futures.AbstractResolvableFuture.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f2241a instanceof C0436c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f2241a;
        return (!(obj instanceof RunnableC0439f)) & (obj != null);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m37707a(sb);
        } else {
            try {
                str = m37702c();
            } catch (RuntimeException e) {
                str = "Exception thrown from implementation: " + e.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                m37707a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
