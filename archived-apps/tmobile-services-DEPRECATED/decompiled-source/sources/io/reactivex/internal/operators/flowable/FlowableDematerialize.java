package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Notification;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDematerialize.class */
public final class FlowableDematerialize<T, R> extends AbstractFlowableWithUpstream<T, R> {

    /* renamed from: h */
    final Function<? super T, ? extends Notification<R>> f15775h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDematerialize$DematerializeSubscriber.class */
    static final class DematerializeSubscriber<T, R> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: f */
        final Subscriber<? super R> f15776f;

        /* renamed from: g */
        final Function<? super T, ? extends Notification<R>> f15777g;

        /* renamed from: h */
        boolean f15778h;

        /* renamed from: i */
        Subscription f15779i;

        DematerializeSubscriber(Subscriber<? super R> subscriber, Function<? super T, ? extends Notification<R>> function) {
            this.f15776f = subscriber;
            this.f15777g = function;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f15779i.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f15778h) {
                this.f15778h = true;
                this.f15776f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15778h) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f15778h = true;
            this.f15776f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f15778h) {
                try {
                    Object apply = this.f15777g.apply(t);
                    ObjectHelper.m4363e(apply, "The selector returned a null Notification");
                    Notification notification = (Notification) apply;
                    if (notification.m4478g()) {
                        this.f15779i.cancel();
                        onError(notification.m4481d());
                    } else if (notification.m4479f()) {
                        this.f15779i.cancel();
                        onComplete();
                    } else {
                        this.f15776f.onNext((Object) notification.m4480e());
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f15779i.cancel();
                    onError(th);
                }
            } else if (t instanceof Notification) {
                Notification notification2 = (Notification) t;
                if (notification2.m4478g()) {
                    RxJavaPlugins.m3354t(notification2.m4481d());
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15779i, subscription)) {
                this.f15779i = subscription;
                this.f15776f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f15779i.request(j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        this.f15411g.m4493v(new DematerializeSubscriber(subscriber, this.f15775h));
    }
}
