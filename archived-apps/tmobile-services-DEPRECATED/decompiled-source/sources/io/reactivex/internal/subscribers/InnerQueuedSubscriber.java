package io.reactivex.internal.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.QueueDrainHelper;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/InnerQueuedSubscriber.class */
public final class InnerQueuedSubscriber<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T>, Subscription {
    private static final long serialVersionUID = 22876611072430776L;

    /* renamed from: f */
    final InnerQueuedSubscriberSupport<T> f19373f;

    /* renamed from: g */
    final int f19374g;

    /* renamed from: h */
    final int f19375h;

    /* renamed from: i */
    volatile SimpleQueue<T> f19376i;

    /* renamed from: j */
    volatile boolean f19377j;

    /* renamed from: k */
    long f19378k;

    /* renamed from: l */
    int f19379l;

    public InnerQueuedSubscriber(InnerQueuedSubscriberSupport<T> innerQueuedSubscriberSupport, int i) {
        this.f19373f = innerQueuedSubscriberSupport;
        this.f19374g = i;
        this.f19375h = i - (i >> 2);
    }

    /* renamed from: a */
    public boolean m3486a() {
        return this.f19377j;
    }

    /* renamed from: b */
    public SimpleQueue<T> m3485b() {
        return this.f19376i;
    }

    /* renamed from: c */
    public void m3484c() {
        if (this.f19379l != 1) {
            long j = this.f19378k + 1;
            if (j == this.f19375h) {
                this.f19378k = 0L;
                get().request(j);
                return;
            }
            this.f19378k = j;
        }
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    /* renamed from: d */
    public void m3483d() {
        this.f19377j = true;
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        this.f19373f.mo3482a(this);
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        this.f19373f.mo3479d(this, th);
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (this.f19379l == 0) {
            this.f19373f.mo3480c(this, t);
        } else {
            this.f19373f.mo3481b();
        }
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.setOnce(this, subscription)) {
            if (subscription instanceof QueueSubscription) {
                QueueSubscription queueSubscription = (QueueSubscription) subscription;
                int requestFusion = queueSubscription.requestFusion(3);
                if (requestFusion == 1) {
                    this.f19379l = requestFusion;
                    this.f19376i = queueSubscription;
                    this.f19377j = true;
                    this.f19373f.mo3482a(this);
                    return;
                } else if (requestFusion == 2) {
                    this.f19379l = requestFusion;
                    this.f19376i = queueSubscription;
                    QueueDrainHelper.m3396j(subscription, this.f19374g);
                    return;
                }
            }
            this.f19376i = QueueDrainHelper.m3403c(this.f19374g);
            QueueDrainHelper.m3396j(subscription, this.f19374g);
        }
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
        if (this.f19379l != 1) {
            long j2 = this.f19378k + j;
            if (j2 >= this.f19375h) {
                this.f19378k = 0L;
                get().request(j2);
                return;
            }
            this.f19378k = j2;
        }
    }
}
