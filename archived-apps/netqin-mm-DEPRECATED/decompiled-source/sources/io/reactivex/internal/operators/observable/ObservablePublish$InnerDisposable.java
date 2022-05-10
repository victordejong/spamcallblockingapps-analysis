package io.reactivex.internal.operators.observable;

import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p548e.p552d.C9752n;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable.class */
public final class ObservablePublish$InnerDisposable<T> extends AtomicReference<Object> implements AbstractC9861b {
    public static final long serialVersionUID = -1100270633763673112L;
    public final AbstractC9844r<? super T> child;

    public ObservablePublish$InnerDisposable(AbstractC9844r<? super T> rVar) {
        this.child = rVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        Object andSet = getAndSet(this);
        if (andSet != null && andSet != this) {
            ((C9752n) andSet).m2071a(this);
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get() == this;
    }

    public void setParent(C9752n<T> nVar) {
        if (!compareAndSet(null, nVar)) {
            nVar.m2071a(this);
        }
    }
}
