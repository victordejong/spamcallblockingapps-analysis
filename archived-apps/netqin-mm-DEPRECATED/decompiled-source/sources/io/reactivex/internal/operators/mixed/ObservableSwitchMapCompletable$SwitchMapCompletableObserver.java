package io.reactivex.internal.operators.mixed;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver.class */
public final class ObservableSwitchMapCompletable$SwitchMapCompletableObserver<T> implements AbstractC9844r<T>, AbstractC9861b {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver.class */
    public static final class SwitchMapInnerObserver extends AtomicReference<AbstractC9861b> implements AbstractC9647b {
        public static final long serialVersionUID = -8003404460084760287L;
        public final ObservableSwitchMapCompletable$SwitchMapCompletableObserver<?> parent;

        public SwitchMapInnerObserver(ObservableSwitchMapCompletable$SwitchMapCompletableObserver<?> observableSwitchMapCompletable$SwitchMapCompletableObserver) {
            this.parent = observableSwitchMapCompletable$SwitchMapCompletableObserver;
        }

        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onComplete() {
            this.parent.m240a(this);
            throw null;
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onError(Throwable th) {
            this.parent.m239a(this, th);
            throw null;
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    static {
        new SwitchMapInnerObserver(null);
    }

    /* renamed from: a */
    public void m240a(SwitchMapInnerObserver switchMapInnerObserver) {
        throw null;
    }

    /* renamed from: a */
    public void m239a(SwitchMapInnerObserver switchMapInnerObserver, Throwable th) {
        throw null;
    }
}
