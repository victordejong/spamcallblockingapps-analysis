package io.reactivex.internal.operators.single;

import io.reactivex.Scheduler;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleObserveOn.class */
public final class SingleObserveOn<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<T> f19135f;

    /* renamed from: g */
    final Scheduler f19136g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver.class */
    static final class ObserveOnSingleObserver<T> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable, Runnable {
        private static final long serialVersionUID = 3528003840217436037L;

        /* renamed from: f */
        final SingleObserver<? super T> f19137f;

        /* renamed from: g */
        final Scheduler f19138g;

        /* renamed from: h */
        T f19139h;

        /* renamed from: i */
        Throwable f19140i;

        ObserveOnSingleObserver(SingleObserver<? super T> singleObserver, Scheduler scheduler) {
            this.f19137f = singleObserver;
            this.f19138g = scheduler;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19140i = th;
            DisposableHelper.replace(this, this.f19138g.mo3499d(this));
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.f19137f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f19139h = t;
            DisposableHelper.replace(this, this.f19138g.mo3499d(this));
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f19140i;
            if (th != null) {
                this.f19137f.onError(th);
            } else {
                this.f19137f.onSuccess((T) this.f19139h);
            }
        }
    }

    public SingleObserveOn(SingleSource<T> singleSource, Scheduler scheduler) {
        this.f19135f = singleSource;
        this.f19136g = scheduler;
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19135f.mo4457b(new ObserveOnSingleObserver(singleObserver, this.f19136g));
    }
}
