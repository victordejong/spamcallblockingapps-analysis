package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTimer.class */
public final class MaybeTimer extends Maybe<Long> {

    /* renamed from: f */
    final long f17245f;

    /* renamed from: g */
    final TimeUnit f17246g;

    /* renamed from: h */
    final Scheduler f17247h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTimer$TimerDisposable.class */
    static final class TimerDisposable extends AtomicReference<Disposable> implements Disposable, Runnable {
        private static final long serialVersionUID = 2875964065294031672L;

        /* renamed from: f */
        final MaybeObserver<? super Long> f17248f;

        TimerDisposable(MaybeObserver<? super Long> maybeObserver) {
            this.f17248f = maybeObserver;
        }

        /* renamed from: a */
        void m3976a(Disposable disposable) {
            DisposableHelper.replace(this, disposable);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f17248f.onSuccess(0L);
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super Long> maybeObserver) {
        TimerDisposable timerDisposable = new TimerDisposable(maybeObserver);
        maybeObserver.onSubscribe(timerDisposable);
        timerDisposable.m3976a(this.f17247h.mo3498e(timerDisposable, this.f17245f, this.f17246g));
    }
}
