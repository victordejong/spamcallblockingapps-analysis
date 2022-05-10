package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.AbstractC9852v;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver.class */
public final class MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<T>, AbstractC9861b {
    public static final long serialVersionUID = 4603919676453758899L;
    public final AbstractC9851u<? super T> actual;
    public final AbstractC9852v<? extends T> other;

    /* renamed from: io.reactivex.internal.operators.maybe.MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver$a */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver$a.class */
    public static final class C10415a<T> implements AbstractC9851u<T> {

        /* renamed from: a */
        public final AbstractC9851u<? super T> f38474a;

        /* renamed from: b */
        public final AtomicReference<AbstractC9861b> f38475b;

        public C10415a(AbstractC9851u<? super T> uVar, AtomicReference<AbstractC9861b> atomicReference) {
            this.f38474a = uVar;
            this.f38475b = atomicReference;
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onError(Throwable th) {
            this.f38474a.onError(th);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this.f38475b, bVar);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSuccess(T t) {
            this.f38474a.onSuccess(t);
        }
    }

    public MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver(AbstractC9851u<? super T> uVar, AbstractC9852v<? extends T> vVar) {
        this.actual = uVar;
        this.other = vVar;
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
        AbstractC9861b bVar = get();
        if (bVar != DisposableHelper.DISPOSED && compareAndSet(bVar, null)) {
            this.other.mo1841a(new C10415a(this.actual, this));
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.setOnce(this, bVar)) {
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(T t) {
        this.actual.onSuccess(t);
    }
}
