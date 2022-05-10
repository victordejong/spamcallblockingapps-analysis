package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9829h;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber.class */
public final class FlowableConcatArray$ConcatArraySubscriber<T> extends SubscriptionArbiter implements AbstractC9829h<T> {
    public static final long serialVersionUID = -8158322871608889516L;
    public final AbstractC10433c<? super T> actual;
    public final boolean delayError;
    public List<Throwable> errors;
    public int index;
    public long produced;
    public final AbstractC10432b<? extends T>[] sources;
    public final AtomicInteger wip = new AtomicInteger();

    public FlowableConcatArray$ConcatArraySubscriber(AbstractC10432b<? extends T>[] bVarArr, boolean z, AbstractC10433c<? super T> cVar) {
        this.actual = cVar;
        this.sources = bVarArr;
        this.delayError = z;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (this.wip.getAndIncrement() == 0) {
            AbstractC10432b<? extends T>[] bVarArr = this.sources;
            int length = bVarArr.length;
            int i = this.index;
            while (i != length) {
                AbstractC10432b<? extends T> bVar = bVarArr[i];
                if (bVar == null) {
                    NullPointerException nullPointerException = new NullPointerException("A Publisher entry is null");
                    if (this.delayError) {
                        List<Throwable> list = this.errors;
                        List<Throwable> list2 = list;
                        if (list == null) {
                            list2 = new ArrayList<>((length - i) + 1);
                            this.errors = list2;
                        }
                        list2.add(nullPointerException);
                        i++;
                    } else {
                        this.actual.onError(nullPointerException);
                        return;
                    }
                } else {
                    long j = this.produced;
                    if (j != 0) {
                        this.produced = 0L;
                        produced(j);
                    }
                    bVar.subscribe(this);
                    i++;
                    this.index = i;
                    if (this.wip.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
            List<Throwable> list3 = this.errors;
            if (list3 == null) {
                this.actual.onComplete();
            } else if (list3.size() == 1) {
                this.actual.onError(list3.get(0));
            } else {
                this.actual.onError(new CompositeException(list3));
            }
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.delayError) {
            List<Throwable> list = this.errors;
            List<Throwable> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>((this.sources.length - this.index) + 1);
                this.errors = list2;
            }
            list2.add(th);
            onComplete();
            return;
        }
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.produced++;
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        setSubscription(dVar);
    }
}
