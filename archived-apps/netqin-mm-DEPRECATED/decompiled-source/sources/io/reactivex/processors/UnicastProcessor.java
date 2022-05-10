package io.reactivex.processors;

import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p561f0.AbstractC9817a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/processors/UnicastProcessor.class */
public final class UnicastProcessor<T> extends AbstractC9817a<T> {

    /* renamed from: b */
    public final C9772a<T> f38580b;

    /* renamed from: c */
    public final AtomicReference<Runnable> f38581c;

    /* renamed from: d */
    public final boolean f38582d;

    /* renamed from: e */
    public volatile boolean f38583e;

    /* renamed from: f */
    public Throwable f38584f;

    /* renamed from: g */
    public final AtomicReference<AbstractC10433c<? super T>> f38585g;

    /* renamed from: h */
    public volatile boolean f38586h;

    /* renamed from: i */
    public final AtomicBoolean f38587i;

    /* renamed from: j */
    public final BasicIntQueueSubscription<T> f38588j;

    /* renamed from: k */
    public final AtomicLong f38589k;

    /* renamed from: l */
    public boolean f38590l;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/UnicastProcessor$UnicastQueueSubscription.class */
    public final class UnicastQueueSubscription extends BasicIntQueueSubscription<T> {
        public static final long serialVersionUID = -4896760517184205454L;

        public UnicastQueueSubscription() {
        }

