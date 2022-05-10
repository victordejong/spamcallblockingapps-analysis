package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapIterableFlowable$FlatMapIterableObserver.class */
public final class MaybeFlatMapIterableFlowable$FlatMapIterableObserver<T, R> extends BasicIntQueueSubscription<R> implements AbstractC9836k<T> {
    public static final long serialVersionUID = -8938804753851907758L;
    public final AbstractC10433c<? super R> actual;
    public volatile boolean cancelled;

    /* renamed from: d */
    public AbstractC9861b f38456d;

    /* renamed from: it */
    public volatile Iterator<? extends R> f38457it;
    public final AbstractC9645h<? super T, ? extends Iterable<? extends R>> mapper;
    public boolean outputFused;
    public final AtomicLong requested = new AtomicLong();

    public MaybeFlatMapIterableFlowable$FlatMapIterableObserver(AbstractC10433c<? super R> cVar, AbstractC9645h<? super T, ? extends Iterable<? extends R>> hVar) {
        this.actual = cVar;
        this.mapper = hVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.cancelled = true;
        this.f38456d.dispose();
        this.f38456d = DisposableHelper.DISPOSED;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
        this.f38457it = null;
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            AbstractC10433c<? super R> cVar = this.actual;
            Iterator<? extends R> it = this.f38457it;
            if (!this.outputFused || it == null) {
                int i = 1;
                while (true) {
                    if (it != null) {
                        long j = this.requested.get();
                        if (j == Long.MAX_VALUE) {
                            fastPath(cVar, it);
                            return;
                        }
                        long j2 = 0;
                        while (j2 != j) {
                            if (!this.cancelled) {
                                try {
                                    Object obj = (Object) it.next();
                                    C9650a.m2095a(obj, "The iterator returned a null value");
                                    cVar.onNext(obj);
                                    if (!this.cancelled) {
                                        j2++;
                                        try {
                                            if (!it.hasNext()) {
                                                cVar.onComplete();
                                                return;
                                            }
                                        } catch (Throwable th) {
                                            C9863a.m1822b(th);
                                            cVar.onError(th);
                                            return;
                                        }
                                    } else {
                                        return;
                                    }
                                } catch (Throwable th2) {
                                    C9863a.m1822b(th2);
                                    cVar.onError(th2);
                                    return;
                                }
                            } else {
                                return;
                            }
                        }
                        if (j2 != 0) {
                            C9800b.m2009c(this.requested, j2);
                        }
                    }
                    int addAndGet = addAndGet(-i);
                    if (addAndGet != 0) {
                        i = addAndGet;
                        if (it == null) {
                            it = this.f38457it;
                            i = addAndGet;
                        }
                    } else {
                        return;
                    }
                }
            } else {
                cVar.onNext(null);
                cVar.onComplete();
            }
        }
    }

    public void fastPath(AbstractC10433c<? super R> cVar, Iterator<? extends R> it) {
        while (!this.cancelled) {
            try {
                cVar.onNext((Object) it.next());
                if (!this.cancelled) {
                    try {
                        if (!it.hasNext()) {
                            cVar.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        C9863a.m1822b(th);
                        cVar.onError(th);
                        return;
                    }
                } else {
                    return;
                }
            } catch (Throwable th2) {
                C9863a.m1822b(th2);
                cVar.onError(th2);
                return;
            }
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return this.f38457it == null;
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onComplete() {
        this.actual.onComplete();
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        this.f38456d = DisposableHelper.DISPOSED;
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38456d, bVar)) {
            this.f38456d = bVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(T t) {
        try {
            Iterator<? extends R> it = ((Iterable) this.mapper.apply(t)).iterator();
            if (!it.hasNext()) {
                this.actual.onComplete();
                return;
            }
            this.f38457it = it;
            drain();
        } catch (Throwable th) {
            C9863a.m1822b(th);
            this.actual.onError(th);
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public R poll() throws Exception {
        Iterator<? extends R> it = this.f38457it;
        if (it == null) {
            return null;
        }
        R r = (R) it.next();
        C9650a.m2095a(r, "The iterator returned a null value");
        if (!it.hasNext()) {
            this.f38457it = null;
        }
        return r;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
            drain();
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
    public int requestFusion(int i) {
        if ((i & 2) == 0) {
            return 0;
        }
        this.outputFused = true;
        return 2;
    }
}
