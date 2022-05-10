package io.reactivex.internal.observers;

import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.p543b0.p546c.AbstractC9656e;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/observers/BasicIntQueueDisposable.class */
public abstract class BasicIntQueueDisposable<T> extends AtomicInteger implements AbstractC9656e<T> {
    public static final long serialVersionUID = -1001730202384742097L;

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public final boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called");
    }

    public final boolean offer(T t, T t2) {
        throw new UnsupportedOperationException("Should not be called");
    }
}
