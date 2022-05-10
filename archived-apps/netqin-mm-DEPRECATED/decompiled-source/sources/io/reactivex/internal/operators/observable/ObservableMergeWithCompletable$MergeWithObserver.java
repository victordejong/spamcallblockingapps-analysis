package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p557i.C9804f;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver.class */
public final class ObservableMergeWithCompletable$MergeWithObserver<T> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = -4592979584110982903L;
    public final AbstractC9844r<? super T> actual;
    public volatile boolean mainDone;
    public volatile boolean otherDone;
    public final AtomicReference<AbstractC9861b> mainDisposable = new AtomicReference<>();
    public final OtherObserver otherObserver = new OtherObserver(this);
    public final AtomicThrowable error = new AtomicThrowable();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver$OtherObserver.class */
    public static final class OtherObserver extends AtomicReference<AbstractC9861b> implements AbstractC9647b {
        public static final long serialVersionUID = -2935427570954647017L;
        public final ObservableMergeWithCompletable$MergeWithObserver<?> parent;

        public OtherObserver(ObservableMergeWithCompletable$MergeWithObserver<?> observableMergeWithCompletable$MergeWithObserver) {
            this.parent = observableMergeWithCompletable$MergeWithObserver;
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onComplete() {
            this.parent.otherComplete();
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onError(Throwable th) {
            this.parent.otherError(th);
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    public ObservableMergeWithCompletable$MergeWithObserver(AbstractC9844r<? super T> rVar) {
        this.actual = rVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this.mainDisposable);
        DisposableHelper.dispose(this.otherObserver);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(this.mainDisposable.get());
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.mainDone = true;
        if (this.otherDone) {
            C9804f.m1999a(this.actual, this, this.error);
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        DisposableHelper.dispose(this.mainDisposable);
        C9804f.m2000a((AbstractC9844r<?>) this.actual, th, (AtomicInteger) this, this.error);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        C9804f.m2001a(this.actual, t, this, this.error);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this.mainDisposable, bVar);
    }

    public void otherComplete() {
        this.otherDone = true;
        if (this.mainDone) {
            C9804f.m1999a(this.actual, this, this.error);
        }
    }

    public void otherError(Throwable th) {
        DisposableHelper.dispose(this.mainDisposable);
        C9804f.m2000a((AbstractC9844r<?>) this.actual, th, (AtomicInteger) this, this.error);
    }
}