        @Override // p611j.p612a.AbstractC10434d
        public void cancel() {
            if (!UnicastProcessor.this.f38586h) {
                UnicastProcessor.this.f38586h = true;
                UnicastProcessor.this.m209i();
                UnicastProcessor unicastProcessor = UnicastProcessor.this;
                if (!unicastProcessor.f38590l && unicastProcessor.f38588j.getAndIncrement() == 0) {
                    UnicastProcessor.this.f38580b.clear();
                    UnicastProcessor.this.f38585g.lazySet(null);
                }
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public void clear() {
            UnicastProcessor.this.f38580b.clear();
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public boolean isEmpty() {
            return UnicastProcessor.this.f38580b.isEmpty();
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public T poll() {
            return UnicastProcessor.this.f38580b.poll();
        }

        @Override // p611j.p612a.AbstractC10434d
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                C9800b.m2012a(UnicastProcessor.this.f38589k, j);
                UnicastProcessor.this.m208j();
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            UnicastProcessor.this.f38590l = true;
            return 2;
        }
    }

    public UnicastProcessor(int i) {
        this(i, null, true);
    }

    public UnicastProcessor(int i, Runnable runnable) {
        this(i, runnable, true);
    }

    public UnicastProcessor(int i, Runnable runnable, boolean z) {
        C9650a.m2099a(i, "capacityHint");
        this.f38580b = new C9772a<>(i);
        this.f38581c = new AtomicReference<>(runnable);
        this.f38582d = z;
        this.f38585g = new AtomicReference<>();
        this.f38587i = new AtomicBoolean();
        this.f38588j = new UnicastQueueSubscription();
        this.f38589k = new AtomicLong();
    }

    /* renamed from: a */
    public static <T> UnicastProcessor<T> m214a(int i, Runnable runnable) {
        C9650a.m2095a(runnable, "onTerminate");
        return new UnicastProcessor<>(i, runnable);
    }

    /* renamed from: k */
    public static <T> UnicastProcessor<T> m207k() {
        return new UnicastProcessor<>(AbstractC9814e.m1946g());
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super T> cVar) {
        if (this.f38587i.get() || !this.f38587i.compareAndSet(false, true)) {
            EmptySubscription.error(new IllegalStateException("This processor allows only a single Subscriber"), cVar);
            return;
        }
        cVar.onSubscribe(this.f38588j);
        this.f38585g.set(cVar);
        if (this.f38586h) {
            this.f38585g.lazySet(null);
        } else {
            m208j();
        }
    }

    /* renamed from: a */
    public boolean m212a(boolean z, boolean z2, boolean z3, AbstractC10433c<? super T> cVar, C9772a<T> aVar) {
        if (this.f38586h) {
            aVar.clear();
            this.f38585g.lazySet(null);
            return true;
        } else if (!z2) {
            return false;
        } else {
            if (z && this.f38584f != null) {
                aVar.clear();
                this.f38585g.lazySet(null);
                cVar.onError(this.f38584f);
                return true;
            } else if (!z3) {
                return false;
            } else {
                Throwable th = this.f38584f;
                this.f38585g.lazySet(null);
                if (th != null) {
                    cVar.onError(th);
                    return true;
                }
                cVar.onComplete();
                return true;
            }
        }
    }

    /* renamed from: b */
    public void m211b(AbstractC10433c<? super T> cVar) {
        C9772a<T> aVar = this.f38580b;
        boolean z = this.f38582d;
        int i = 1;
        while (!this.f38586h) {
            boolean z2 = this.f38583e;
            if (!(!z) || !z2 || this.f38584f == null) {
                cVar.onNext(null);
                if (z2) {
                    this.f38585g.lazySet(null);
                    Throwable th = this.f38584f;
                    if (th != null) {
                        cVar.onError(th);
                        return;
                    } else {
                        cVar.onComplete();
                        return;
                    }
                } else {
                    int addAndGet = this.f38588j.addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                }
            } else {
                aVar.clear();
                this.f38585g.lazySet(null);
                cVar.onError(this.f38584f);
                return;
            }
        }
        aVar.clear();
        this.f38585g.lazySet(null);
    }

    /* renamed from: c */
    public void m210c(AbstractC10433c<? super T> cVar) {
        int addAndGet;
        C9772a<T> aVar = this.f38580b;
        boolean z = !this.f38582d;
        int i = 1;
        do {
            long j = this.f38589k.get();
            long j2 = 0;
            while (j != j2) {
                boolean z2 = this.f38583e;
                T poll = aVar.poll();
                boolean z3 = poll == null;
                if (!m212a(z, z2, z3, cVar, aVar)) {
                    if (z3) {
                        break;
                    }
                    cVar.onNext(poll);
                    j2 = 1 + j2;
                } else {
                    return;
                }
            }
            if (j != j2 || !m212a(z, this.f38583e, aVar.isEmpty(), cVar, aVar)) {
                if (!(j2 == 0 || j == Long.MAX_VALUE)) {
                    this.f38589k.addAndGet(-j2);
                }
                addAndGet = this.f38588j.addAndGet(-i);
                i = addAndGet;
            } else {
                return;
            }
        } while (addAndGet != 0);
    }

    /* renamed from: i */
    public void m209i() {
        Runnable andSet = this.f38581c.getAndSet(null);
        if (andSet != null) {
            andSet.run();
        }
    }

    /* renamed from: j */
    public void m208j() {
        if (this.f38588j.getAndIncrement() == 0) {
            int i = 1;
            AbstractC10433c<? super T> cVar = this.f38585g.get();
            while (true) {
                AbstractC10433c<? super T> cVar2 = cVar;
                if (cVar2 == null) {
                    i = this.f38588j.addAndGet(-i);
                    if (i != 0) {
                        cVar = this.f38585g.get();
                    } else {
                        return;
                    }
                } else if (this.f38590l) {
                    m211b(cVar2);
                    return;
                } else {
                    m210c(cVar2);
                    return;
                }
            }
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.f38583e && !this.f38586h) {
            this.f38583e = true;
            m209i();
            m208j();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        C9650a.m2095a(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f38583e || this.f38586h) {
            C9815a.m1923b(th);
            return;
        }
        this.f38584f = th;
        this.f38583e = true;
        m209i();
        m208j();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        C9650a.m2095a((Object) t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f38583e && !this.f38586h) {
            this.f38580b.offer(t);
            m208j();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (this.f38583e || this.f38586h) {
            dVar.cancel();
        } else {
            dVar.request(Long.MAX_VALUE);
        }
    }
}
