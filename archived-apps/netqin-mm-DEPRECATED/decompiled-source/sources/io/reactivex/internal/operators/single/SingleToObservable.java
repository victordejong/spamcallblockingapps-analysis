package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.DeferredScalarDisposable;
import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.AbstractC9852v;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleToObservable.class */
public final class SingleToObservable<T> extends AbstractC9840o<T> {

    /* renamed from: a */
    public final AbstractC9852v<? extends T> f38557a;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleToObservable$SingleToObservableObserver.class */
    public static final class SingleToObservableObserver<T> extends DeferredScalarDisposable<T> implements AbstractC9851u<T> {
        public static final long serialVersionUID = 3786543492451018833L;

        /* renamed from: d */
        public AbstractC9861b f38558d;

        public SingleToObservableObserver(AbstractC9844r<? super T> rVar) {
            super(rVar);
        }

        @Override // io.reactivex.internal.observers.DeferredScalarDisposable, p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            super.dispose();
            this.f38558d.dispose();
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onError(Throwable th) {
            error(th);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.validate(this.f38558d, bVar)) {
                this.f38558d = bVar;
                this.actual.onSubscribe(this);
            }
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSuccess(T t) {
            complete(t);
        }
    }

    public SingleToObservable(AbstractC9852v<? extends T> vVar) {
        this.f38557a = vVar;
    }

    /* renamed from: b */
    public static <T> AbstractC9851u<T> m231b(AbstractC9844r<? super T> rVar) {
        return new SingleToObservableObserver(rVar);
    }

    @Override // p530d.p541c.AbstractC9840o
    /* renamed from: a */
    public void mo192a(AbstractC9844r<? super T> rVar) {
        this.f38557a.mo1841a(m231b((AbstractC9844r) rVar));
    }
}
