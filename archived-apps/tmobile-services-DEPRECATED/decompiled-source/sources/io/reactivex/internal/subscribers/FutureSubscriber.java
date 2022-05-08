package io.reactivex.internal.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BlockingHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/FutureSubscriber.class */
public final class FutureSubscriber<T> extends CountDownLatch implements FlowableSubscriber<T>, Future<T>, Subscription {

    /* renamed from: f */
    T f19370f;

    /* renamed from: g */
    Throwable f19371g;

    /* renamed from: h */
    final AtomicReference<Subscription> f19372h = new AtomicReference<>();

    public FutureSubscriber() {
        super(1);
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        Subscription subscription;
        SubscriptionHelper subscriptionHelper;
        do {
            subscription = this.f19372h.get();
            if (subscription == this || subscription == (subscriptionHelper = SubscriptionHelper.CANCELLED)) {
                return false;
            }
        } while (!this.f19372h.compareAndSet(subscription, subscriptionHelper));
        if (subscription != null) {
            subscription.cancel();
        }
        countDown();
        return true;
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        if (getCount() != 0) {
            BlockingHelper.m3447b();
            await();
        }
        if (!isCancelled()) {
            Throwable th = this.f19371g;
            if (th == null) {
                return this.f19370f;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        if (getCount() != 0) {
            BlockingHelper.m3447b();
            if (!await(j, timeUnit)) {
                throw new TimeoutException(ExceptionHelper.m3435d(j, timeUnit));
            }
        }
        if (!isCancelled()) {
            Throwable th = this.f19371g;
            if (th == null) {
                return this.f19370f;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f19372h.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return getCount() == 0;
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        Subscription subscription;
        if (this.f19370f == null) {
            onError(new NoSuchElementException("The source is empty"));
            return;
        }
        do {
            subscription = this.f19372h.get();
            if (subscription == this || subscription == SubscriptionHelper.CANCELLED) {
                return;
            }
        } while (!this.f19372h.compareAndSet(subscription, this));
        countDown();
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        Subscription subscription;
        do {
            subscription = this.f19372h.get();
            if (subscription == this || subscription == SubscriptionHelper.CANCELLED) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f19371g = th;
        } while (!this.f19372h.compareAndSet(subscription, this));
        countDown();
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (this.f19370f != null) {
            this.f19372h.get().cancel();
            onError(new IndexOutOfBoundsException("More than one element received"));
            return;
        }
        this.f19370f = t;
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        SubscriptionHelper.setOnce(this.f19372h, subscription, Long.MAX_VALUE);
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
    }
}
