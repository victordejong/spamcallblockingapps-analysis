package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver.class */
public final class MaybeFlatMapNotification$FlatMapMaybeObserver<T, R> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<T>, AbstractC9861b {
    public static final long serialVersionUID = 4375739915521278546L;
    public final AbstractC9836k<? super R> actual;

    /* renamed from: d */
    public AbstractC9861b f38458d;
    public final Callable<? extends AbstractC9838m<? extends R>> onCompleteSupplier;
    public final AbstractC9645h<? super Throwable, ? extends AbstractC9838m<? extends R>> onErrorMapper;
    public final AbstractC9645h<? super T, ? extends AbstractC9838m<? extends R>> onSuccessMapper;

    /* renamed from: io.reactivex.internal.operators.maybe.MaybeFlatMapNotification$FlatMapMaybeObserver$a */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver$a.class */
    public final class C10410a implements AbstractC9836k<R> {
        public C10410a() {
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onComplete() {
            MaybeFlatMapNotification$FlatMapMaybeObserver.this.actual.onComplete();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            MaybeFlatMapNotification$FlatMapMaybeObserver.this.actual.onError(th);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(MaybeFlatMapNotification$FlatMapMaybeObserver.this, bVar);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(R r) {
            MaybeFlatMapNotification$FlatMapMaybeObserver.this.actual.onSuccess(r);
        }
    }

    public MaybeFlatMapNotification$FlatMapMaybeObserver(AbstractC9836k<? super R> kVar, AbstractC9645h<? super T, ? extends AbstractC9838m<? extends R>> hVar, AbstractC9645h<? super Throwable, ? extends AbstractC9838m<? extends R>> hVar2, Callable<? extends AbstractC9838m<? extends R>> callable) {
        this.actual = kVar;
        this.onSuccessMapper = hVar;
        this.onErrorMapper = hVar2;
        this.onCompleteSupplier = callable;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
        this.f38458d.dispose();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onComplete() {
        try {
            Object call = this.onCompleteSupplier.call();
            C9650a.m2095a(call, "The onCompleteSupplier returned a null MaybeSource");
            ((AbstractC9838m) call).mo1876a(new C10410a());
        } catch (Exception e) {
            C9863a.m1822b(e);
            this.actual.onError(e);
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        try {
            Object apply = this.onErrorMapper.apply(th);
            C9650a.m2095a(apply, "The onErrorMapper returned a null MaybeSource");
            ((AbstractC9838m) apply).mo1876a(new C10410a());
        } catch (Exception e) {
            C9863a.m1822b(e);
            this.actual.onError(new CompositeException(th, e));
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38458d, bVar)) {
            this.f38458d = bVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(T t) {
        try {
            Object apply = this.onSuccessMapper.apply(t);
            C9650a.m2095a(apply, "The onSuccessMapper returned a null MaybeSource");
            ((AbstractC9838m) apply).mo1876a(new C10410a());
        } catch (Exception e) {
            C9863a.m1822b(e);
            this.actual.onError(e);
        }
    }
}
