package io.reactivex.subjects;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.DeferredScalarDisposable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/AsyncSubject.class */
public final class AsyncSubject<T> extends Subject<T> {

    /* renamed from: i */
    static final AsyncDisposable[] f19689i = new AsyncDisposable[0];

    /* renamed from: j */
    static final AsyncDisposable[] f19690j = new AsyncDisposable[0];

    /* renamed from: f */
    final AtomicReference<AsyncDisposable<T>[]> f19691f = new AtomicReference<>(f19689i);

    /* renamed from: g */
    Throwable f19692g;

    /* renamed from: h */
    T f19693h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/AsyncSubject$AsyncDisposable.class */
    public static final class AsyncDisposable<T> extends DeferredScalarDisposable<T> {
        private static final long serialVersionUID = 5629876084736248016L;

        /* renamed from: h */
        final AsyncSubject<T> f19694h;

        AsyncDisposable(Observer<? super T> observer, AsyncSubject<T> asyncSubject) {
            super(observer);
            this.f19694h = asyncSubject;
        }

        @Override // io.reactivex.internal.observers.DeferredScalarDisposable, io.reactivex.disposables.Disposable
        public void dispose() {
            if (super.m4348d()) {
                this.f19694h.m3223f(this);
            }
        }

        void onComplete() {
            if (!isDisposed()) {
                this.f15188f.onComplete();
            }
        }

        void onError(Throwable th) {
            if (isDisposed()) {
                RxJavaPlugins.m3354t(th);
            } else {
                this.f15188f.onError(th);
            }
        }
    }

    AsyncSubject() {
    }

    /* renamed from: e */
    boolean m3224e(AsyncDisposable<T> asyncDisposable) {
        AsyncDisposable<T>[] asyncDisposableArr;
        AsyncDisposable<T>[] asyncDisposableArr2;
        do {
            asyncDisposableArr = this.f19691f.get();
            if (asyncDisposableArr == f19690j) {
                return false;
            }
            int length = asyncDisposableArr.length;
            asyncDisposableArr2 = new AsyncDisposable[length + 1];
            System.arraycopy(asyncDisposableArr, 0, asyncDisposableArr2, 0, length);
            asyncDisposableArr2[length] = asyncDisposable;
        } while (!this.f19691f.compareAndSet(asyncDisposableArr, asyncDisposableArr2));
        return true;
    }

    /* renamed from: f */
    void m3223f(AsyncDisposable<T> asyncDisposable) {
        AsyncDisposable<T>[] asyncDisposableArr;
        AsyncDisposable<T>[] asyncDisposableArr2;
        do {
            asyncDisposableArr = this.f19691f.get();
            int length = asyncDisposableArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (asyncDisposableArr[i2] == asyncDisposable) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        asyncDisposableArr2 = f19689i;
                    } else {
                        asyncDisposableArr2 = new AsyncDisposable[length - 1];
                        System.arraycopy(asyncDisposableArr, 0, asyncDisposableArr2, 0, i);
                        System.arraycopy(asyncDisposableArr, i + 1, asyncDisposableArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f19691f.compareAndSet(asyncDisposableArr, asyncDisposableArr2));
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        AsyncDisposable<T>[] asyncDisposableArr = this.f19691f.get();
        AsyncDisposable<T>[] asyncDisposableArr2 = f19690j;
        if (asyncDisposableArr != asyncDisposableArr2) {
            T t = this.f19693h;
            AsyncDisposable<T>[] andSet = this.f19691f.getAndSet(asyncDisposableArr2);
            if (t == null) {
                for (AsyncDisposable<T> asyncDisposable : andSet) {
                    asyncDisposable.onComplete();
                }
                return;
            }
            for (AsyncDisposable<T> asyncDisposable2 : andSet) {
                asyncDisposable2.m4350b(t);
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        ObjectHelper.m4363e(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        AsyncDisposable<T>[] asyncDisposableArr = this.f19691f.get();
        AsyncDisposable<T>[] asyncDisposableArr2 = f19690j;
        if (asyncDisposableArr == asyncDisposableArr2) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        this.f19693h = null;
        this.f19692g = th;
        for (AsyncDisposable<T> asyncDisposable : this.f19691f.getAndSet(asyncDisposableArr2)) {
            asyncDisposable.onError(th);
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        ObjectHelper.m4363e(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f19691f.get() != f19690j) {
            this.f19693h = t;
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (this.f19691f.get() == f19690j) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        AsyncDisposable<T> asyncDisposable = new AsyncDisposable<>(observer, this);
        observer.onSubscribe(asyncDisposable);
        if (!m3224e(asyncDisposable)) {
            Throwable th = this.f19692g;
            if (th != null) {
                observer.onError(th);
                return;
            }
            T t = this.f19693h;
            if (t != null) {
                asyncDisposable.m4350b(t);
            } else {
                asyncDisposable.onComplete();
            }
        } else if (asyncDisposable.isDisposed()) {
            m3223f(asyncDisposable);
        }
    }
}
