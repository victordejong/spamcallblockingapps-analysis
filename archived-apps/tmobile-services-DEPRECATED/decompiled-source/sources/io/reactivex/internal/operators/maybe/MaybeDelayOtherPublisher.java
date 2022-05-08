package io.reactivex.internal.operators.maybe;

import io.reactivex.FlowableSubscriber;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher.class */
public final class MaybeDelayOtherPublisher<T, U> extends AbstractMaybeWithUpstream<T, T> {

    /* renamed from: g */
    final Publisher<U> f17021g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver.class */
    static final class DelayMaybeObserver<T, U> implements MaybeObserver<T>, Disposable {

        /* renamed from: f */
        final OtherSubscriber<T> f17022f;

        /* renamed from: g */
        final Publisher<U> f17023g;

        /* renamed from: h */
        Disposable f17024h;

        DelayMaybeObserver(MaybeObserver<? super T> maybeObserver, Publisher<U> publisher) {
            this.f17022f = new OtherSubscriber<>(maybeObserver);
            this.f17023g = publisher;
        }

        /* renamed from: a */
        void m4002a() {
            this.f17023g.mo5c(this.f17022f);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17024h.dispose();
            this.f17024h = DisposableHelper.DISPOSED;
            SubscriptionHelper.cancel(this.f17022f);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17022f.get() == SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17024h = DisposableHelper.DISPOSED;
            m4002a();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17024h = DisposableHelper.DISPOSED;
            this.f17022f.f17027h = th;
            m4002a();
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17024h, disposable)) {
                this.f17024h = disposable;
                this.f17022f.f17025f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17024h = DisposableHelper.DISPOSED;
            this.f17022f.f17026g = t;
            m4002a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$OtherSubscriber.class */
    public static final class OtherSubscriber<T> extends AtomicReference<Subscription> implements FlowableSubscriber<Object> {
        private static final long serialVersionUID = -1215060610805418006L;

        /* renamed from: f */
        final MaybeObserver<? super T> f17025f;

        /* renamed from: g */
        T f17026g;

        /* renamed from: h */
        Throwable f17027h;

        OtherSubscriber(MaybeObserver<? super T> maybeObserver) {
            this.f17025f = maybeObserver;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Throwable th = this.f17027h;
            if (th != null) {
                this.f17025f.onError(th);
                return;
            }
            T t = this.f17026g;
            if (t != null) {
                this.f17025f.onSuccess(t);
            } else {
                this.f17025f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            Throwable th2 = this.f17027h;
            if (th2 == null) {
                this.f17025f.onError(th);
            } else {
                this.f17025f.onError(new CompositeException(th2, th));
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            Subscription subscription = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (subscription != subscriptionHelper) {
                lazySet(subscriptionHelper);
                subscription.cancel();
                onComplete();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.setOnce(this, subscription, Long.MAX_VALUE);
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f16960f.mo4485b(new DelayMaybeObserver(maybeObserver, this.f17021g));
    }
}
