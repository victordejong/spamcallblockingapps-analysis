package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatWithMaybe$ConcatWithSubscriber.class */
public final class FlowableConcatWithMaybe$ConcatWithSubscriber<T> extends SinglePostCompleteSubscriber<T, T> implements AbstractC9836k<T> {
    public static final long serialVersionUID = -7346385463600070225L;
    public boolean inMaybe;
    public AbstractC9838m<? extends T> other;
    public final AtomicReference<AbstractC9861b> otherDisposable = new AtomicReference<>();

    public FlowableConcatWithMaybe$ConcatWithSubscriber(AbstractC10433c<? super T> cVar, AbstractC9838m<? extends T> mVar) {
        super(cVar);
        this.other = mVar;
    }

    @Override // io.reactivex.internal.subscribers.SinglePostCompleteSubscriber, p611j.p612a.AbstractC10434d
    public void cancel() {
        super.cancel();
        DisposableHelper.dispose(this.otherDisposable);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (this.inMaybe) {
            this.actual.onComplete();
            return;
        }
        this.inMaybe = true;
        this.f38568s = SubscriptionHelper.CANCELLED;
        AbstractC9838m<? extends T> mVar = this.other;
        this.other = null;
        mVar.mo1876a(this);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.produced++;
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this.otherDisposable, bVar);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(T t) {
        complete(t);
    }
}
