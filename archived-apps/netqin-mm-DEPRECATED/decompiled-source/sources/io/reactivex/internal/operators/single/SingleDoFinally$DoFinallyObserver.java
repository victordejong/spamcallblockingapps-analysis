package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p542a0.AbstractC9638a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver.class */
public final class SingleDoFinally$DoFinallyObserver<T> extends AtomicInteger implements AbstractC9851u<T>, AbstractC9861b {
    public static final long serialVersionUID = 4109457741734051389L;
    public final AbstractC9851u<? super T> actual;

    /* renamed from: d */
    public AbstractC9861b f38545d;
    public final AbstractC9638a onFinally;

    public SingleDoFinally$DoFinallyObserver(AbstractC9851u<? super T> uVar, AbstractC9638a aVar) {
        this.actual = uVar;
        this.onFinally = aVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.f38545d.dispose();
        runFinally();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.f38545d.isDisposed();
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onError(Throwable th) {
        this.actual.onError(th);
        runFinally();
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38545d, bVar)) {
            this.f38545d = bVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSuccess(T t) {
        this.actual.onSuccess(t);
        runFinally();
    }

    public void runFinally() {
        if (compareAndSet(0, 1)) {
            try {
                this.onFinally.run();
            } catch (Throwable th) {
                C9863a.m1822b(th);
                C9815a.m1923b(th);
            }
        }
    }
}
