package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeConcatIterable$ConcatMaybeObserver.class */
public final class MaybeConcatIterable$ConcatMaybeObserver<T> extends AtomicInteger implements AbstractC9836k<T>, AbstractC10434d {
    public static final long serialVersionUID = 3520831347801429610L;
    public final AbstractC10433c<? super T> actual;
    public long produced;
    public final Iterator<? extends AbstractC9838m<? extends T>> sources;
    public final AtomicLong requested = new AtomicLong();
    public final SequentialDisposable disposables = new SequentialDisposable();
    public final AtomicReference<Object> current = new AtomicReference<>(NotificationLite.COMPLETE);

    public MaybeConcatIterable$ConcatMaybeObserver(AbstractC10433c<? super T> cVar, Iterator<? extends AbstractC9838m<? extends T>> it) {
        this.actual = cVar;
        this.sources = it;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.disposables.dispose();
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            AtomicReference<Object> atomicReference = this.current;
            AbstractC10433c<? super T> cVar = this.actual;
            SequentialDisposable sequentialDisposable = this.disposables;
            while (!sequentialDisposable.isDisposed()) {
                Object obj = atomicReference.get();
                if (obj != null) {
                    boolean z = true;
                    if (obj != NotificationLite.COMPLETE) {
                        long j = this.produced;
                        if (j != this.requested.get()) {
                            this.produced = j + 1;
                            atomicReference.lazySet(null);
                            cVar.onNext(obj);
                        } else {
                            z = false;
                        }
                    } else {
                        atomicReference.lazySet(null);
                    }
                    if (z && !sequentialDisposable.isDisposed()) {
                        try {
                            if (this.sources.hasNext()) {
                                try {
                                    Object next = this.sources.next();
                                    C9650a.m2095a(next, "The source Iterator returned a null MaybeSource");
                                    ((AbstractC9838m) next).mo1876a(this);
                                } catch (Throwable th) {
                                    C9863a.m1822b(th);
                                    cVar.onError(th);
                                    return;
                                }
                            } else {
                                cVar.onComplete();
                            }
                        } catch (Throwable th2) {
                            C9863a.m1822b(th2);
                            cVar.onError(th2);
                            return;
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onComplete() {
        this.current.lazySet(NotificationLite.COMPLETE);
        drain();
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
        this.disposables.replace(bVar);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(T t) {
        this.current.lazySet(t);
        drain();
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
            drain();
        }
    }
}
