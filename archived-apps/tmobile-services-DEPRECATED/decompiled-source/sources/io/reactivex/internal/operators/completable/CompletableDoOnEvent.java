package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Consumer;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableDoOnEvent.class */
public final class CompletableDoOnEvent extends Completable {

    /* renamed from: f */
    final CompletableSource f15295f;

    /* renamed from: g */
    final Consumer<? super Throwable> f15296g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableDoOnEvent$DoOnEvent.class */
    final class DoOnEvent implements CompletableObserver {

        /* renamed from: f */
        private final CompletableObserver f15297f;

        DoOnEvent(CompletableObserver completableObserver) {
            this.f15297f = completableObserver;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            try {
                CompletableDoOnEvent.this.f15296g.accept(null);
                this.f15297f.onComplete();
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f15297f.onError(th);
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            try {
                CompletableDoOnEvent.this.f15296g.accept(th);
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                th = new CompositeException(th, th2);
            }
            this.f15297f.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.f15297f.onSubscribe(disposable);
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f15295f.mo4514b(new DoOnEvent(completableObserver));
    }
}
