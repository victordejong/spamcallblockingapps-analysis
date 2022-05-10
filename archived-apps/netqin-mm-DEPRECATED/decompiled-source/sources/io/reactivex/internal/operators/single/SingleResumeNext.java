package io.reactivex.internal.operators.single;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9850t;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.AbstractC9852v;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p547d.C9665d;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleResumeNext.class */
public final class SingleResumeNext<T> extends AbstractC9850t<T> {

    /* renamed from: a */
    public final AbstractC9852v<? extends T> f38553a;

    /* renamed from: b */
    public final AbstractC9645h<? super Throwable, ? extends AbstractC9852v<? extends T>> f38554b;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleResumeNext$ResumeMainSingleObserver.class */
    public static final class ResumeMainSingleObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9851u<T>, AbstractC9861b {
        public static final long serialVersionUID = -5314538511045349925L;
        public final AbstractC9851u<? super T> actual;
        public final AbstractC9645h<? super Throwable, ? extends AbstractC9852v<? extends T>> nextFunction;

        public ResumeMainSingleObserver(AbstractC9851u<? super T> uVar, AbstractC9645h<? super Throwable, ? extends AbstractC9852v<? extends T>> hVar) {
            this.actual = uVar;
            this.nextFunction = hVar;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onError(Throwable th) {
            try {
                Object apply = this.nextFunction.apply(th);
                C9650a.m2095a(apply, "The nextFunction returned a null SingleSource.");
                ((AbstractC9852v) apply).mo1841a(new C9665d(this, this.actual));
            } catch (Throwable th2) {
                C9863a.m1822b(th2);
                this.actual.onError(new CompositeException(th, th2));
            }
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.actual.onSubscribe(this);
            }
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSuccess(T t) {
            this.actual.onSuccess(t);
        }
    }

    public SingleResumeNext(AbstractC9852v<? extends T> vVar, AbstractC9645h<? super Throwable, ? extends AbstractC9852v<? extends T>> hVar) {
        this.f38553a = vVar;
        this.f38554b = hVar;
    }

    @Override // p530d.p541c.AbstractC9850t
    /* renamed from: b */
    public void mo196b(AbstractC9851u<? super T> uVar) {
        this.f38553a.mo1841a(new ResumeMainSingleObserver(uVar, this.f38554b));
    }
}
