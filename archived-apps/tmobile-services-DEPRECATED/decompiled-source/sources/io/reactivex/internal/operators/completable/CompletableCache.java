package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableCache.class */
public final class CompletableCache extends Completable implements CompletableObserver {

    /* renamed from: j */
    static final InnerCompletableCache[] f15236j = new InnerCompletableCache[0];

    /* renamed from: k */
    static final InnerCompletableCache[] f15237k = new InnerCompletableCache[0];

    /* renamed from: f */
    final CompletableSource f15238f;

    /* renamed from: g */
    final AtomicReference<InnerCompletableCache[]> f15239g;

    /* renamed from: h */
    final AtomicBoolean f15240h;

    /* renamed from: i */
    Throwable f15241i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache.class */
    public final class InnerCompletableCache extends AtomicBoolean implements Disposable {
        private static final long serialVersionUID = 8943152917179642732L;

        /* renamed from: f */
        final CompletableObserver f15242f;

        InnerCompletableCache(CompletableObserver completableObserver) {
            this.f15242f = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (compareAndSet(false, true)) {
                CompletableCache.this.m4339i(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get();
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        InnerCompletableCache innerCompletableCache = new InnerCompletableCache(completableObserver);
        completableObserver.onSubscribe(innerCompletableCache);
        if (m4340h(innerCompletableCache)) {
            if (innerCompletableCache.isDisposed()) {
                m4339i(innerCompletableCache);
            }
            if (this.f15240h.compareAndSet(false, true)) {
                this.f15238f.mo4514b(this);
                return;
            }
            return;
        }
        Throwable th = this.f15241i;
        if (th != null) {
            completableObserver.onError(th);
        } else {
            completableObserver.onComplete();
        }
    }

    /* renamed from: h */
    boolean m4340h(InnerCompletableCache innerCompletableCache) {
        InnerCompletableCache[] innerCompletableCacheArr;
        InnerCompletableCache[] innerCompletableCacheArr2;
        do {
            innerCompletableCacheArr = this.f15239g.get();
            if (innerCompletableCacheArr == f15237k) {
                return false;
            }
            int length = innerCompletableCacheArr.length;
            innerCompletableCacheArr2 = new InnerCompletableCache[length + 1];
            System.arraycopy(innerCompletableCacheArr, 0, innerCompletableCacheArr2, 0, length);
            innerCompletableCacheArr2[length] = innerCompletableCache;
        } while (!this.f15239g.compareAndSet(innerCompletableCacheArr, innerCompletableCacheArr2));
        return true;
    }

    /* renamed from: i */
    void m4339i(InnerCompletableCache innerCompletableCache) {
        InnerCompletableCache[] innerCompletableCacheArr;
        InnerCompletableCache[] innerCompletableCacheArr2;
        do {
            innerCompletableCacheArr = this.f15239g.get();
            int length = innerCompletableCacheArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (innerCompletableCacheArr[i2] == innerCompletableCache) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        innerCompletableCacheArr2 = f15236j;
                    } else {
                        innerCompletableCacheArr2 = new InnerCompletableCache[length - 1];
                        System.arraycopy(innerCompletableCacheArr, 0, innerCompletableCacheArr2, 0, i);
                        System.arraycopy(innerCompletableCacheArr, i + 1, innerCompletableCacheArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f15239g.compareAndSet(innerCompletableCacheArr, innerCompletableCacheArr2));
    }

    @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
    public void onComplete() {
        InnerCompletableCache[] andSet;
        for (InnerCompletableCache innerCompletableCache : this.f15239g.getAndSet(f15237k)) {
            if (!innerCompletableCache.get()) {
                innerCompletableCache.f15242f.onComplete();
            }
        }
    }

    @Override // io.reactivex.CompletableObserver
    public void onError(Throwable th) {
        InnerCompletableCache[] andSet;
        this.f15241i = th;
        for (InnerCompletableCache innerCompletableCache : this.f15239g.getAndSet(f15237k)) {
            if (!innerCompletableCache.get()) {
                innerCompletableCache.f15242f.onError(th);
            }
        }
    }

    @Override // io.reactivex.CompletableObserver
    public void onSubscribe(Disposable disposable) {
    }
}
