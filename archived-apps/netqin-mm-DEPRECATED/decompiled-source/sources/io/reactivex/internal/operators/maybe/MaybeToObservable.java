package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.DeferredScalarDisposable;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeToObservable.class */
public final class MaybeToObservable<T> extends AbstractC9840o<T> {

    /* renamed from: a */
    public final AbstractC9838m<T> f38478a;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver.class */
    public static final class MaybeToObservableObserver<T> extends DeferredScalarDisposable<T> implements AbstractC9836k<T> {
        public static final long serialVersionUID = 7603343402964826922L;

        /* renamed from: d */
        public AbstractC9861b f38479d;

        public MaybeToObservableObserver(AbstractC9844r<? super T> rVar) {
            super(rVar);
        }

        @Override // io.reactivex.internal.observers.DeferredScalarDisposable, p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            super.dispose();
            this.f38479d.dispose();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onComplete() {
            complete();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            error(th);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.validate(this.f38479d, bVar)) {
                this.f38479d = bVar;
                this.actual.onSubscribe(this);
            }
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(T t) {
            complete(t);
        }
    }

    public MaybeToObservable(AbstractC9838m<T> mVar) {
        this.f38478a = mVar;
    }

    /* renamed from: b */
    public static <T> AbstractC9836k<T> m243b(AbstractC9844r<? super T> rVar) {
        return new MaybeToObservableObserver(rVar);
    }

    @Override // p530d.p541c.AbstractC9840o
    /* renamed from: a */
    public void mo192a(AbstractC9844r<? super T> rVar) {
        this.f38478a.mo1876a(m243b((AbstractC9844r) rVar));
    }
}
