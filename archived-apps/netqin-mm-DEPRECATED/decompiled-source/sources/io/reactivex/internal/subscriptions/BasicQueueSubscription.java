package io.reactivex.internal.subscriptions;

import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.p543b0.p546c.AbstractC9658g;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscriptions/BasicQueueSubscription.class */
public abstract class BasicQueueSubscription<T> extends AtomicLong implements AbstractC9658g<T> {
    public static final long serialVersionUID = -6671519529404341862L;

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public final boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public final boolean offer(T t, T t2) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
