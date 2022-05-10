package io.reactivex.internal.operators.observable;

import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable.class */
public final class ObservableReplay$InnerDisposable<T> extends AtomicInteger implements AbstractC9861b {
    public static final long serialVersionUID = 2728361546769921047L;
    public volatile boolean cancelled;
    public final AbstractC9844r<? super T> child;
    public Object index;
    public final ObservableReplay$ReplayObserver<T> parent;

    public ObservableReplay$InnerDisposable(ObservableReplay$ReplayObserver<T> observableReplay$ReplayObserver, AbstractC9844r<? super T> rVar) {
        this.parent = observableReplay$ReplayObserver;
        this.child = rVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (!this.cancelled) {
            this.cancelled = true;
            this.parent.remove(this);
        }
    }

    public <U> U index() {
        return (U) this.index;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled;
    }
}
