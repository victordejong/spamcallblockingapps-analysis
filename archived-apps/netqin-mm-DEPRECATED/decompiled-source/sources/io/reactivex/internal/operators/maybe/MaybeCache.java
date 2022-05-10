package io.reactivex.internal.operators.maybe;

import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9833i;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeCache.class */
public final class MaybeCache<T> extends AbstractC9833i<T> implements AbstractC9836k<T> {

    /* renamed from: e */
    public static final CacheDisposable[] f38446e = new CacheDisposable[0];

    /* renamed from: f */
    public static final CacheDisposable[] f38447f = new CacheDisposable[0];

    /* renamed from: a */
    public final AtomicReference<AbstractC9838m<T>> f38448a;

    /* renamed from: b */
    public final AtomicReference<CacheDisposable<T>[]> f38449b;

    /* renamed from: c */
    public T f38450c;

    /* renamed from: d */
    public Throwable f38451d;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable.class */
    public static final class CacheDisposable<T> extends AtomicReference<MaybeCache<T>> implements AbstractC9861b {
        public static final long serialVersionUID = -5791853038359966195L;
        public final AbstractC9836k<? super T> actual;

        public CacheDisposable(AbstractC9836k<? super T> kVar, MaybeCache<T> maybeCache) {
            super(maybeCache);
            this.actual = kVar;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            MaybeCache<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.m244b((CacheDisposable) this);
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return get() == null;
        }
    }

    /* renamed from: a */
    public boolean m245a(CacheDisposable<T> cacheDisposable) {
        CacheDisposable<T>[] cacheDisposableArr;
        CacheDisposable<T>[] cacheDisposableArr2;
        do {
            cacheDisposableArr = this.f38449b.get();
            if (cacheDisposableArr == f38447f) {
                return false;
            }
            int length = cacheDisposableArr.length;
            cacheDisposableArr2 = new CacheDisposable[length + 1];
            System.arraycopy(cacheDisposableArr, 0, cacheDisposableArr2, 0, length);
            cacheDisposableArr2[length] = cacheDisposable;
        } while (!this.f38449b.compareAndSet(cacheDisposableArr, cacheDisposableArr2));
        return true;
    }

    @Override // p530d.p541c.AbstractC9833i
    /* renamed from: b */
    public void mo201b(AbstractC9836k<? super T> kVar) {
        CacheDisposable<T> cacheDisposable = new CacheDisposable<>(kVar, this);
        kVar.onSubscribe(cacheDisposable);
        if (m245a((CacheDisposable) cacheDisposable)) {
            if (cacheDisposable.isDisposed()) {
                m244b((CacheDisposable) cacheDisposable);
                return;
            }
            AbstractC9838m<T> andSet = this.f38448a.getAndSet(null);
            if (andSet != null) {
                andSet.mo1876a(this);
            }
        } else if (!cacheDisposable.isDisposed()) {
            Throwable th = this.f38451d;
            if (th != null) {
                kVar.onError(th);
                return;
            }
            Object obj = (T) this.f38450c;
            if (obj != null) {
                kVar.onSuccess(obj);
            } else {
                kVar.onComplete();
            }
        }
    }

    /* renamed from: b */
    public void m244b(CacheDisposable<T> cacheDisposable) {
        CacheDisposable<T>[] cacheDisposableArr;
        CacheDisposable<T>[] cacheDisposableArr2;
        do {
            cacheDisposableArr = this.f38449b.get();
            int length = cacheDisposableArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (cacheDisposableArr[i2] == cacheDisposable) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        cacheDisposableArr2 = f38446e;
                    } else {
                        cacheDisposableArr2 = new CacheDisposable[length - 1];
                        System.arraycopy(cacheDisposableArr, 0, cacheDisposableArr2, 0, i);
                        System.arraycopy(cacheDisposableArr, i + 1, cacheDisposableArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f38449b.compareAndSet(cacheDisposableArr, cacheDisposableArr2));
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onComplete() {
        CacheDisposable<T>[] andSet;
        for (CacheDisposable<T> cacheDisposable : this.f38449b.getAndSet(f38447f)) {
            if (!cacheDisposable.isDisposed()) {
                cacheDisposable.actual.onComplete();
            }
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        CacheDisposable<T>[] andSet;
        this.f38451d = th;
        for (CacheDisposable<T> cacheDisposable : this.f38449b.getAndSet(f38447f)) {
            if (!cacheDisposable.isDisposed()) {
                cacheDisposable.actual.onError(th);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(T t) {
        CacheDisposable<T>[] andSet;
        this.f38450c = t;
        for (CacheDisposable<T> cacheDisposable : this.f38449b.getAndSet(f38447f)) {
            if (!cacheDisposable.isDisposed()) {
                cacheDisposable.actual.onSuccess(t);
            }
        }
    }
}
