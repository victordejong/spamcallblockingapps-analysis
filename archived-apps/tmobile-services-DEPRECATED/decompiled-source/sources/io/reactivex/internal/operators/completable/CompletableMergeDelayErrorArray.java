package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableMergeDelayErrorArray.class */
public final class CompletableMergeDelayErrorArray extends Completable {

    /* renamed from: f */
    final CompletableSource[] f15332f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableMergeDelayErrorArray$MergeInnerCompletableObserver.class */
    static final class MergeInnerCompletableObserver implements CompletableObserver {

        /* renamed from: f */
        final CompletableObserver f15333f;

        /* renamed from: g */
        final CompositeDisposable f15334g;

        /* renamed from: h */
        final AtomicThrowable f15335h;

        /* renamed from: i */
        final AtomicInteger f15336i;

        /* JADX INFO: Access modifiers changed from: package-private */
        public MergeInnerCompletableObserver(CompletableObserver completableObserver, CompositeDisposable compositeDisposable, AtomicThrowable atomicThrowable, AtomicInteger atomicInteger) {
            this.f15333f = completableObserver;
            this.f15334g = compositeDisposable;
            this.f15335h = atomicThrowable;
            this.f15336i = atomicInteger;
        }

        /* renamed from: a */
        void m4325a() {
            if (this.f15336i.decrementAndGet() == 0) {
                Throwable b = this.f15335h.m3455b();
                if (b == null) {
                    this.f15333f.onComplete();
                } else {
                    this.f15333f.onError(b);
                }
            }
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            m4325a();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            if (this.f15335h.m3456a(th)) {
                m4325a();
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.f15334g.mo4425b(disposable);
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    public void mo3214d(CompletableObserver completableObserver) {
        CompletableSource[] completableSourceArr;
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        AtomicInteger atomicInteger = new AtomicInteger(this.f15332f.length + 1);
        AtomicThrowable atomicThrowable = new AtomicThrowable();
        completableObserver.onSubscribe(compositeDisposable);
        for (CompletableSource completableSource : this.f15332f) {
            if (!compositeDisposable.isDisposed()) {
                if (completableSource == null) {
                    atomicThrowable.m3456a(new NullPointerException("A completable source is null"));
                    atomicInteger.decrementAndGet();
                } else {
                    completableSource.mo4514b(new MergeInnerCompletableObserver(completableObserver, compositeDisposable, atomicThrowable, atomicInteger));
                }
            } else {
                return;
            }
        }
        if (atomicInteger.decrementAndGet() == 0) {
            Throwable b = atomicThrowable.m3455b();
            if (b == null) {
                completableObserver.onComplete();
            } else {
                completableObserver.onError(b);
            }
        }
    }
}
