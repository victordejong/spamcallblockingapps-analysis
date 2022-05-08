package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableHide.class */
public final class CompletableHide extends Completable {

    /* renamed from: f */
    final CompletableSource f15312f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableHide$HideCompletableObserver.class */
    static final class HideCompletableObserver implements CompletableObserver, Disposable {

        /* renamed from: f */
        final CompletableObserver f15313f;

        /* renamed from: g */
        Disposable f15314g;

        HideCompletableObserver(CompletableObserver completableObserver) {
            this.f15313f = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15314g.dispose();
            this.f15314g = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15314g.isDisposed();
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f15313f.onComplete();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f15313f.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f15314g, disposable)) {
                this.f15314g = disposable;
                this.f15313f.onSubscribe(this);
            }
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f15312f.mo4514b(new HideCompletableObserver(completableObserver));
    }
}
