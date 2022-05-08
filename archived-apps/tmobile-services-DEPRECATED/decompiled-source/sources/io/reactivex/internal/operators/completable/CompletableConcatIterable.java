package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableConcatIterable.class */
public final class CompletableConcatIterable extends Completable {

    /* renamed from: f */
    final Iterable<? extends CompletableSource> f15263f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver.class */
    static final class ConcatInnerObserver extends AtomicInteger implements CompletableObserver {
        private static final long serialVersionUID = -7965400327305809232L;

        /* renamed from: f */
        final CompletableObserver f15264f;

        /* renamed from: g */
        final Iterator<? extends CompletableSource> f15265g;

        /* renamed from: h */
        final SequentialDisposable f15266h = new SequentialDisposable();

        ConcatInnerObserver(CompletableObserver completableObserver, Iterator<? extends CompletableSource> it) {
            this.f15264f = completableObserver;
            this.f15265g = it;
        }

        /* renamed from: a */
        void m4332a() {
            if (!this.f15266h.isDisposed() && getAndIncrement() == 0) {
                Iterator<? extends CompletableSource> it = this.f15265g;
                while (!this.f15266h.isDisposed()) {
                    try {
                        if (!it.hasNext()) {
                            this.f15264f.onComplete();
                            return;
                        }
                        try {
                            Object next = it.next();
                            ObjectHelper.m4363e(next, "The CompletableSource returned is null");
                            ((CompletableSource) next).mo4514b(this);
                            if (decrementAndGet() == 0) {
                                return;
                            }
                        } catch (Throwable th) {
                            Exceptions.m4428b(th);
                            this.f15264f.onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        Exceptions.m4428b(th2);
                        this.f15264f.onError(th2);
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            m4332a();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f15264f.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.f15266h.m4422a(disposable);
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    public void mo3214d(CompletableObserver completableObserver) {
        try {
            Iterator<? extends CompletableSource> it = this.f15263f.iterator();
            ObjectHelper.m4363e(it, "The iterator returned is null");
            ConcatInnerObserver concatInnerObserver = new ConcatInnerObserver(completableObserver, it);
            completableObserver.onSubscribe(concatInnerObserver.f15266h);
            concatInnerObserver.m4332a();
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, completableObserver);
        }
    }
}
