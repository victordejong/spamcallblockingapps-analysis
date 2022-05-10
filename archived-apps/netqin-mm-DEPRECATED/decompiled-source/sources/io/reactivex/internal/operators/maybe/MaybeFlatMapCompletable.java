package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9637a;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9809c;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapCompletable.class */
public final class MaybeFlatMapCompletable<T> extends AbstractC9637a {

    /* renamed from: a */
    public final AbstractC9838m<T> f38454a;

    /* renamed from: b */
    public final AbstractC9645h<? super T, ? extends AbstractC9809c> f38455b;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapCompletable$FlatMapCompletableObserver.class */
    public static final class FlatMapCompletableObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<T>, AbstractC9647b, AbstractC9861b {
        public static final long serialVersionUID = -2177128922851101253L;
        public final AbstractC9647b actual;
        public final AbstractC9645h<? super T, ? extends AbstractC9809c> mapper;

        public FlatMapCompletableObserver(AbstractC9647b bVar, AbstractC9645h<? super T, ? extends AbstractC9809c> hVar) {
            this.actual = bVar;
            this.mapper = hVar;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onComplete() {
            this.actual.onComplete();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            this.actual.onError(th);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.replace(this, bVar);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(T t) {
            try {
                Object apply = this.mapper.apply(t);
                C9650a.m2095a(apply, "The mapper returned a null CompletableSource");
                AbstractC9809c cVar = (AbstractC9809c) apply;
                if (!isDisposed()) {
                    cVar.mo1980a(this);
                }
            } catch (Throwable th) {
                C9863a.m1822b(th);
                onError(th);
            }
        }
    }

    public MaybeFlatMapCompletable(AbstractC9838m<T> mVar, AbstractC9645h<? super T, ? extends AbstractC9809c> hVar) {
        this.f38454a = mVar;
        this.f38455b = hVar;
    }

    @Override // p530d.p541c.AbstractC9637a
    /* renamed from: b */
    public void mo204b(AbstractC9647b bVar) {
        FlatMapCompletableObserver flatMapCompletableObserver = new FlatMapCompletableObserver(bVar, this.f38455b);
        bVar.onSubscribe(flatMapCompletableObserver);
        this.f38454a.mo1876a(flatMapCompletableObserver);
    }
}
