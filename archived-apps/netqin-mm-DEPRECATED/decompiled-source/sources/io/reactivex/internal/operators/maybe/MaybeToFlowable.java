package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeToFlowable.class */
public final class MaybeToFlowable<T> extends AbstractC9814e<T> {

    /* renamed from: b */
    public final AbstractC9838m<T> f38476b;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeToFlowable$MaybeToFlowableSubscriber.class */
    public static final class MaybeToFlowableSubscriber<T> extends DeferredScalarSubscription<T> implements AbstractC9836k<T> {
        public static final long serialVersionUID = 7603343402964826922L;

        /* renamed from: d */
        public AbstractC9861b f38477d;

        public MaybeToFlowableSubscriber(AbstractC10433c<? super T> cVar) {
            super(cVar);
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, p611j.p612a.AbstractC10434d
        public void cancel() {
            super.cancel();
            this.f38477d.dispose();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onComplete() {
            this.actual.onComplete();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            this.actual.onError(th);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.validate(this.f38477d, bVar)) {
                this.f38477d = bVar;
                this.actual.onSubscribe(this);
            }
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(T t) {
            complete(t);
        }
    }

    public MaybeToFlowable(AbstractC9838m<T> mVar) {
        this.f38476b = mVar;
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super T> cVar) {
        this.f38476b.mo1876a(new MaybeToFlowableSubscriber(cVar));
    }
}
