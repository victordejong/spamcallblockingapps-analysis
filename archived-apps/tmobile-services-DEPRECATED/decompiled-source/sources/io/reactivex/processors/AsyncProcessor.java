package io.reactivex.processors;

import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/processors/AsyncProcessor.class */
public final class AsyncProcessor<T> extends FlowableProcessor<T> {

    /* renamed from: j */
    static final AsyncSubscription[] f19493j = new AsyncSubscription[0];

    /* renamed from: k */
    static final AsyncSubscription[] f19494k = new AsyncSubscription[0];

    /* renamed from: g */
    final AtomicReference<AsyncSubscription<T>[]> f19495g = new AtomicReference<>(f19493j);

    /* renamed from: h */
    Throwable f19496h;

    /* renamed from: i */
    T f19497i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/AsyncProcessor$AsyncSubscription.class */
    public static final class AsyncSubscription<T> extends DeferredScalarSubscription<T> {
        private static final long serialVersionUID = 5629876084736248016L;

        /* renamed from: h */
        final AsyncProcessor<T> f19498h;

        AsyncSubscription(Subscriber<? super T> subscriber, AsyncProcessor<T> asyncProcessor) {
            super(subscriber);
            this.f19498h = asyncProcessor;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
        public void cancel() {
            if (super.m3468i()) {
                this.f19498h.m3346E(this);
            }
        }

        void onComplete() {
            if (!m3469f()) {
                this.f19405f.onComplete();
            }
        }

        void onError(Throwable th) {
            if (m3469f()) {
                RxJavaPlugins.m3354t(th);
            } else {
                this.f19405f.onError(th);
            }
        }
    }

    AsyncProcessor() {
    }

    /* renamed from: D */
    boolean m3347D(AsyncSubscription<T> asyncSubscription) {
        AsyncSubscription<T>[] asyncSubscriptionArr;
        AsyncSubscription<T>[] asyncSubscriptionArr2;
        do {
            asyncSubscriptionArr = this.f19495g.get();
            if (asyncSubscriptionArr == f19494k) {
                return false;
            }
            int length = asyncSubscriptionArr.length;
            asyncSubscriptionArr2 = new AsyncSubscription[length + 1];
            System.arraycopy(asyncSubscriptionArr, 0, asyncSubscriptionArr2, 0, length);
            asyncSubscriptionArr2[length] = asyncSubscription;
        } while (!this.f19495g.compareAndSet(asyncSubscriptionArr, asyncSubscriptionArr2));
        return true;
    }

    /* renamed from: E */
    void m3346E(AsyncSubscription<T> asyncSubscription) {
        AsyncSubscription<T>[] asyncSubscriptionArr;
        AsyncSubscription<T>[] asyncSubscriptionArr2;
        do {
            asyncSubscriptionArr = this.f19495g.get();
            int length = asyncSubscriptionArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (asyncSubscriptionArr[i2] == asyncSubscription) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        asyncSubscriptionArr2 = f19493j;
                    } else {
                        asyncSubscriptionArr2 = new AsyncSubscription[length - 1];
                        System.arraycopy(asyncSubscriptionArr, 0, asyncSubscriptionArr2, 0, i);
                        System.arraycopy(asyncSubscriptionArr, i + 1, asyncSubscriptionArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f19495g.compareAndSet(asyncSubscriptionArr, asyncSubscriptionArr2));
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        AsyncSubscription<T>[] asyncSubscriptionArr = this.f19495g.get();
        AsyncSubscription<T>[] asyncSubscriptionArr2 = f19494k;
        if (asyncSubscriptionArr != asyncSubscriptionArr2) {
            T t = this.f19497i;
            AsyncSubscription<T>[] andSet = this.f19495g.getAndSet(asyncSubscriptionArr2);
            if (t == null) {
                for (AsyncSubscription<T> asyncSubscription : andSet) {
                    asyncSubscription.onComplete();
                }
                return;
            }
            for (AsyncSubscription<T> asyncSubscription2 : andSet) {
                asyncSubscription2.m3470d(t);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        ObjectHelper.m4363e(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        AsyncSubscription<T>[] asyncSubscriptionArr = this.f19495g.get();
        AsyncSubscription<T>[] asyncSubscriptionArr2 = f19494k;
        if (asyncSubscriptionArr == asyncSubscriptionArr2) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        this.f19497i = null;
        this.f19496h = th;
        for (AsyncSubscription<T> asyncSubscription : this.f19495g.getAndSet(asyncSubscriptionArr2)) {
            asyncSubscription.onError(th);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        ObjectHelper.m4363e(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f19495g.get() != f19494k) {
            this.f19497i = t;
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (this.f19495g.get() == f19494k) {
            subscription.cancel();
        } else {
            subscription.request(Long.MAX_VALUE);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        AsyncSubscription<T> asyncSubscription = new AsyncSubscription<>(subscriber, this);
        subscriber.onSubscribe(asyncSubscription);
        if (!m3347D(asyncSubscription)) {
            Throwable th = this.f19496h;
            if (th != null) {
                subscriber.onError(th);
                return;
            }
            T t = this.f19497i;
            if (t != null) {
                asyncSubscription.m3470d(t);
            } else {
                asyncSubscription.onComplete();
            }
        } else if (asyncSubscription.m3469f()) {
            m3346E(asyncSubscription);
        }
    }
}
