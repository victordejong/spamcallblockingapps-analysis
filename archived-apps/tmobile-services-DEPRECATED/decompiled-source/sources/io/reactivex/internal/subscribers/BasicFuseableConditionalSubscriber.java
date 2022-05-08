package io.reactivex.internal.subscribers;

import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/BasicFuseableConditionalSubscriber.class */
public abstract class BasicFuseableConditionalSubscriber<T, R> implements ConditionalSubscriber<T>, QueueSubscription<R> {

    /* renamed from: f */
    protected final ConditionalSubscriber<? super R> f19343f;

    /* renamed from: g */
    protected Subscription f19344g;

    /* renamed from: h */
    protected QueueSubscription<T> f19345h;

    /* renamed from: i */
    protected boolean f19346i;

    /* renamed from: j */
    protected int f19347j;

    public BasicFuseableConditionalSubscriber(ConditionalSubscriber<? super R> conditionalSubscriber) {
        this.f19343f = conditionalSubscriber;
    }

    /* renamed from: a */
    protected void m3494a() {
    }

    /* renamed from: b */
    protected boolean m3493b() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final void m3492c(Throwable th) {
        Exceptions.m4428b(th);
        this.f19344g.cancel();
        onError(th);
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        this.f19344g.cancel();
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public void clear() {
        this.f19345h.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public final int m3491d(int i) {
        QueueSubscription<T> queueSubscription = this.f19345h;
        if (queueSubscription == null || (i & 4) != 0) {
            return 0;
        }
        int requestFusion = queueSubscription.requestFusion(i);
        if (requestFusion != 0) {
            this.f19347j = requestFusion;
        }
        return requestFusion;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean isEmpty() {
        return this.f19345h.isEmpty();
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final boolean offer(R r) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (!this.f19346i) {
            this.f19346i = true;
            this.f19343f.onComplete();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (this.f19346i) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        this.f19346i = true;
        this.f19343f.onError(th);
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.validate(this.f19344g, subscription)) {
            this.f19344g = subscription;
            if (subscription instanceof QueueSubscription) {
                this.f19345h = (QueueSubscription) subscription;
            }
            if (m3493b()) {
                this.f19343f.onSubscribe(this);
                m3494a();
            }
        }
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
        this.f19344g.request(j);
    }
}
