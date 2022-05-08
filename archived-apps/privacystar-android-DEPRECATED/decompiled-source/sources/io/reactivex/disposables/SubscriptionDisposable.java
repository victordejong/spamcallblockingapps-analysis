package io.reactivex.disposables;

import io.reactivex.annotations.NonNull;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/disposables/SubscriptionDisposable.class */
final class SubscriptionDisposable extends ReferenceDisposable<Subscription> {
    private static final long serialVersionUID = -707001650852963139L;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SubscriptionDisposable(Subscription subscription) {
        super(subscription);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onDisposed(@NonNull Subscription subscription) {
        subscription.cancel();
    }
}
