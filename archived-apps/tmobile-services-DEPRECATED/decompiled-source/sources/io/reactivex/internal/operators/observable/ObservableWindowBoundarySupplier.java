package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.observers.DisposableObserver;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.subjects.UnicastSubject;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier.class */
public final class ObservableWindowBoundarySupplier<T, B> extends AbstractObservableWithUpstream<T, Observable<T>> {

    /* renamed from: g */
    final Callable<? extends ObservableSource<B>> f18689g;

    /* renamed from: h */
    final int f18690h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryInnerObserver.class */
    public static final class WindowBoundaryInnerObserver<T, B> extends DisposableObserver<B> {

        /* renamed from: g */
        final WindowBoundaryMainObserver<T, B> f18691g;

        /* renamed from: h */
        boolean f18692h;

        WindowBoundaryInnerObserver(WindowBoundaryMainObserver<T, B> windowBoundaryMainObserver) {
            this.f18691g = windowBoundaryMainObserver;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f18692h) {
                this.f18692h = true;
                this.f18691g.m3650c();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18692h) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18692h = true;
            this.f18691g.m3649d(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(B b) {
            if (!this.f18692h) {
                this.f18692h = true;
                dispose();
                this.f18691g.m3648e(this);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver.class */
    static final class WindowBoundaryMainObserver<T, B> extends AtomicInteger implements Observer<T>, Disposable, Runnable {

        /* renamed from: q */
        static final WindowBoundaryInnerObserver<Object, Object> f18693q = new WindowBoundaryInnerObserver<>(null);

        /* renamed from: r */
        static final Object f18694r = new Object();
        private static final long serialVersionUID = 2233020065421370272L;

        /* renamed from: f */
        final Observer<? super Observable<T>> f18695f;

        /* renamed from: g */
        final int f18696g;

        /* renamed from: h */
        final AtomicReference<WindowBoundaryInnerObserver<T, B>> f18697h = new AtomicReference<>();

        /* renamed from: i */
        final AtomicInteger f18698i = new AtomicInteger(1);

        /* renamed from: j */
        final MpscLinkedQueue<Object> f18699j = new MpscLinkedQueue<>();

        /* renamed from: k */
        final AtomicThrowable f18700k = new AtomicThrowable();

        /* renamed from: l */
        final AtomicBoolean f18701l = new AtomicBoolean();

        /* renamed from: m */
        final Callable<? extends ObservableSource<B>> f18702m;

        /* renamed from: n */
        Disposable f18703n;

        /* renamed from: o */
        volatile boolean f18704o;

        /* renamed from: p */
        UnicastSubject<T> f18705p;

        WindowBoundaryMainObserver(Observer<? super Observable<T>> observer, int i, Callable<? extends ObservableSource<B>> callable) {
            this.f18695f = observer;
            this.f18696g = i;
            this.f18702m = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        void m3652a() {
            Disposable disposable = (Disposable) this.f18697h.getAndSet(f18693q);
            if (disposable != null && disposable != f18693q) {
                disposable.dispose();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        void m3651b() {
            if (getAndIncrement() == 0) {
                Observer<? super Observable<T>> observer = this.f18695f;
                MpscLinkedQueue<Object> mpscLinkedQueue = this.f18699j;
                AtomicThrowable atomicThrowable = this.f18700k;
                int i = 1;
                while (this.f18698i.get() != 0) {
                    UnicastSubject<T> unicastSubject = this.f18705p;
                    boolean z = this.f18704o;
                    if (!z || atomicThrowable.get() == null) {
                        Object poll = mpscLinkedQueue.poll();
                        boolean z2 = poll == null;
                        if (z && z2) {
                            Throwable b = atomicThrowable.m3455b();
                            if (b == null) {
                                if (unicastSubject != 0) {
                                    this.f18705p = null;
                                    unicastSubject.onComplete();
                                }
                                observer.onComplete();
                                return;
                            }
                            if (unicastSubject != 0) {
                                this.f18705p = null;
                                unicastSubject.onError(b);
                            }
                            observer.onError(b);
                            return;
                        } else if (z2) {
                            int addAndGet = addAndGet(-i);
                            i = addAndGet;
                            if (addAndGet == 0) {
                                return;
                            }
                        } else if (poll != f18694r) {
                            unicastSubject.onNext(poll);
                        } else {
                            if (unicastSubject != 0) {
                                this.f18705p = null;
                                unicastSubject.onComplete();
                            }
                            if (!this.f18701l.get()) {
                                UnicastSubject<T> g = UnicastSubject.m3183g(this.f18696g, this);
                                this.f18705p = g;
                                this.f18698i.getAndIncrement();
                                try {
                                    Object call = this.f18702m.call();
                                    ObjectHelper.m4363e(call, "The other Callable returned a null ObservableSource");
                                    ObservableSource observableSource = (ObservableSource) call;
                                    WindowBoundaryInnerObserver<T, B> windowBoundaryInnerObserver = new WindowBoundaryInnerObserver<>(this);
                                    if (this.f18697h.compareAndSet(null, windowBoundaryInnerObserver)) {
                                        observableSource.subscribe(windowBoundaryInnerObserver);
                                        observer.onNext(g);
                                    }
                                } catch (Throwable th) {
                                    Exceptions.m4428b(th);
                                    atomicThrowable.m3456a(th);
                                    this.f18704o = true;
                                }
                            }
                        }
                    } else {
                        mpscLinkedQueue.clear();
                        Throwable b2 = atomicThrowable.m3455b();
                        if (unicastSubject != 0) {
                            this.f18705p = null;
                            unicastSubject.onError(b2);
                        }
                        observer.onError(b2);
                        return;
                    }
                }
                mpscLinkedQueue.clear();
                this.f18705p = null;
            }
        }

        /* renamed from: c */
        void m3650c() {
            this.f18703n.dispose();
            this.f18704o = true;
            m3651b();
        }

        /* renamed from: d */
        void m3649d(Throwable th) {
            this.f18703n.dispose();
            if (this.f18700k.m3456a(th)) {
                this.f18704o = true;
                m3651b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f18701l.compareAndSet(false, true)) {
                m3652a();
                if (this.f18698i.decrementAndGet() == 0) {
                    this.f18703n.dispose();
                }
            }
        }

        /* renamed from: e */
        void m3648e(WindowBoundaryInnerObserver<T, B> windowBoundaryInnerObserver) {
            this.f18697h.compareAndSet(windowBoundaryInnerObserver, null);
            this.f18699j.offer(f18694r);
            m3651b();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18701l.get();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            m3652a();
            this.f18704o = true;
            m3651b();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            m3652a();
            if (this.f18700k.m3456a(th)) {
                this.f18704o = true;
                m3651b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18699j.offer(t);
            m3651b();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18703n, disposable)) {
                this.f18703n = disposable;
                this.f18695f.onSubscribe(this);
                this.f18699j.offer(f18694r);
                m3651b();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f18698i.decrementAndGet() == 0) {
                this.f18703n.dispose();
            }
        }
    }

    public ObservableWindowBoundarySupplier(ObservableSource<T> observableSource, Callable<? extends ObservableSource<B>> callable, int i) {
        super(observableSource);
        this.f18689g = callable;
        this.f18690h = i;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super Observable<T>> observer) {
        this.f17497f.subscribe(new WindowBoundaryMainObserver(observer, this.f18690h, this.f18689g));
    }
}
