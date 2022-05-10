package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableUsing$UsingObserver.class */
public final class ObservableUsing$UsingObserver<T, D> extends AtomicBoolean implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = 5904473792286235046L;
    public final AbstractC9844r<? super T> actual;
    public final AbstractC9644g<? super D> disposer;
    public final boolean eager;
    public final D resource;

    /* renamed from: s */
    public AbstractC9861b f38533s;

    public ObservableUsing$UsingObserver(AbstractC9844r<? super T> rVar, D d, AbstractC9644g<? super D> gVar, boolean z) {
        this.actual = rVar;
        this.resource = d;
        this.disposer = gVar;
        this.eager = z;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        disposeAfter();
        this.f38533s.dispose();
    }

    public void disposeAfter() {
        if (compareAndSet(false, true)) {
            try {
                this.disposer.accept((D) this.resource);
            } catch (Throwable th) {
                C9863a.m1822b(th);
                C9815a.m1923b(th);
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (this.eager) {
            if (compareAndSet(false, true)) {
                try {
                    this.disposer.accept((D) this.resource);
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    this.actual.onError(th);
                    return;
                }
            }
            this.f38533s.dispose();
            this.actual.onComplete();
            return;
        }
        this.actual.onComplete();
        this.f38533s.dispose();
        disposeAfter();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (this.eager) {
            Throwable th2 = th;
            if (compareAndSet(false, true)) {
                try {
                    this.disposer.accept((D) this.resource);
                    th2 = th;
                } catch (Throwable th3) {
                    C9863a.m1822b(th3);
                    th2 = new CompositeException(th, th3);
                }
            }
            this.f38533s.dispose();
            this.actual.onError(th2);
            return;
        }
        this.actual.onError(th);
        this.f38533s.dispose();
        disposeAfter();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38533s, bVar)) {
            this.f38533s = bVar;
            this.actual.onSubscribe(this);
        }
    }
}
