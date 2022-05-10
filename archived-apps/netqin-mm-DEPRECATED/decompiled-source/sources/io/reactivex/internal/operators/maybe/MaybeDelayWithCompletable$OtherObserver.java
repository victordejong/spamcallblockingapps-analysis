package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.p543b0.p548e.p551c.C9713b;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver.class */
public final class MaybeDelayWithCompletable$OtherObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9647b, AbstractC9861b {
    public static final long serialVersionUID = 703409937383992161L;
    public final AbstractC9836k<? super T> actual;
    public final AbstractC9838m<T> source;

    public MaybeDelayWithCompletable$OtherObserver(AbstractC9836k<? super T> kVar, AbstractC9838m<T> mVar) {
        this.actual = kVar;
        this.source = mVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onComplete() {
        this.source.mo1876a(new C9713b(this, this.actual));
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.setOnce(this, bVar)) {
            this.actual.onSubscribe(this);
        }
    }
}
