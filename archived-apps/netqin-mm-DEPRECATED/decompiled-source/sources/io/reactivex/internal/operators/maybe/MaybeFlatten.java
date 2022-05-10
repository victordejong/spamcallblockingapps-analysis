package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p548e.p551c.AbstractC9712a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatten.class */
public final class MaybeFlatten<T, R> extends AbstractC9712a<T, R> {

    /* renamed from: b */
    public final AbstractC9645h<? super T, ? extends AbstractC9838m<? extends R>> f38460b;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver.class */
    public static final class FlatMapMaybeObserver<T, R> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<T>, AbstractC9861b {
        public static final long serialVersionUID = 4375739915521278546L;
        public final AbstractC9836k<? super R> actual;

        /* renamed from: d */
        public AbstractC9861b f38461d;
        public final AbstractC9645h<? super T, ? extends AbstractC9838m<? extends R>> mapper;

        /* renamed from: io.reactivex.internal.operators.maybe.MaybeFlatten$FlatMapMaybeObserver$a */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver$a.class */
        public final class C10411a implements AbstractC9836k<R> {
            public C10411a() {
            }

            @Override // p530d.p541c.AbstractC9836k
            public void onComplete() {
                FlatMapMaybeObserver.this.actual.onComplete();
            }

            @Override // p530d.p541c.AbstractC9836k
            public void onError(Throwable th) {
                FlatMapMaybeObserver.this.actual.onError(th);
            }

            @Override // p530d.p541c.AbstractC9836k
            public void onSubscribe(AbstractC9861b bVar) {
                DisposableHelper.setOnce(FlatMapMaybeObserver.this, bVar);
            }

            @Override // p530d.p541c.AbstractC9836k
            public void onSuccess(R r) {
                FlatMapMaybeObserver.this.actual.onSuccess(r);
            }
        }

        public FlatMapMaybeObserver(AbstractC9836k<? super R> kVar, AbstractC9645h<? super T, ? extends AbstractC9838m<? extends R>> hVar) {
            this.actual = kVar;
            this.mapper = hVar;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f38461d.dispose();
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
            if (DisposableHelper.validate(this.f38461d, bVar)) {
                this.f38461d = bVar;
                this.actual.onSubscribe(this);
            }
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(T t) {
            try {
                Object apply = this.mapper.apply(t);
                C9650a.m2095a(apply, "The mapper returned a null MaybeSource");
                AbstractC9838m mVar = (AbstractC9838m) apply;
                if (!isDisposed()) {
                    mVar.mo1876a(new C10411a());
                }
            } catch (Exception e) {
                C9863a.m1822b(e);
                this.actual.onError(e);
            }
        }
    }

    public MaybeFlatten(AbstractC9838m<T> mVar, AbstractC9645h<? super T, ? extends AbstractC9838m<? extends R>> hVar) {
        super(mVar);
        this.f38460b = hVar;
    }

    @Override // p530d.p541c.AbstractC9833i
    /* renamed from: b */
    public void mo201b(AbstractC9836k<? super R> kVar) {
        this.f36803a.mo1876a(new FlatMapMaybeObserver(kVar, this.f38460b));
    }
}
