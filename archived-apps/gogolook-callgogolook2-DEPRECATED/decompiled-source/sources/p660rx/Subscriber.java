package p660rx;

import p660rx.internal.util.SubscriptionList;
/* renamed from: rx.Subscriber */
/* loaded from: classes3-dex2jar.jar:rx/Subscriber.class */
public abstract class Subscriber<T> implements Observer<T>, Subscription {
    public Producer producer;
    public long requested;
    public final Subscriber<?> subscriber;
    public final SubscriptionList subscriptions;

    public Subscriber() {
        this(null, false);
    }

    public Subscriber(Subscriber<?> subscriber) {
        this(subscriber, true);
    }

    public Subscriber(Subscriber<?> subscriber, boolean z) {
        this.requested = Long.MIN_VALUE;
        this.subscriber = subscriber;
        this.subscriptions = (!z || subscriber == null) ? new SubscriptionList() : subscriber.subscriptions;
    }

    public final void add(Subscription subscription) {
        this.subscriptions.add(subscription);
    }

    public final void addToRequested(long j) {
        long j2 = this.requested;
        if (j2 == Long.MIN_VALUE) {
            this.requested = j;
            return;
        }
        long j3 = j2 + j;
        if (j3 < 0) {
            this.requested = Long.MAX_VALUE;
        } else {
            this.requested = j3;
        }
    }

    @Override // p660rx.Subscription
    public final boolean isUnsubscribed() {
        return this.subscriptions.isUnsubscribed();
    }

    public void onStart() {
    }

    public final void request(long j) {
        if (j >= 0) {
            synchronized (this) {
                if (this.producer != null) {
                    this.producer.request(j);
                    return;
                }
                addToRequested(j);
                return;
            }
        }
        throw new IllegalArgumentException("number requested cannot be negative: " + j);
    }

    public void setProducer(Producer producer) {
        long j;
        boolean z;
        synchronized (this) {
            j = this.requested;
            this.producer = producer;
            z = this.subscriber != null && j == Long.MIN_VALUE;
        }
        if (z) {
            this.subscriber.setProducer(this.producer);
        } else if (j == Long.MIN_VALUE) {
            this.producer.request(Long.MAX_VALUE);
        } else {
            this.producer.request(j);
        }
    }

    @Override // p660rx.Subscription
    public final void unsubscribe() {
        this.subscriptions.unsubscribe();
    }
}
