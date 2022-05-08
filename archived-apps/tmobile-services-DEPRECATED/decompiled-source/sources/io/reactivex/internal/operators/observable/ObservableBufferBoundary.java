package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBufferBoundary.class */
public final class ObservableBufferBoundary<T, U extends Collection<? super T>, Open, Close> extends AbstractObservableWithUpstream<T, U> {

    /* renamed from: g */
    final Callable<U> f17575g;

    /* renamed from: h */
    final ObservableSource<? extends Open> f17576h;

    /* renamed from: i */
    final Function<? super Open, ? extends ObservableSource<? extends Close>> f17577i;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver.class */
    static final class BufferBoundaryObserver<T, C extends Collection<? super T>, Open, Close> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -8466418554264089604L;

        /* renamed from: f */
        final Observer<? super C> f17578f;

        /* renamed from: g */
        final Callable<C> f17579g;

        /* renamed from: h */
        final ObservableSource<? extends Open> f17580h;

        /* renamed from: i */
        final Function<? super Open, ? extends ObservableSource<? extends Close>> f17581i;

        /* renamed from: m */
        volatile boolean f17585m;

        /* renamed from: o */
        volatile boolean f17587o;

        /* renamed from: p */
        long f17588p;

        /* renamed from: n */
        final SpscLinkedArrayQueue<C> f17586n = new SpscLinkedArrayQueue<>(Observable.bufferSize());

        /* renamed from: j */
        final CompositeDisposable f17582j = new CompositeDisposable();

        /* renamed from: k */
        final AtomicReference<Disposable> f17583k = new AtomicReference<>();

        /* renamed from: q */
        Map<Long, C> f17589q = new LinkedHashMap();

        /* renamed from: l */
        final AtomicThrowable f17584l = new AtomicThrowable();

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver$BufferOpenObserver.class */
        static final class BufferOpenObserver<Open> extends AtomicReference<Disposable> implements Observer<Open>, Disposable {
            private static final long serialVersionUID = -8498650778633225126L;

            /* renamed from: f */
            final BufferBoundaryObserver<?, ?, Open, ?> f17590f;

            BufferOpenObserver(BufferBoundaryObserver<?, ?, Open, ?> bufferBoundaryObserver) {
                this.f17590f = bufferBoundaryObserver;
            }

            @Override // io.reactivex.disposables.Disposable
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.disposables.Disposable
            public boolean isDisposed() {
                return get() == DisposableHelper.DISPOSED;
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                lazySet(DisposableHelper.DISPOSED);
                this.f17590f.m3895e(this);
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                lazySet(DisposableHelper.DISPOSED);
                this.f17590f.m3899a(this, th);
            }

            @Override // io.reactivex.Observer
            public void onNext(Open open) {
                this.f17590f.m3896d(open);
            }

