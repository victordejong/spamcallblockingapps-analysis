package io.reactivex.internal.operators.completable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableUsing$UsingObserver.class */
public final class CompletableUsing$UsingObserver<R> extends AtomicReference<Object> implements AbstractC9647b, AbstractC9861b {
    public static final long serialVersionUID = -674404550052917487L;
    public final AbstractC9647b actual;

    /* renamed from: d */
    public AbstractC9861b f38336d;
    public final AbstractC9644g<? super R> disposer;
    public final boolean eager;

    public CompletableUsing$UsingObserver(AbstractC9647b bVar, R r, AbstractC9644g<? super R> gVar, boolean z) {
        super(r);
        this.actual = bVar;
        this.disposer = gVar;
        this.eager = z;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.f38336d.dispose();
        this.f38336d = DisposableHelper.DISPOSED;
        disposeResourceAfter();
    }

    public void disposeResourceAfter() {
        Object andSet = getAndSet(this);
        if (andSet != this) {
            try {
                this.disposer.accept(andSet);
            } catch (Throwable th) {
                C9863a.m1822b(th);
                C9815a.m1923b(th);
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.f38336d.isDisposed();
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onComplete() {
        this.f38336d = DisposableHelper.DISPOSED;
        if (this.eager) {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.disposer.accept(andSet);
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    this.actual.onError(th);
                    return;
                }
            } else {
                return;
            }
        }
        this.actual.onComplete();
        if (!this.eager) {
            disposeResourceAfter();
        }
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onError(Throwable th) {
        this.f38336d = DisposableHelper.DISPOSED;
        Throwable th2 = th;
        if (this.eager) {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.disposer.accept(andSet);
                    th2 = th;
                } catch (Throwable th3) {
                    C9863a.m1822b(th3);
                    th2 = new CompositeException(th, th3);
                }
            } else {
                return;
            }
        }
        this.actual.onError(th2);
        if (!this.eager) {
            disposeResourceAfter();
        }
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38336d, bVar)) {
            this.f38336d = bVar;
            this.actual.onSubscribe(this);
        }
    }
}
