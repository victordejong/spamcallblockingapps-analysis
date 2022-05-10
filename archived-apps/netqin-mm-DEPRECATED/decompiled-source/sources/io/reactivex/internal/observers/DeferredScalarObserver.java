package io.reactivex.internal.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/observers/DeferredScalarObserver.class */
public abstract class DeferredScalarObserver<T, R> extends DeferredScalarDisposable<R> implements AbstractC9844r<T> {
    public static final long serialVersionUID = -266195175408988651L;

    /* renamed from: s */
    public AbstractC9861b f38329s;

    public DeferredScalarObserver(AbstractC9844r<? super R> rVar) {
        super(rVar);
    }

    @Override // io.reactivex.internal.observers.DeferredScalarDisposable, p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        super.dispose();
        this.f38329s.dispose();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        T t = this.value;
        if (t != null) {
            this.value = null;
            complete(t);
            return;
        }
        complete();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.value = null;
        error(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38329s, bVar)) {
            this.f38329s = bVar;
            this.actual.onSubscribe(this);
        }
    }
}
