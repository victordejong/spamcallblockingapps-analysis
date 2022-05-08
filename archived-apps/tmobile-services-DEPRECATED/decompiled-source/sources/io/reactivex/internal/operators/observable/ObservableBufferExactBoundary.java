package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.QueueDrainObserver;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.util.QueueDrainHelper;
import io.reactivex.observers.DisposableObserver;
import io.reactivex.observers.SerializedObserver;
import java.util.Collection;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBufferExactBoundary.class */
public final class ObservableBufferExactBoundary<T, U extends Collection<? super T>, B> extends AbstractObservableWithUpstream<T, U> {

    /* renamed from: g */
    final ObservableSource<B> f17602g;

    /* renamed from: h */
    final Callable<U> f17603h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferBoundaryObserver.class */
    static final class BufferBoundaryObserver<T, U extends Collection<? super T>, B> extends DisposableObserver<B> {

        /* renamed from: g */
        final BufferExactBoundaryObserver<T, U, B> f17604g;

        BufferBoundaryObserver(BufferExactBoundaryObserver<T, U, B> bufferExactBoundaryObserver) {
            this.f17604g = bufferExactBoundaryObserver;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17604g.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f17604g.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(B b) {
            this.f17604g.m3890k();
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferExactBoundaryObserver.class */
    static final class BufferExactBoundaryObserver<T, U extends Collection<? super T>, B> extends QueueDrainObserver<T, U, U> implements Observer<T>, Disposable {

        /* renamed from: l */
        final Callable<U> f17605l;

        /* renamed from: m */
        final ObservableSource<B> f17606m;

        /* renamed from: n */
        Disposable f17607n;

        /* renamed from: o */
        Disposable f17608o;

        /* renamed from: p */
        U f17609p;

        BufferExactBoundaryObserver(Observer<? super U> observer, Callable<U> callable, ObservableSource<B> observableSource) {
            super(observer, new MpscLinkedQueue());
            this.f17605l = callable;
            this.f17606m = observableSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f15216i) {
                this.f15216i = true;
                this.f17608o.dispose();
                this.f17607n.dispose();
                if (m4344f()) {
                    this.f15215h.clear();
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15216i;
        }

        /* renamed from: j */
        public void mo3421e(Observer<? super U> observer, U u) {
            this.f15214g.onNext(u);
        }

        /* renamed from: k */
        void m3890k() {
            try {
                U call = this.f17605l.call();
                ObjectHelper.m4363e(call, "The buffer supplied is null");
                U u = call;
                synchronized (this) {
                    U u2 = this.f17609p;
                    if (u2 != null) {
                        this.f17609p = u;
                        m4342h(u2, false, this);
                    }
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                dispose();
                this.f15214g.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            synchronized (this) {
                U u = this.f17609p;
                if (u != null) {
                    this.f17609p = null;
                    this.f15215h.offer(u);
                    this.f15217j = true;
                    if (m4344f()) {
                        QueueDrainHelper.m3402d(this.f15215h, this.f15214g, false, this, this);
                    }
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            dispose();
            this.f15214g.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            synchronized (this) {
                U u = this.f17609p;
                if (u != null) {
                    u.add(t);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17607n, disposable)) {
                this.f17607n = disposable;
                try {
                    U call = this.f17605l.call();
                    ObjectHelper.m4363e(call, "The buffer supplied is null");
                    this.f17609p = call;
                    BufferBoundaryObserver bufferBoundaryObserver = new BufferBoundaryObserver(this);
                    this.f17608o = bufferBoundaryObserver;
                    this.f15214g.onSubscribe(this);
                    if (!this.f15216i) {
                        this.f17606m.subscribe(bufferBoundaryObserver);
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f15216i = true;
                    disposable.dispose();
                    EmptyDisposable.error(th, this.f15214g);
                }
            }
        }
    }

    public ObservableBufferExactBoundary(ObservableSource<T> observableSource, ObservableSource<B> observableSource2, Callable<U> callable) {
        super(observableSource);
        this.f17602g = observableSource2;
        this.f17603h = callable;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super U> observer) {
        this.f17497f.subscribe(new BufferExactBoundaryObserver(new SerializedObserver(observer), this.f17603h, this.f17602g));
    }
}
