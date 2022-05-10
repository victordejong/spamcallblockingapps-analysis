package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator.class */
public final class FlowableZip$ZipCoordinator<T, R> extends AtomicInteger implements AbstractC10434d {
    public static final long serialVersionUID = -2434867452883857743L;
    public final AbstractC10433c<? super R> actual;
    public volatile boolean cancelled;
    public final Object[] current;
    public final boolean delayErrors;
    public final AtomicThrowable errors;
    public final AtomicLong requested;
    public final FlowableZip$ZipSubscriber<T, R>[] subscribers;
    public final AbstractC9645h<? super Object[], ? extends R> zipper;

    public FlowableZip$ZipCoordinator(AbstractC10433c<? super R> cVar, AbstractC9645h<? super Object[], ? extends R> hVar, int i, int i2, boolean z) {
        this.actual = cVar;
        this.zipper = hVar;
        this.delayErrors = z;
        FlowableZip$ZipSubscriber<T, R>[] flowableZip$ZipSubscriberArr = new FlowableZip$ZipSubscriber[i];
        for (int i3 = 0; i3 < i; i3++) {
            flowableZip$ZipSubscriberArr[i3] = new FlowableZip$ZipSubscriber<>(this, i2);
        }
        this.current = new Object[i];
        this.subscribers = flowableZip$ZipSubscriberArr;
        this.requested = new AtomicLong();
        this.errors = new AtomicThrowable();
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (!this.cancelled) {
            this.cancelled = true;
            cancelAll();
        }
    }

    public void cancelAll() {
        for (FlowableZip$ZipSubscriber<T, R> flowableZip$ZipSubscriber : this.subscribers) {
            flowableZip$ZipSubscriber.cancel();
        }
    }

    public void drain() {
        int addAndGet;
        boolean z;
        T poll;
        boolean z2;
        if (getAndIncrement() == 0) {
            AbstractC10433c<? super R> cVar = this.actual;
            FlowableZip$ZipSubscriber<T, R>[] flowableZip$ZipSubscriberArr = this.subscribers;
            int length = flowableZip$ZipSubscriberArr.length;
            Object[] objArr = this.current;
            int i = 1;
            do {
                long j = this.requested.get();
                long j2 = 0;
                while (j != j2) {
                    if (this.cancelled) {
                        return;
                    }
                    if (this.delayErrors || this.errors.get() == null) {
                        boolean z3 = false;
                        for (int i2 = 0; i2 < length; i2++) {
                            FlowableZip$ZipSubscriber<T, R> flowableZip$ZipSubscriber = flowableZip$ZipSubscriberArr[i2];
                            z3 = z3;
                            if (objArr[i2] == null) {
                                try {
                                    z = flowableZip$ZipSubscriber.done;
                                    AbstractC9661j<T> jVar = flowableZip$ZipSubscriber.queue;
                                    poll = jVar != null ? jVar.poll() : null;
                                    z2 = poll == null;
                                } catch (Throwable th) {
                                    C9863a.m1822b(th);
                                    this.errors.addThrowable(th);
                                    if (!this.delayErrors) {
                                        cancelAll();
                                        cVar.onError(this.errors.terminate());
                                        return;
                                    }
                                }
                                if (!z || !z2) {
                                    if (!z2) {
                                        objArr[i2] = poll;
                                        z3 = z3;
                                    }
                                    z3 = true;
                                } else {
                                    cancelAll();
                                    if (this.errors.get() != null) {
                                        cVar.onError(this.errors.terminate());
                                        return;
                                    } else {
                                        cVar.onComplete();
                                        return;
                                    }
                                }
                            }
                        }
                        if (z3) {
                            break;
                        }
                        try {
                            Object obj = (Object) this.zipper.apply(objArr.clone());
                            C9650a.m2095a(obj, "The zipper returned a null value");
                            cVar.onNext(obj);
                            j2++;
                            Arrays.fill(objArr, (Object) null);
                        } catch (Throwable th2) {
                            C9863a.m1822b(th2);
                            cancelAll();
                            this.errors.addThrowable(th2);
                            cVar.onError(this.errors.terminate());
                            return;
                        }
                    } else {
                        cancelAll();
                        cVar.onError(this.errors.terminate());
                        return;
                    }
                }
                if (j == j2) {
                    if (this.cancelled) {
                        return;
                    }
                    if (this.delayErrors || this.errors.get() == null) {
                        for (int i3 = 0; i3 < length; i3++) {
                            FlowableZip$ZipSubscriber<T, R> flowableZip$ZipSubscriber2 = flowableZip$ZipSubscriberArr[i3];
                            if (objArr[i3] == null) {
                                try {
                                    boolean z4 = flowableZip$ZipSubscriber2.done;
                                    AbstractC9661j<T> jVar2 = flowableZip$ZipSubscriber2.queue;
                                    T poll2 = jVar2 != null ? jVar2.poll() : null;
                                    boolean z5 = poll2 == null;
                                    if (z4 && z5) {
                                        cancelAll();
                                        if (this.errors.get() != null) {
                                            cVar.onError(this.errors.terminate());
                                            return;
                                        } else {
                                            cVar.onComplete();
                                            return;
                                        }
                                    } else if (!z5) {
                                        objArr[i3] = poll2;
                                    }
                                } catch (Throwable th3) {
                                    C9863a.m1822b(th3);
                                    this.errors.addThrowable(th3);
                                    if (!this.delayErrors) {
                                        cancelAll();
                                        cVar.onError(this.errors.terminate());
                                        return;
                                    }
                                }
                            }
                        }
                    } else {
                        cancelAll();
                        cVar.onError(this.errors.terminate());
                        return;
                    }
                }
                if (j2 != 0) {
                    for (FlowableZip$ZipSubscriber<T, R> flowableZip$ZipSubscriber3 : flowableZip$ZipSubscriberArr) {
                        flowableZip$ZipSubscriber3.request(j2);
                    }
                    if (j != Long.MAX_VALUE) {
                        this.requested.addAndGet(-j2);
                    }
                }
                addAndGet = addAndGet(-i);
                i = addAndGet;
            } while (addAndGet != 0);
        }
    }

    public void error(FlowableZip$ZipSubscriber<T, R> flowableZip$ZipSubscriber, Throwable th) {
        if (this.errors.addThrowable(th)) {
            flowableZip$ZipSubscriber.done = true;
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
            drain();
        }
    }

    public void subscribe(AbstractC10432b<? extends T>[] bVarArr, int i) {
        FlowableZip$ZipSubscriber<T, R>[] flowableZip$ZipSubscriberArr = this.subscribers;
        for (int i2 = 0; i2 < i && !this.cancelled; i2++) {
            if (this.delayErrors || this.errors.get() == null) {
                bVarArr[i2].subscribe(flowableZip$ZipSubscriberArr[i2]);
            } else {
                return;
            }
        }
    }
}
