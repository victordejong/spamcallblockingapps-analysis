package io.reactivex.internal.operators.mixed;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable.class */
public final class ObservableSwitchMapCompletable<T> extends Completable {

    /* renamed from: f */
    final Observable<T> f17453f;

    /* renamed from: g */
    final Function<? super T, ? extends CompletableSource> f17454g;

    /* renamed from: h */
    final boolean f17455h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver.class */
    static final class SwitchMapCompletableObserver<T> implements Observer<T>, Disposable {

        /* renamed from: m */
        static final SwitchMapInnerObserver f17456m = new SwitchMapInnerObserver(null);

        /* renamed from: f */
        final CompletableObserver f17457f;

        /* renamed from: g */
        final Function<? super T, ? extends CompletableSource> f17458g;

        /* renamed from: h */
        final boolean f17459h;

        /* renamed from: i */
        final AtomicThrowable f17460i = new AtomicThrowable();

        /* renamed from: j */
        final AtomicReference<SwitchMapInnerObserver> f17461j = new AtomicReference<>();

        /* renamed from: k */
        volatile boolean f17462k;

        /* renamed from: l */
        Disposable f17463l;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver.class */
        public static final class SwitchMapInnerObserver extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = -8003404460084760287L;

            /* renamed from: f */
            final SwitchMapCompletableObserver<?> f17464f;

            SwitchMapInnerObserver(SwitchMapCompletableObserver<?> switchMapCompletableObserver) {
                this.f17464f = switchMapCompletableObserver;
            }

            /* renamed from: a */
            void m3926a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                this.f17464f.m3928b(this);
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                this.f17464f.m3927c(this, th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }
        }

        SwitchMapCompletableObserver(CompletableObserver completableObserver, Function<? super T, ? extends CompletableSource> function, boolean z) {
            this.f17457f = completableObserver;
            this.f17458g = function;
            this.f17459h = z;
        }

        /* renamed from: a */
        void m3929a() {
            SwitchMapInnerObserver andSet = this.f17461j.getAndSet(f17456m);
            if (andSet != null && andSet != f17456m) {
                andSet.m3926a();
            }
        }

        /* renamed from: b */
        void m3928b(SwitchMapInnerObserver switchMapInnerObserver) {
            if (this.f17461j.compareAndSet(switchMapInnerObserver, null) && this.f17462k) {
                Throwable b = this.f17460i.m3455b();
                if (b == null) {
                    this.f17457f.onComplete();
                } else {
                    this.f17457f.onError(b);
                }
            }
        }

        /* renamed from: c */
        void m3927c(SwitchMapInnerObserver switchMapInnerObserver, Throwable th) {
            if (!this.f17461j.compareAndSet(switchMapInnerObserver, null) || !this.f17460i.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
            } else if (!this.f17459h) {
                dispose();
                Throwable b = this.f17460i.m3455b();
                if (b != ExceptionHelper.f19422a) {
                    this.f17457f.onError(b);
                }
            } else if (this.f17462k) {
                this.f17457f.onError(this.f17460i.m3455b());
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17463l.dispose();
            m3929a();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17461j.get() == f17456m;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17462k = true;
            if (this.f17461j.get() == null) {
                Throwable b = this.f17460i.m3455b();
                if (b == null) {
                    this.f17457f.onComplete();
                } else {
                    this.f17457f.onError(b);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.f17460i.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
            } else if (this.f17459h) {
                onComplete();
            } else {
                m3929a();
                Throwable b = this.f17460i.m3455b();
                if (b != ExceptionHelper.f19422a) {
                    this.f17457f.onError(b);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            SwitchMapInnerObserver switchMapInnerObserver;
            try {
                Object apply = this.f17458g.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null CompletableSource");
                CompletableSource completableSource = (CompletableSource) apply;
                SwitchMapInnerObserver switchMapInnerObserver2 = new SwitchMapInnerObserver(this);
                do {
                    switchMapInnerObserver = this.f17461j.get();
                    if (switchMapInnerObserver == f17456m) {
                        return;
                    }
                } while (!this.f17461j.compareAndSet(switchMapInnerObserver, switchMapInnerObserver2));
                if (switchMapInnerObserver != null) {
                    switchMapInnerObserver.m3926a();
                }
                completableSource.mo4514b(switchMapInnerObserver2);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17463l.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17463l, disposable)) {
                this.f17463l = disposable;
                this.f17457f.onSubscribe(this);
            }
        }
    }

    public ObservableSwitchMapCompletable(Observable<T> observable, Function<? super T, ? extends CompletableSource> function, boolean z) {
        this.f17453f = observable;
        this.f17454g = function;
        this.f17455h = z;
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        if (!ScalarXMapZHelper.m3916a(this.f17453f, this.f17454g, completableObserver)) {
            this.f17453f.subscribe(new SwitchMapCompletableObserver(completableObserver, this.f17454g, this.f17455h));
        }
    }
}
