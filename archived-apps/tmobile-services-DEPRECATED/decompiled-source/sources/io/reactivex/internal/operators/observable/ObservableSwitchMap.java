package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.QueueDisposable;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSwitchMap.class */
public final class ObservableSwitchMap<T, R> extends AbstractObservableWithUpstream<T, R> {

    /* renamed from: g */
    final Function<? super T, ? extends ObservableSource<? extends R>> f18475g;

    /* renamed from: h */
    final int f18476h;

    /* renamed from: i */
    final boolean f18477i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver.class */
    public static final class SwitchMapInnerObserver<T, R> extends AtomicReference<Disposable> implements Observer<R> {
        private static final long serialVersionUID = 3837284832786408377L;

        /* renamed from: f */
        final SwitchMapObserver<T, R> f18478f;

        /* renamed from: g */
        final long f18479g;

        /* renamed from: h */
        final int f18480h;

        /* renamed from: i */
        volatile SimpleQueue<R> f18481i;

        /* renamed from: j */
        volatile boolean f18482j;

        SwitchMapInnerObserver(SwitchMapObserver<T, R> switchMapObserver, long j, int i) {
            this.f18478f = switchMapObserver;
            this.f18479g = j;
            this.f18480h = i;
        }

        /* renamed from: a */
        public void m3679a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f18479g == this.f18478f.f18493o) {
                this.f18482j = true;
                this.f18478f.m3677b();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18478f.m3676c(this, th);
        }

        @Override // io.reactivex.Observer
        public void onNext(R r) {
            if (this.f18479g == this.f18478f.f18493o) {
                if (r != null) {
                    this.f18481i.offer(r);
                }
                this.f18478f.m3677b();
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                if (disposable instanceof QueueDisposable) {
                    QueueDisposable queueDisposable = (QueueDisposable) disposable;
                    int requestFusion = queueDisposable.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f18481i = queueDisposable;
                        this.f18482j = true;
                        this.f18478f.m3677b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f18481i = queueDisposable;
                        return;
                    }
                }
                this.f18481i = new SpscLinkedArrayQueue(this.f18480h);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver.class */
    static final class SwitchMapObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable {

        /* renamed from: p */
        static final SwitchMapInnerObserver<Object, Object> f18483p;
        private static final long serialVersionUID = -3491074160481096299L;

        /* renamed from: f */
        final Observer<? super R> f18484f;

        /* renamed from: g */
        final Function<? super T, ? extends ObservableSource<? extends R>> f18485g;

        /* renamed from: h */
        final int f18486h;

        /* renamed from: i */
        final boolean f18487i;

        /* renamed from: k */
        volatile boolean f18489k;

        /* renamed from: l */
        volatile boolean f18490l;

        /* renamed from: m */
        Disposable f18491m;

        /* renamed from: o */
        volatile long f18493o;

        /* renamed from: n */
        final AtomicReference<SwitchMapInnerObserver<T, R>> f18492n = new AtomicReference<>();

        /* renamed from: j */
        final AtomicThrowable f18488j = new AtomicThrowable();

        static {
            SwitchMapInnerObserver<Object, Object> switchMapInnerObserver = new SwitchMapInnerObserver<>(null, -1L, 1);
            f18483p = switchMapInnerObserver;
            switchMapInnerObserver.m3679a();
        }

        SwitchMapObserver(Observer<? super R> observer, Function<? super T, ? extends ObservableSource<? extends R>> function, int i, boolean z) {
            this.f18484f = observer;
            this.f18485g = function;
            this.f18486h = i;
            this.f18487i = z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        void m3678a() {
            SwitchMapInnerObserver<Object, Object> switchMapInnerObserver;
            SwitchMapInnerObserver<T, R> switchMapInnerObserver2 = this.f18492n.get();
            SwitchMapInnerObserver<Object, Object> switchMapInnerObserver3 = f18483p;
            if (switchMapInnerObserver2 != switchMapInnerObserver3 && (switchMapInnerObserver = (SwitchMapInnerObserver) this.f18492n.getAndSet(switchMapInnerObserver3)) != f18483p && switchMapInnerObserver != null) {
                switchMapInnerObserver.m3679a();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:103:0x01ba A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:111:0x001a A[SYNTHETIC] */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m3677b() {
            /*
                Method dump skipped, instructions count: 461
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableSwitchMap.SwitchMapObserver.m3677b():void");
        }

        /* renamed from: c */
        void m3676c(SwitchMapInnerObserver<T, R> switchMapInnerObserver, Throwable th) {
            if (switchMapInnerObserver.f18479g != this.f18493o || !this.f18488j.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            if (!this.f18487i) {
                this.f18491m.dispose();
                this.f18489k = true;
            }
            switchMapInnerObserver.f18482j = true;
            m3677b();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f18490l) {
                this.f18490l = true;
                this.f18491m.dispose();
                m3678a();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18490l;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f18489k) {
                this.f18489k = true;
                m3677b();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18489k || !this.f18488j.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            if (!this.f18487i) {
                m3678a();
            }
            this.f18489k = true;
            m3677b();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            SwitchMapInnerObserver<T, R> switchMapInnerObserver;
            long j = this.f18493o + 1;
            this.f18493o = j;
            SwitchMapInnerObserver<T, R> switchMapInnerObserver2 = this.f18492n.get();
            if (switchMapInnerObserver2 != null) {
                switchMapInnerObserver2.m3679a();
            }
            try {
                Object apply = this.f18485g.apply(t);
                ObjectHelper.m4363e(apply, "The ObservableSource returned is null");
                ObservableSource observableSource = (ObservableSource) apply;
                SwitchMapInnerObserver<T, R> switchMapInnerObserver3 = new SwitchMapInnerObserver<>(this, j, this.f18486h);
                do {
                    switchMapInnerObserver = this.f18492n.get();
                    if (switchMapInnerObserver == f18483p) {
                        return;
                    }
                } while (!this.f18492n.compareAndSet(switchMapInnerObserver, switchMapInnerObserver3));
                observableSource.subscribe(switchMapInnerObserver3);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f18491m.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18491m, disposable)) {
                this.f18491m = disposable;
                this.f18484f.onSubscribe(this);
            }
        }
    }

    public ObservableSwitchMap(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<? extends R>> function, int i, boolean z) {
        super(observableSource);
        this.f18475g = function;
        this.f18476h = i;
        this.f18477i = z;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super R> observer) {
        if (!ObservableScalarXMap.m3690b(this.f17497f, observer, this.f18475g)) {
            this.f17497f.subscribe(new SwitchMapObserver(observer, this.f18475g, this.f18476h, this.f18477i));
        }
    }
}
