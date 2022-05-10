package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/BlockingSubscriber.class */
public final class BlockingSubscriber<T> extends AtomicReference<AbstractC10434d> implements AbstractC9829h<T>, AbstractC10434d {
    public static final Object TERMINATED = new Object();
    public static final long serialVersionUID = -4875965440900746268L;
    public final Queue<Object> queue;

    public BlockingSubscriber(Queue<Object> queue) {
        this.queue = queue;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (SubscriptionHelper.cancel(this)) {
            this.queue.offer(TERMINATED);
        }
    }

    public boolean isCancelled() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.queue.offer(NotificationLite.complete());
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.queue.offer(NotificationLite.error(th));
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.queue.offer(NotificationLite.next(t));
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            this.queue.offer(NotificationLite.subscription(this));
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        get().request(j);
    }
}
