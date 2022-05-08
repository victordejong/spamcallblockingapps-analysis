package io.reactivex.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.EndConsumerHelper;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subscribers/DisposableSubscriber.class */
public abstract class DisposableSubscriber<T> implements FlowableSubscriber<T>, Disposable {

    /* renamed from: f */
    final AtomicReference<Subscription> f19784f = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m3174a() {
        dispose();
    }

    /* renamed from: b */
    protected void m3173b() {
        this.f19784f.get().request(Long.MAX_VALUE);
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        SubscriptionHelper.cancel(this.f19784f);
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f19784f.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (EndConsumerHelper.m3441d(this.f19784f, subscription, getClass())) {
            m3173b();
        }
    }
}
