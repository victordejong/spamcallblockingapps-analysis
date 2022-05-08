package p660rx.internal.operators;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import p660rx.Scheduler;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Action0;
import p660rx.plugins.RxJavaHooks;
/* renamed from: rx.internal.operators.SingleTimeout */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/SingleTimeout.class */
public final class SingleTimeout<T> implements Single.OnSubscribe<T> {
    public final Single.OnSubscribe<? extends T> other;
    public final Scheduler scheduler;
    public final Single.OnSubscribe<T> source;
    public final long timeout;
    public final TimeUnit unit;

    /* renamed from: rx.internal.operators.SingleTimeout$TimeoutSingleSubscriber */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/SingleTimeout$TimeoutSingleSubscriber.class */
    public static final class TimeoutSingleSubscriber<T> extends SingleSubscriber<T> implements Action0 {
        public final SingleSubscriber<? super T> actual;
        public final AtomicBoolean once = new AtomicBoolean();
        public final Single.OnSubscribe<? extends T> other;

        /* renamed from: rx.internal.operators.SingleTimeout$TimeoutSingleSubscriber$OtherSubscriber */
        /* loaded from: classes3-dex2jar.jar:rx/internal/operators/SingleTimeout$TimeoutSingleSubscriber$OtherSubscriber.class */
        public static final class OtherSubscriber<T> extends SingleSubscriber<T> {
            public final SingleSubscriber<? super T> actual;

            public OtherSubscriber(SingleSubscriber<? super T> singleSubscriber) {
                this.actual = singleSubscriber;
            }

            @Override // p660rx.SingleSubscriber
            public void onError(Throwable th) {
                this.actual.onError(th);
            }

            @Override // p660rx.SingleSubscriber
            public void onSuccess(T t) {
                this.actual.onSuccess(t);
            }
        }

        public TimeoutSingleSubscriber(SingleSubscriber<? super T> singleSubscriber, Single.OnSubscribe<? extends T> onSubscribe) {
            this.actual = singleSubscriber;
            this.other = onSubscribe;
        }

        @Override // p660rx.functions.Action0
        public void call() {
            if (this.once.compareAndSet(false, true)) {
                try {
                    Single.OnSubscribe<? extends T> onSubscribe = this.other;
                    if (onSubscribe == null) {
                        this.actual.onError(new TimeoutException());
                    } else {
                        OtherSubscriber otherSubscriber = new OtherSubscriber(this.actual);
                        this.actual.add(otherSubscriber);
                        onSubscribe.call(otherSubscriber);
                    }
                } finally {
                    unsubscribe();
                }
            }
        }

        @Override // p660rx.SingleSubscriber
        public void onError(Throwable th) {
            if (this.once.compareAndSet(false, true)) {
                try {
                    this.actual.onError(th);
                } finally {
                    unsubscribe();
                }
            } else {
                RxJavaHooks.onError(th);
            }
        }

        @Override // p660rx.SingleSubscriber
        public void onSuccess(T t) {
            if (this.once.compareAndSet(false, true)) {
                try {
                    this.actual.onSuccess(t);
                } finally {
                    unsubscribe();
                }
            }
        }
    }

    public SingleTimeout(Single.OnSubscribe<T> onSubscribe, long j, TimeUnit timeUnit, Scheduler scheduler, Single.OnSubscribe<? extends T> onSubscribe2) {
        this.source = onSubscribe;
        this.timeout = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.other = onSubscribe2;
    }

    @Override // p660rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object obj) {
        call((SingleSubscriber) ((SingleSubscriber) obj));
    }

    public void call(SingleSubscriber<? super T> singleSubscriber) {
        TimeoutSingleSubscriber timeoutSingleSubscriber = new TimeoutSingleSubscriber(singleSubscriber, this.other);
        Scheduler.Worker createWorker = this.scheduler.createWorker();
        timeoutSingleSubscriber.add(createWorker);
        singleSubscriber.add(timeoutSingleSubscriber);
        createWorker.schedule(timeoutSingleSubscriber, this.timeout, this.unit);
        this.source.call(timeoutSingleSubscriber);
    }
}
