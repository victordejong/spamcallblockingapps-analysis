package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p548e.p551c.AbstractC9712a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeObserveOn.class */
public final class MaybeObserveOn<T> extends AbstractC9712a<T, T> {

    /* renamed from: b */
    public final AbstractC9845s f38463b;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver.class */
    public static final class ObserveOnMaybeObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<T>, AbstractC9861b, Runnable {
        public static final long serialVersionUID = 8571289934935992137L;
        public final AbstractC9836k<? super T> actual;
        public Throwable error;
        public final AbstractC9845s scheduler;
        public T value;

        public ObserveOnMaybeObserver(AbstractC9836k<? super T> kVar, AbstractC9845s sVar) {
            this.actual = kVar;
            this.scheduler = sVar;
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
            DisposableHelper.replace(this, this.scheduler.mo1854a(this));
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            this.error = th;
            DisposableHelper.replace(this, this.scheduler.mo1854a(this));
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.actual.onSubscribe(this);
            }
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(T t) {
            this.value = t;
            DisposableHelper.replace(this, this.scheduler.mo1854a(this));
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.error;
            if (th != null) {
                this.error = null;
                this.actual.onError(th);
                return;
            }
            T t = this.value;
            if (t != null) {
                this.value = null;
                this.actual.onSuccess(t);
                return;
            }
            this.actual.onComplete();
        }
    }

    public MaybeObserveOn(AbstractC9838m<T> mVar, AbstractC9845s sVar) {
        super(mVar);
        this.f38463b = sVar;
    }

    @Override // p530d.p541c.AbstractC9833i
    /* renamed from: b */
    public void mo201b(AbstractC9836k<? super T> kVar) {
        this.f36803a.mo1876a(new ObserveOnMaybeObserver(kVar, this.f38463b));
    }
}
