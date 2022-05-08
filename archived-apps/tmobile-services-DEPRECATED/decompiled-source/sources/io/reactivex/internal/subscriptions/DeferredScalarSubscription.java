package io.reactivex.internal.subscriptions;

import io.reactivex.annotations.Nullable;
import org.reactivestreams.Subscriber;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscriptions/DeferredScalarSubscription.class */
public class DeferredScalarSubscription<T> extends BasicIntQueueSubscription<T> {
    private static final long serialVersionUID = -2151279923272604993L;

    /* renamed from: f */
    protected final Subscriber<? super T> f19405f;

    /* renamed from: g */
    protected T f19406g;

    public DeferredScalarSubscription(Subscriber<? super T> subscriber) {
        this.f19405f = subscriber;
    }

    public void cancel() {
        set(4);
        this.f19406g = null;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final void clear() {
        lazySet(32);
        this.f19406g = null;
    }

    /* renamed from: d */
    public final void m3470d(T t) {
        int i = get();
        while (i != 8) {
            if ((i & (-3)) == 0) {
                if (i == 2) {
                    lazySet(3);
                    Subscriber<? super T> subscriber = this.f19405f;
                    subscriber.onNext(t);
                    if (get() != 4) {
                        subscriber.onComplete();
                        return;
                    }
                    return;
                }
                this.f19406g = t;
                if (!compareAndSet(0, 1)) {
                    int i2 = get();
                    i = i2;
                    if (i2 == 4) {
                        this.f19406g = null;
                        return;
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
        this.f19406g = t;
        lazySet(16);
        Subscriber<? super T> subscriber2 = this.f19405f;
        subscriber2.onNext(t);
        if (get() != 4) {
            subscriber2.onComplete();
        }
    }

    /* renamed from: f */
    public final boolean m3469f() {
        return get() == 4;
    }

    /* renamed from: i */
    public final boolean m3468i() {
        return getAndSet(4) != 4;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    @Nullable
    public final T poll() {
        if (get() != 16) {
            return null;
        }
        lazySet(32);
        T t = this.f19406g;
        this.f19406g = null;
        return t;
    }

    @Override // org.reactivestreams.Subscription
    public final void request(long j) {
        T t;
        if (SubscriptionHelper.validate(j)) {
            do {
                int i = get();
                if ((i & (-2)) == 0) {
                    if (i == 1) {
                        if (compareAndSet(1, 3) && (t = this.f19406g) != null) {
                            this.f19406g = null;
                            Subscriber<? super T> subscriber = this.f19405f;
                            subscriber.onNext(t);
                            if (get() != 4) {
                                subscriber.onComplete();
                                return;
                            }
                            return;
                        }
                        return;
                    }
                } else {
                    return;
                }
            } while (!compareAndSet(0, 2));
        }
    }

    @Override // io.reactivex.internal.fuseable.QueueFuseable
    public final int requestFusion(int i) {
        if ((i & 2) == 0) {
            return 0;
        }
        lazySet(8);
        return 2;
    }
}
