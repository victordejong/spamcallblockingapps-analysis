package io.reactivex.internal.observers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9638a;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p542a0.AbstractC9646i;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/observers/ForEachWhileObserver.class */
public final class ForEachWhileObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = -4403180040475402120L;
    public boolean done;
    public final AbstractC9638a onComplete;
    public final AbstractC9644g<? super Throwable> onError;
    public final AbstractC9646i<? super T> onNext;

    public ForEachWhileObserver(AbstractC9646i<? super T> iVar, AbstractC9644g<? super Throwable> gVar, AbstractC9638a aVar) {
        this.onNext = iVar;
        this.onError = gVar;
        this.onComplete = aVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            try {
                this.onComplete.run();
            } catch (Throwable th) {
                C9863a.m1822b(th);
                C9815a.m1923b(th);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (this.done) {
            C9815a.m1923b(th);
            return;
        }
        this.done = true;
        try {
            this.onError.accept(th);
        } catch (Throwable th2) {
            C9863a.m1822b(th2);
            C9815a.m1923b(new CompositeException(th, th2));
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        if (!this.done) {
            try {
                if (!this.onNext.test(t)) {
                    dispose();
                    onComplete();
                }
            } catch (Throwable th) {
                C9863a.m1822b(th);
                dispose();
                onError(th);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }
}
