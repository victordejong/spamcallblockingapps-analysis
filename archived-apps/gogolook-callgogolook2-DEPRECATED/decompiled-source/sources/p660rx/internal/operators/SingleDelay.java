package p660rx.internal.operators;

import java.util.concurrent.TimeUnit;
import p660rx.Scheduler;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Action0;
/* renamed from: rx.internal.operators.SingleDelay */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/SingleDelay.class */
public final class SingleDelay<T> implements Single.OnSubscribe<T> {
    public final long delay;
    public final Scheduler scheduler;
    public final Single.OnSubscribe<T> source;
    public final TimeUnit unit;

    /* renamed from: rx.internal.operators.SingleDelay$ObserveOnSingleSubscriber */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/SingleDelay$ObserveOnSingleSubscriber.class */
    public static final class ObserveOnSingleSubscriber<T> extends SingleSubscriber<T> implements Action0 {
        public final SingleSubscriber<? super T> actual;
        public final long delay;
        public Throwable error;
        public final TimeUnit unit;
        public T value;

        /* renamed from: w */
        public final Scheduler.Worker f33469w;

        public ObserveOnSingleSubscriber(SingleSubscriber<? super T> singleSubscriber, Scheduler.Worker worker, long j, TimeUnit timeUnit) {
            this.actual = singleSubscriber;
            this.f33469w = worker;
            this.delay = j;
            this.unit = timeUnit;
        }

        @Override // p660rx.functions.Action0
        public void call() {
            try {
                Throwable th = this.error;
                if (th != null) {
                    this.error = null;
                    this.actual.onError(th);
                } else {
                    T t = this.value;
                    this.value = null;
                    this.actual.onSuccess(t);
                }
            } finally {
                this.f33469w.unsubscribe();
            }
        }

        @Override // p660rx.SingleSubscriber
        public void onError(Throwable th) {
            this.error = th;
            this.f33469w.schedule(this, this.delay, this.unit);
        }

        @Override // p660rx.SingleSubscriber
        public void onSuccess(T t) {
            this.value = t;
            this.f33469w.schedule(this, this.delay, this.unit);
        }
    }

    public SingleDelay(Single.OnSubscribe<T> onSubscribe, long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.source = onSubscribe;
        this.scheduler = scheduler;
        this.delay = j;
        this.unit = timeUnit;
    }

    @Override // p660rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object obj) {
        call((SingleSubscriber) ((SingleSubscriber) obj));
    }

    public void call(SingleSubscriber<? super T> singleSubscriber) {
        Scheduler.Worker createWorker = this.scheduler.createWorker();
        ObserveOnSingleSubscriber observeOnSingleSubscriber = new ObserveOnSingleSubscriber(singleSubscriber, createWorker, this.delay, this.unit);
        singleSubscriber.add(createWorker);
        singleSubscriber.add(observeOnSingleSubscriber);
        this.source.call(observeOnSingleSubscriber);
    }
}
