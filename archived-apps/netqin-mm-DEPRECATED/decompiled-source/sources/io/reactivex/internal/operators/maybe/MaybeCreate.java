package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9833i;
import p530d.p541c.AbstractC9835j;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9837l;
import p530d.p541c.p542a0.AbstractC9643f;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeCreate.class */
public final class MaybeCreate<T> extends AbstractC9833i<T> {

    /* renamed from: a */
    public final AbstractC9837l<T> f38452a;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeCreate$Emitter.class */
    public static final class Emitter<T> extends AtomicReference<AbstractC9861b> implements AbstractC9835j<T>, AbstractC9861b {
        public static final long serialVersionUID = -2467358622224974244L;
        public final AbstractC9836k<? super T> actual;

        public Emitter(AbstractC9836k<? super T> kVar) {
            this.actual = kVar;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // p530d.p541c.AbstractC9835j
        public void onComplete() {
            AbstractC9861b andSet;
            AbstractC9861b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar != disposableHelper && (andSet = getAndSet(disposableHelper)) != DisposableHelper.DISPOSED) {
                try {
                    this.actual.onComplete();
                    if (andSet != null) {
                        andSet.dispose();
                    }
                } catch (Throwable th) {
                    if (andSet != null) {
                        andSet.dispose();
                    }
                    throw th;
                }
            }
        }

        @Override // p530d.p541c.AbstractC9835j
        public void onError(Throwable th) {
            if (!tryOnError(th)) {
                C9815a.m1923b(th);
            }
        }

        @Override // p530d.p541c.AbstractC9835j
        public void onSuccess(T t) {
            AbstractC9861b andSet;
            AbstractC9861b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar != disposableHelper && (andSet = getAndSet(disposableHelper)) != DisposableHelper.DISPOSED) {
                try {
                    if (t == null) {
                        this.actual.onError(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                    } else {
                        this.actual.onSuccess(t);
                    }
                    if (andSet != null) {
                        andSet.dispose();
                    }
                } catch (Throwable th) {
                    if (andSet != null) {
                        andSet.dispose();
                    }
                    throw th;
                }
            }
        }

        public void setCancellable(AbstractC9643f fVar) {
            setDisposable(new CancellableDisposable(fVar));
        }

        public void setDisposable(AbstractC9861b bVar) {
            DisposableHelper.set(this, bVar);
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", Emitter.class.getSimpleName(), super.toString());
        }

        public boolean tryOnError(Throwable th) {
            AbstractC9861b andSet;
            Throwable th2 = th;
            if (th == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            AbstractC9861b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar == disposableHelper || (andSet = getAndSet(disposableHelper)) == DisposableHelper.DISPOSED) {
                return false;
            }
            try {
                this.actual.onError(th2);
                if (andSet == null) {
                    return true;
                }
                andSet.dispose();
                return true;
            } catch (Throwable th3) {
                if (andSet != null) {
                    andSet.dispose();
                }
                throw th3;
            }
        }
    }

    public MaybeCreate(AbstractC9837l<T> lVar) {
        this.f38452a = lVar;
    }

    @Override // p530d.p541c.AbstractC9833i
    /* renamed from: b */
    public void mo201b(AbstractC9836k<? super T> kVar) {
        Emitter emitter = new Emitter(kVar);
        kVar.onSubscribe(emitter);
        try {
            this.f38452a.mo1877a(emitter);
        } catch (Throwable th) {
            C9863a.m1822b(th);
            emitter.onError(th);
        }
    }
}
