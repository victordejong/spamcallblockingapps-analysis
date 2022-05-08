package io.reactivex.observers;

import io.reactivex.Observer;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/observers/SafeObserver.class */
public final class SafeObserver<T> implements Observer<T>, Disposable {

    /* renamed from: f */
    final Observer<? super T> f19458f;

    /* renamed from: g */
    Disposable f19459g;

    /* renamed from: h */
    boolean f19460h;

    public SafeObserver(@NonNull Observer<? super T> observer) {
        this.f19458f = observer;
    }

    /* renamed from: a */
    void m3382a() {
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f19458f.onSubscribe(EmptyDisposable.INSTANCE);
            try {
                this.f19458f.onError(nullPointerException);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            Exceptions.m4428b(th2);
            RxJavaPlugins.m3354t(new CompositeException(nullPointerException, th2));
        }
    }

    /* renamed from: b */
    void m3381b() {
        this.f19460h = true;
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f19458f.onSubscribe(EmptyDisposable.INSTANCE);
            try {
                this.f19458f.onError(nullPointerException);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            Exceptions.m4428b(th2);
            RxJavaPlugins.m3354t(new CompositeException(nullPointerException, th2));
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        this.f19459g.dispose();
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f19459g.isDisposed();
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (!this.f19460h) {
            this.f19460h = true;
            if (this.f19459g == null) {
                m3382a();
                return;
            }
            try {
                this.f19458f.onComplete();
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(th);
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onError(@NonNull Throwable th) {
        if (this.f19460h) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        this.f19460h = true;
        if (this.f19459g == null) {
            NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
            try {
                this.f19458f.onSubscribe(EmptyDisposable.INSTANCE);
                try {
                    this.f19458f.onError(new CompositeException(th, nullPointerException));
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    RxJavaPlugins.m3354t(new CompositeException(th, nullPointerException, th2));
                }
            } catch (Throwable th3) {
                Exceptions.m4428b(th3);
                RxJavaPlugins.m3354t(new CompositeException(th, nullPointerException, th3));
            }
        } else {
            Throwable th4 = th;
            if (th == null) {
                th4 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            try {
                this.f19458f.onError(th4);
            } catch (Throwable th5) {
                Exceptions.m4428b(th5);
                RxJavaPlugins.m3354t(new CompositeException(th4, th5));
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(@NonNull T t) {
        if (!this.f19460h) {
            if (this.f19459g == null) {
                m3381b();
            } else if (t == null) {
                NullPointerException nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
                try {
                    this.f19459g.dispose();
                    onError(nullPointerException);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    onError(new CompositeException(nullPointerException, th));
                }
            } else {
                try {
                    this.f19458f.onNext(t);
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    try {
                        this.f19459g.dispose();
                        onError(th2);
                    } catch (Throwable th3) {
                        Exceptions.m4428b(th3);
                        onError(new CompositeException(th2, th3));
                    }
                }
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(@NonNull Disposable disposable) {
        if (DisposableHelper.validate(this.f19459g, disposable)) {
            this.f19459g = disposable;
            try {
                this.f19458f.onSubscribe(this);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f19460h = true;
                try {
                    disposable.dispose();
                    RxJavaPlugins.m3354t(th);
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    RxJavaPlugins.m3354t(new CompositeException(th, th2));
                }
            }
        }
    }
}
