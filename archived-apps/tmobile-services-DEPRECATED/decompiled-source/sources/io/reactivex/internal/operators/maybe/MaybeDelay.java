package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDelay.class */
public final class MaybeDelay<T> extends AbstractMaybeWithUpstream<T, T> {

    /* renamed from: g */
    final long f17012g;

    /* renamed from: h */
    final TimeUnit f17013h;

    /* renamed from: i */
    final Scheduler f17014i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver.class */
    static final class DelayMaybeObserver<T> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable, Runnable {
        private static final long serialVersionUID = 5566860102500855068L;

        /* renamed from: f */
        final MaybeObserver<? super T> f17015f;

        /* renamed from: g */
        final long f17016g;

        /* renamed from: h */
        final TimeUnit f17017h;

        /* renamed from: i */
        final Scheduler f17018i;

        /* renamed from: j */
        T f17019j;

        /* renamed from: k */
        Throwable f17020k;

        DelayMaybeObserver(MaybeObserver<? super T> maybeObserver, long j, TimeUnit timeUnit, Scheduler scheduler) {
            this.f17015f = maybeObserver;
            this.f17016g = j;
            this.f17017h = timeUnit;
            this.f17018i = scheduler;
        }

        /* renamed from: a */
        void m4003a() {
            DisposableHelper.replace(this, this.f17018i.mo3498e(this, this.f17016g, this.f17017h));
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            m4003a();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17020k = th;
            m4003a();
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.f17015f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17019j = t;
            m4003a();
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f17020k;
            if (th != null) {
                this.f17015f.onError(th);
                return;
            }
            T t = this.f17019j;
            if (t != null) {
                this.f17015f.onSuccess(t);
            } else {
                this.f17015f.onComplete();
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f16960f.mo4485b(new DelayMaybeObserver(maybeObserver, this.f17012g, this.f17013h, this.f17014i));
    }
}
