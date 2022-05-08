package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.FuseToFlowable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSingleSingle.class */
public final class FlowableSingleSingle<T> extends Single<T> implements FuseToFlowable<T> {

    /* renamed from: f */
    final Flowable<T> f16543f;

    /* renamed from: g */
    final T f16544g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSingleSingle$SingleElementSubscriber.class */
    static final class SingleElementSubscriber<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super T> f16545f;

        /* renamed from: g */
        final T f16546g;

        /* renamed from: h */
        Subscription f16547h;

        /* renamed from: i */
        boolean f16548i;

        /* renamed from: j */
        T f16549j;

        SingleElementSubscriber(SingleObserver<? super T> singleObserver, T t) {
            this.f16545f = singleObserver;
            this.f16546g = t;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f16547h.cancel();
            this.f16547h = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f16547h == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16548i) {
                this.f16548i = true;
                this.f16547h = SubscriptionHelper.CANCELLED;
                T t = this.f16549j;
                this.f16549j = null;
                T t2 = t;
                if (t == null) {
                    t2 = this.f16546g;
                }
                if (t2 != null) {
                    this.f16545f.onSuccess(t2);
                } else {
                    this.f16545f.onError(new NoSuchElementException());
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16548i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16548i = true;
            this.f16547h = SubscriptionHelper.CANCELLED;
            this.f16545f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16548i) {
                if (this.f16549j != null) {
                    this.f16548i = true;
                    this.f16547h.cancel();
                    this.f16547h = SubscriptionHelper.CANCELLED;
                    this.f16545f.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                    return;
                }
                this.f16549j = t;
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16547h, subscription)) {
                this.f16547h = subscription;
                this.f16545f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f16543f.m4493v(new SingleElementSubscriber(singleObserver, this.f16544g));
    }
}
