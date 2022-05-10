package io.reactivex.subjects;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p563h0.AbstractC9832b;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/UnicastSubject.class */
public final class UnicastSubject<T> extends AbstractC9832b<T> {

    /* renamed from: a */
    public final C9772a<T> f38609a;

    /* renamed from: b */
    public final AtomicReference<AbstractC9844r<? super T>> f38610b;

    /* renamed from: c */
    public final AtomicReference<Runnable> f38611c;

    /* renamed from: d */
    public final boolean f38612d;

    /* renamed from: e */
    public volatile boolean f38613e;

    /* renamed from: f */
    public volatile boolean f38614f;

    /* renamed from: g */
    public Throwable f38615g;

    /* renamed from: h */
    public final AtomicBoolean f38616h;

    /* renamed from: i */
    public final BasicIntQueueDisposable<T> f38617i;

    /* renamed from: j */
    public boolean f38618j;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/UnicastSubject$UnicastQueueDisposable.class */
    public final class UnicastQueueDisposable extends BasicIntQueueDisposable<T> {
        public static final long serialVersionUID = 7926949470189395511L;

        public UnicastQueueDisposable() {
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public void clear() {
            UnicastSubject.this.f38609a.clear();
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            if (!UnicastSubject.this.f38613e) {
                UnicastSubject.this.f38613e = true;
                UnicastSubject.this.m190c();
                UnicastSubject.this.f38610b.lazySet(null);
                if (UnicastSubject.this.f38617i.getAndIncrement() == 0) {
                    UnicastSubject.this.f38610b.lazySet(null);
                    UnicastSubject.this.f38609a.clear();
                }
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return UnicastSubject.this.f38613e;
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public boolean isEmpty() {
            return UnicastSubject.this.f38609a.isEmpty();
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public T poll() throws Exception {
            return UnicastSubject.this.f38609a.poll();
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            UnicastSubject.this.f38618j = true;
            return 2;
        }
    }

    public UnicastSubject(int i, Runnable runnable, boolean z) {
        C9650a.m2099a(i, "capacityHint");
        this.f38609a = new C9772a<>(i);
        C9650a.m2095a(runnable, "onTerminate");
        this.f38611c = new AtomicReference<>(runnable);
        this.f38612d = z;
        this.f38610b = new AtomicReference<>();
        this.f38616h = new AtomicBoolean();
        this.f38617i = new UnicastQueueDisposable();
    }

    public UnicastSubject(int i, boolean z) {
        C9650a.m2099a(i, "capacityHint");
        this.f38609a = new C9772a<>(i);
        this.f38611c = new AtomicReference<>();
        this.f38612d = z;
        this.f38610b = new AtomicReference<>();
        this.f38616h = new AtomicBoolean();
        this.f38617i = new UnicastQueueDisposable();
    }

    /* renamed from: a */
    public static <T> UnicastSubject<T> m194a(int i, Runnable runnable) {
        return new UnicastSubject<>(i, runnable, true);
    }

    /* renamed from: e */
    public static <T> UnicastSubject<T> m186e() {
        return new UnicastSubject<>(AbstractC9840o.m1870a(), true);
    }

    @Override // p530d.p541c.AbstractC9840o
    /* renamed from: a */
    public void mo192a(AbstractC9844r<? super T> rVar) {
        if (this.f38616h.get() || !this.f38616h.compareAndSet(false, true)) {
            EmptyDisposable.error(new IllegalStateException("Only a single observer allowed."), rVar);
            return;
        }
        rVar.onSubscribe(this.f38617i);
        this.f38610b.lazySet(rVar);
        if (this.f38613e) {
            this.f38610b.lazySet(null);
        } else {
            m188d();
        }
    }

    /* renamed from: a */
    public boolean m193a(AbstractC9661j<T> jVar, AbstractC9844r<? super T> rVar) {
        Throwable th = this.f38615g;
        if (th == null) {
            return false;
        }
        this.f38610b.lazySet(null);
        jVar.clear();
        rVar.onError(th);
        return true;
    }

    /* renamed from: b */
    public void m191b(AbstractC9844r<? super T> rVar) {
        C9772a<T> aVar = this.f38609a;
        boolean z = this.f38612d;
        int i = 1;
        while (!this.f38613e) {
            boolean z2 = this.f38614f;
            if (!(!z) || !z2 || !m193a(aVar, rVar)) {
                rVar.onNext(null);
                if (z2) {
                    m187d(rVar);
                    return;
                }
                int addAndGet = this.f38617i.addAndGet(-i);
                i = addAndGet;
                if (addAndGet == 0) {
                    return;
                }
            } else {
                return;
            }
        }
        this.f38610b.lazySet(null);
        aVar.clear();
    }

    /* renamed from: c */
    public void m190c() {
        Runnable runnable = this.f38611c.get();
        if (runnable != null && this.f38611c.compareAndSet(runnable, null)) {
            runnable.run();
        }
    }

    /* renamed from: c */
    public void m189c(AbstractC9844r<? super T> rVar) {
        C9772a<T> aVar = this.f38609a;
        boolean z = this.f38612d;
        boolean z2 = true;
        int i = 1;
        while (!this.f38613e) {
            boolean z3 = this.f38614f;
            Object obj = (T) this.f38609a.poll();
            boolean z4 = obj == null;
            boolean z5 = z2;
            if (z3) {
                z5 = z2;
                if (!z) {
                    z5 = z2;
                    if (z2) {
                        if (!m193a(aVar, rVar)) {
                            z5 = false;
                        } else {
                            return;
                        }
                    }
                }
                if (z4) {
                    m187d(rVar);
                    return;
                }
            }
            if (z4) {
                int addAndGet = this.f38617i.addAndGet(-i);
                z2 = z5;
                i = addAndGet;
                if (addAndGet == 0) {
                    return;
                }
            } else {
                rVar.onNext(obj);
                z2 = z5;
            }
        }
        this.f38610b.lazySet(null);
        aVar.clear();
    }

    /* renamed from: d */
    public void m188d() {
        if (this.f38617i.getAndIncrement() == 0) {
            AbstractC9844r<? super T> rVar = this.f38610b.get();
            int i = 1;
            while (rVar == null) {
                i = this.f38617i.addAndGet(-i);
                if (i != 0) {
                    rVar = this.f38610b.get();
                } else {
                    return;
                }
            }
            if (this.f38618j) {
                m191b((AbstractC9844r) rVar);
            } else {
                m189c(rVar);
            }
        }
    }

    /* renamed from: d */
    public void m187d(AbstractC9844r<? super T> rVar) {
        this.f38610b.lazySet(null);
        Throwable th = this.f38615g;
        if (th != null) {
            rVar.onError(th);
        } else {
            rVar.onComplete();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (!this.f38614f && !this.f38613e) {
            this.f38614f = true;
            m190c();
            m188d();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        C9650a.m2095a(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f38614f || this.f38613e) {
            C9815a.m1923b(th);
            return;
        }
        this.f38615g = th;
        this.f38614f = true;
        m190c();
        m188d();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        C9650a.m2095a((Object) t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f38614f && !this.f38613e) {
            this.f38609a.offer(t);
            m188d();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (this.f38614f || this.f38613e) {
            bVar.dispose();
        }
    }
}