            @Override // io.reactivex.Observer
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }
        }

        BufferBoundaryObserver(Observer<? super C> observer, ObservableSource<? extends Open> observableSource, Function<? super Open, ? extends ObservableSource<? extends Close>> function, Callable<C> callable) {
            this.f17578f = observer;
            this.f17579g = callable;
            this.f17580h = observableSource;
            this.f17581i = function;
        }

        /* renamed from: a */
        void m3899a(Disposable disposable, Throwable th) {
            DisposableHelper.dispose(this.f17583k);
            this.f17582j.mo4424c(disposable);
            onError(th);
        }

        /* renamed from: b */
        void m3898b(BufferCloseObserver<T, C> bufferCloseObserver, long j) {
            boolean z;
            this.f17582j.mo4424c(bufferCloseObserver);
            if (this.f17582j.m4442g() == 0) {
                DisposableHelper.dispose(this.f17583k);
                z = true;
            } else {
                z = false;
            }
            synchronized (this) {
                if (this.f17589q != null) {
                    this.f17586n.offer(this.f17589q.remove(Long.valueOf(j)));
                    if (z) {
                        this.f17585m = true;
                    }
                    m3897c();
                }
            }
        }

        /* renamed from: c */
        void m3897c() {
            if (getAndIncrement() == 0) {
                Observer<? super C> observer = this.f17578f;
                SpscLinkedArrayQueue<C> spscLinkedArrayQueue = this.f17586n;
                int i = 1;
                while (!this.f17587o) {
                    boolean z = this.f17585m;
                    if (!z || this.f17584l.get() == null) {
                        C poll = spscLinkedArrayQueue.poll();
                        boolean z2 = poll == null;
                        if (z && z2) {
                            observer.onComplete();
                            return;
                        } else if (z2) {
                            int addAndGet = addAndGet(-i);
                            i = addAndGet;
                            if (addAndGet == 0) {
                                return;
                            }
                        } else {
                            observer.onNext(poll);
                        }
                    } else {
                        spscLinkedArrayQueue.clear();
                        observer.onError(this.f17584l.m3455b());
                        return;
                    }
                }
                spscLinkedArrayQueue.clear();
            }
        }

        /* renamed from: d */
        void m3896d(Open open) {
            try {
                C call = this.f17579g.call();
                ObjectHelper.m4363e(call, "The bufferSupplier returned a null Collection");
                C c = call;
                Object apply = this.f17581i.apply(open);
                ObjectHelper.m4363e(apply, "The bufferClose returned a null ObservableSource");
                ObservableSource observableSource = (ObservableSource) apply;
                long j = this.f17588p;
                this.f17588p = 1 + j;
                synchronized (this) {
                    Map<Long, C> map = this.f17589q;
                    if (map != null) {
                        map.put(Long.valueOf(j), c);
                        BufferCloseObserver bufferCloseObserver = new BufferCloseObserver(this, j);
                        this.f17582j.mo4425b(bufferCloseObserver);
                        observableSource.subscribe(bufferCloseObserver);
                    }
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                DisposableHelper.dispose(this.f17583k);
                onError(th);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (DisposableHelper.dispose(this.f17583k)) {
                this.f17587o = true;
                this.f17582j.dispose();
                synchronized (this) {
                    this.f17589q = null;
                }
                if (getAndIncrement() != 0) {
                    this.f17586n.clear();
                }
            }
        }

        /* renamed from: e */
        void m3895e(BufferOpenObserver<Open> bufferOpenObserver) {
            this.f17582j.mo4424c(bufferOpenObserver);
            if (this.f17582j.m4442g() == 0) {
                DisposableHelper.dispose(this.f17583k);
                this.f17585m = true;
                m3897c();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f17583k.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17582j.dispose();
            synchronized (this) {
                Map<Long, C> map = this.f17589q;
                if (map != null) {
                    for (C c : map.values()) {
                        this.f17586n.offer(c);
                    }
                    this.f17589q = null;
                    this.f17585m = true;
                    m3897c();
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17584l.m3456a(th)) {
                this.f17582j.dispose();
                synchronized (this) {
                    this.f17589q = null;
                }
                this.f17585m = true;
                m3897c();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            synchronized (this) {
                Map<Long, C> map = this.f17589q;
                if (map != null) {
                    for (C c : map.values()) {
                        c.add(t);
                    }
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this.f17583k, disposable)) {
                BufferOpenObserver bufferOpenObserver = new BufferOpenObserver(this);
                this.f17582j.mo4425b(bufferOpenObserver);
                this.f17580h.subscribe(bufferOpenObserver);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver.class */
    public static final class BufferCloseObserver<T, C extends Collection<? super T>> extends AtomicReference<Disposable> implements Observer<Object>, Disposable {
        private static final long serialVersionUID = -8498650778633225126L;

        /* renamed from: f */
        final BufferBoundaryObserver<T, C, ?, ?> f17591f;

        /* renamed from: g */
        final long f17592g;

        BufferCloseObserver(BufferBoundaryObserver<T, C, ?, ?> bufferBoundaryObserver, long j) {
            this.f17591f = bufferBoundaryObserver;
            this.f17592g = j;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            Disposable disposable = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable != disposableHelper) {
                lazySet(disposableHelper);
                this.f17591f.m3898b(this, this.f17592g);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            Disposable disposable = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable != disposableHelper) {
                lazySet(disposableHelper);
                this.f17591f.m3899a(this, th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
            Disposable disposable = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable != disposableHelper) {
                lazySet(disposableHelper);
                disposable.dispose();
                this.f17591f.m3898b(this, this.f17592g);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }
    }

    public ObservableBufferBoundary(ObservableSource<T> observableSource, ObservableSource<? extends Open> observableSource2, Function<? super Open, ? extends ObservableSource<? extends Close>> function, Callable<U> callable) {
        super(observableSource);
        this.f17576h = observableSource2;
        this.f17577i = function;
        this.f17575g = callable;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super U> observer) {
        BufferBoundaryObserver bufferBoundaryObserver = new BufferBoundaryObserver(observer, this.f17576h, this.f17577i, this.f17575g);
        observer.onSubscribe(bufferBoundaryObserver);
        this.f17497f.subscribe(bufferBoundaryObserver);
    }
}
