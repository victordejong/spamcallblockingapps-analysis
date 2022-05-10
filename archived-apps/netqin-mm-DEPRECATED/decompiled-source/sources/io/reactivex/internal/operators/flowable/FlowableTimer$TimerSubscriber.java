package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber.class */
public final class FlowableTimer$TimerSubscriber extends AtomicReference<AbstractC9861b> implements AbstractC10434d, Runnable {
    public static final long serialVersionUID = -2809475196591179431L;
    public final AbstractC10433c<? super Long> actual;
    public volatile boolean requested;

    public FlowableTimer$TimerSubscriber(AbstractC10433c<? super Long> cVar) {
        this.actual = cVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        DisposableHelper.dispose(this);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            this.requested = true;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (get() == DisposableHelper.DISPOSED) {
            return;
        }
        if (this.requested) {
            this.actual.onNext(0L);
            lazySet(EmptyDisposable.INSTANCE);
            this.actual.onComplete();
            return;
        }
        lazySet(EmptyDisposable.INSTANCE);
        this.actual.onError(new MissingBackpressureException("Can't deliver value due to lack of requests"));
    }

    public void setResource(AbstractC9861b bVar) {
        DisposableHelper.trySet(this, bVar);
    }
}
