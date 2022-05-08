package io.reactivex.internal.operators.single;

import io.reactivex.Flowable;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import org.reactivestreams.Subscriber;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleToFlowable.class */
public final class SingleToFlowable<T> extends Flowable<T> {

    /* renamed from: g */
    final SingleSource<? extends T> f19176g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleToFlowable$SingleToFlowableObserver.class */
    static final class SingleToFlowableObserver<T> extends DeferredScalarSubscription<T> implements SingleObserver<T> {
        private static final long serialVersionUID = 187782011903685568L;

        /* renamed from: h */
        Disposable f19177h;

        SingleToFlowableObserver(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.f19177h.dispose();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19405f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f19177h, disposable)) {
                this.f19177h = disposable;
                this.f19405f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            m3470d(t);
        }
    }

    public SingleToFlowable(SingleSource<? extends T> singleSource) {
        this.f19176g = singleSource;
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        this.f19176g.mo4457b(new SingleToFlowableObserver(subscriber));
    }
}
