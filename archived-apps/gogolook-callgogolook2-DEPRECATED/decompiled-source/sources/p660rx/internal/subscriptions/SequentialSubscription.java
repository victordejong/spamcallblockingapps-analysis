package p660rx.internal.subscriptions;

import java.util.concurrent.atomic.AtomicReference;
import p660rx.Subscription;
/* renamed from: rx.internal.subscriptions.SequentialSubscription */
/* loaded from: classes3-dex2jar.jar:rx/internal/subscriptions/SequentialSubscription.class */
public final class SequentialSubscription extends AtomicReference<Subscription> implements Subscription {
    public SequentialSubscription() {
    }

    public SequentialSubscription(Subscription subscription) {
        lazySet(subscription);
    }

    @Override // p660rx.Subscription
    public boolean isUnsubscribed() {
        return get() == Unsubscribed.INSTANCE;
    }

    public boolean replace(Subscription subscription) {
        Subscription subscription2;
        do {
            subscription2 = get();
            if (subscription2 == Unsubscribed.INSTANCE) {
                if (subscription == null) {
                    return false;
                }
                subscription.unsubscribe();
                return false;
            }
        } while (!compareAndSet(subscription2, subscription));
        return true;
    }

    @Override // p660rx.Subscription
    public void unsubscribe() {
        Subscription andSet;
        Subscription subscription = get();
        Unsubscribed unsubscribed = Unsubscribed.INSTANCE;
        if (subscription != unsubscribed && (andSet = getAndSet(unsubscribed)) != null && andSet != Unsubscribed.INSTANCE) {
            andSet.unsubscribe();
        }
    }

    public boolean update(Subscription subscription) {
        Subscription subscription2;
        do {
            subscription2 = get();
            if (subscription2 == Unsubscribed.INSTANCE) {
                if (subscription == null) {
                    return false;
                }
                subscription.unsubscribe();
                return false;
            }
        } while (!compareAndSet(subscription2, subscription));
        if (subscription2 == null) {
            return true;
        }
        subscription2.unsubscribe();
        return true;
    }
}
