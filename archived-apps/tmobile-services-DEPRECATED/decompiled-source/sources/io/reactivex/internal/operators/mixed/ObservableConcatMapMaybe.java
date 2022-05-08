package io.reactivex.internal.operators.mixed;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableConcatMapMaybe.class */
public final class ObservableConcatMapMaybe<T, R> extends Observable<R> {

    /* renamed from: f */
    final Observable<T> f17421f;

    /* renamed from: g */
    final Function<? super T, ? extends MaybeSource<? extends R>> f17422g;

    /* renamed from: h */
    final ErrorMode f17423h;

    /* renamed from: i */
    final int f17424i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableConcatMapMaybe$ConcatMapMaybeMainObserver.class */
    static final class ConcatMapMaybeMainObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -9140123220065488293L;

        /* renamed from: f */
        final Observer<? super R> f17425f;

        /* renamed from: g */
        final Function<? super T, ? extends MaybeSource<? extends R>> f17426g;

        /* renamed from: h */
        final AtomicThrowable f17427h = new AtomicThrowable();

        /* renamed from: i */
        final ConcatMapMaybeObserver<R> f17428i = new ConcatMapMaybeObserver<>(this);

        /* renamed from: j */
        final SimplePlainQueue<T> f17429j;

        /* renamed from: k */
        final ErrorMode f17430k;

        /* renamed from: l */
        Disposable f17431l;

        /* renamed from: m */
        volatile boolean f17432m;

        /* renamed from: n */
        volatile boolean f17433n;

        /* renamed from: o */
        R f17434o;

        /* renamed from: p */
        volatile int f17435p;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableConcatMapMaybe$ConcatMapMaybeMainObserver$ConcatMapMaybeObserver.class */
        public static final class ConcatMapMaybeObserver<R> extends AtomicReference<Disposable> implements MaybeObserver<R> {
            private static final long serialVersionUID = -3051469169682093892L;

            /* renamed from: f */
            final ConcatMapMaybeMainObserver<?, R> f17436f;

            ConcatMapMaybeObserver(ConcatMapMaybeMainObserver<?, R> concatMapMaybeMainObserver) {
                this.f17436f = concatMapMaybeMainObserver;
            }

            /* renamed from: a */
            void m3934a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                this.f17436f.m3937b();
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                this.f17436f.m3936c(th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.replace(this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(R r) {
                this.f17436f.m3935d(r);
            }
        }

        ConcatMapMaybeMainObserver(Observer<? super R> observer, Function<? super T, ? extends MaybeSource<? extends R>> function, int i, ErrorMode errorMode) {
            this.f17425f = observer;
            this.f17426g = function;
            this.f17430k = errorMode;
            this.f17429j = new SpscLinkedArrayQueue(i);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0056, code lost:
            r0.clear();
            r3.f17434o = null;
            r0.onError(r0.m3455b());
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x006c, code lost:
            return;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m3938a() {
            /*
                Method dump skipped, instructions count: 322
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.mixed.ObservableConcatMapMaybe.ConcatMapMaybeMainObserver.m3938a():void");
        }

        /* renamed from: b */
        void m3937b() {
            this.f17435p = 0;
            m3938a();
        }

        /* renamed from: c */
        void m3936c(Throwable th) {
            if (this.f17427h.m3456a(th)) {
                if (this.f17430k != ErrorMode.END) {
                    this.f17431l.dispose();
                }
                this.f17435p = 0;
                m3938a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: d */
        void m3935d(R r) {
            this.f17434o = r;
            this.f17435p = 2;
            m3938a();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17433n = true;
            this.f17431l.dispose();
            this.f17428i.m3934a();
            if (getAndIncrement() == 0) {
                this.f17429j.clear();
                this.f17434o = null;
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17433n;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17432m = true;
            m3938a();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17427h.m3456a(th)) {
                if (this.f17430k == ErrorMode.IMMEDIATE) {
                    this.f17428i.m3934a();
                }
                this.f17432m = true;
                m3938a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f17429j.offer(t);
            m3938a();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17431l, disposable)) {
                this.f17431l = disposable;
                this.f17425f.onSubscribe(this);
            }
        }
    }

    public ObservableConcatMapMaybe(Observable<T> observable, Function<? super T, ? extends MaybeSource<? extends R>> function, ErrorMode errorMode, int i) {
        this.f17421f = observable;
        this.f17422g = function;
        this.f17423h = errorMode;
        this.f17424i = i;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super R> observer) {
        if (!ScalarXMapZHelper.m3915b(this.f17421f, this.f17422g, observer)) {
            this.f17421f.subscribe(new ConcatMapMaybeMainObserver(observer, this.f17422g, this.f17424i, this.f17423h));
        }
    }
}
