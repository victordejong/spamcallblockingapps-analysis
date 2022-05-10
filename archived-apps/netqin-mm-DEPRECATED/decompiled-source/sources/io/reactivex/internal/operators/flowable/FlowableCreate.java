package io.reactivex.internal.operators.flowable;

import io.reactivex.BackpressureStrategy;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9816f;
import p530d.p541c.AbstractC9818g;
import p530d.p541c.p542a0.AbstractC9643f;
import p530d.p541c.p543b0.p546c.AbstractC9660i;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate.class */
public final class FlowableCreate<T> extends AbstractC9814e<T> {

    /* renamed from: b */
    public final AbstractC9818g<T> f38353b;

    /* renamed from: c */
    public final BackpressureStrategy f38354c;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter.class */
    public static abstract class BaseEmitter<T> extends AtomicLong implements AbstractC9816f<T>, AbstractC10434d {
        public static final long serialVersionUID = 7326289992464377023L;
        public final AbstractC10433c<? super T> actual;
        public final SequentialDisposable serial = new SequentialDisposable();

        public BaseEmitter(AbstractC10433c<? super T> cVar) {
            this.actual = cVar;
        }

        @Override // p611j.p612a.AbstractC10434d
        public final void cancel() {
            this.serial.dispose();
            onUnsubscribed();
        }

        public void complete() {
            if (!isCancelled()) {
                try {
                    this.actual.onComplete();
                } finally {
                    this.serial.dispose();
                }
            }
        }

        /* JADX WARN: Finally extract failed */
        public boolean error(Throwable th) {
            Throwable th2 = th;
            if (th == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (isCancelled()) {
                return false;
            }
            try {
                this.actual.onError(th2);
                this.serial.dispose();
                return true;
            } catch (Throwable th3) {
                this.serial.dispose();
                throw th3;
            }
        }

        public final boolean isCancelled() {
            return this.serial.isDisposed();
        }

        @Override // p530d.p541c.AbstractC9811d
        public void onComplete() {
            complete();
        }

        @Override // p530d.p541c.AbstractC9811d
        public final void onError(Throwable th) {
            if (!tryOnError(th)) {
                C9815a.m1923b(th);
            }
        }

        public void onRequested() {
        }

        public void onUnsubscribed() {
        }

        @Override // p611j.p612a.AbstractC10434d
        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                C9800b.m2012a(this, j);
                onRequested();
            }
        }

        public final long requested() {
            return get();
        }

        public final AbstractC9816f<T> serialize() {
            return new SerializedEmitter(this);
        }

        public final void setCancellable(AbstractC9643f fVar) {
            setDisposable(new CancellableDisposable(fVar));
        }

        public final void setDisposable(AbstractC9861b bVar) {
            this.serial.update(bVar);
        }

        @Override // java.util.concurrent.atomic.AtomicLong
        public String toString() {
            return String.format("%s{%s}", getClass().getSimpleName(), super.toString());
        }

        public boolean tryOnError(Throwable th) {
            return error(th);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$BufferAsyncEmitter.class */
    public static final class BufferAsyncEmitter<T> extends BaseEmitter<T> {
        public static final long serialVersionUID = 2427151001689639875L;
        public volatile boolean done;
        public Throwable error;
        public final C9772a<T> queue;
        public final AtomicInteger wip = new AtomicInteger();

        public BufferAsyncEmitter(AbstractC10433c<? super T> cVar, int i) {
            super(cVar);
            this.queue = new C9772a<>(i);
        }

        public void drain() {
            int addAndGet;
            if (this.wip.getAndIncrement() == 0) {
                AbstractC10433c<? super T> cVar = this.actual;
                C9772a<T> aVar = this.queue;
                int i = 1;
                do {
                    long j = get();
                    long j2 = 0;
                    while (j2 != j) {
                        if (isCancelled()) {
                            aVar.clear();
                            return;
                        }
                        boolean z = this.done;
                        Object obj = (T) aVar.poll();
                        boolean z2 = obj == null;
                        if (z && z2) {
                            Throwable th = this.error;
                            if (th != null) {
                                error(th);
                                return;
                            } else {
                                complete();
                                return;
                            }
                        } else if (z2) {
                            break;
                        } else {
                            cVar.onNext(obj);
                            j2++;
                        }
                    }
                    if (j2 == j) {
                        if (isCancelled()) {
                            aVar.clear();
                            return;
                        }
                        boolean z3 = this.done;
                        boolean isEmpty = aVar.isEmpty();
                        if (z3 && isEmpty) {
                            Throwable th2 = this.error;
                            if (th2 != null) {
                                error(th2);
                                return;
                            } else {
                                complete();
                                return;
                            }
                        }
                    }
                    if (j2 != 0) {
                        C9800b.m2009c(this, j2);
                    }
                    addAndGet = this.wip.addAndGet(-i);
                    i = addAndGet;
                } while (addAndGet != 0);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter, p530d.p541c.AbstractC9811d
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // p530d.p541c.AbstractC9811d
        public void onNext(T t) {
            if (!this.done && !isCancelled()) {
                if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                    return;
                }
                this.queue.offer(t);
                drain();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        public void onRequested() {
            drain();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        public void onUnsubscribed() {
            if (this.wip.getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        public boolean tryOnError(Throwable th) {
            if (this.done || isCancelled()) {
                return false;
            }
            Throwable th2 = th;
            if (th == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.error = th2;
            this.done = true;
            drain();
            return true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$DropAsyncEmitter.class */
    public static final class DropAsyncEmitter<T> extends NoOverflowBaseAsyncEmitter<T> {
        public static final long serialVersionUID = 8360058422307496563L;

        public DropAsyncEmitter(AbstractC10433c<? super T> cVar) {
            super(cVar);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.NoOverflowBaseAsyncEmitter
        public void onOverflow() {
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$ErrorAsyncEmitter.class */
    public static final class ErrorAsyncEmitter<T> extends NoOverflowBaseAsyncEmitter<T> {
        public static final long serialVersionUID = 338953216916120960L;

        public ErrorAsyncEmitter(AbstractC10433c<? super T> cVar) {
            super(cVar);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.NoOverflowBaseAsyncEmitter
        public void onOverflow() {
            onError(new MissingBackpressureException("create: could not emit value due to lack of requests"));
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter.class */
    public static final class LatestAsyncEmitter<T> extends BaseEmitter<T> {
        public static final long serialVersionUID = 4023437720691792495L;
        public volatile boolean done;
        public Throwable error;
        public final AtomicReference<T> queue = new AtomicReference<>();
        public final AtomicInteger wip = new AtomicInteger();

        public LatestAsyncEmitter(AbstractC10433c<? super T> cVar) {
            super(cVar);
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x0095, code lost:
            if (r0 != r0) goto L_0x00dd;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x009c, code lost:
            if (isCancelled() == false) goto L_0x00a5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x009f, code lost:
            r0.lazySet(null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00a4, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00a5, code lost:
            r0 = r5.done;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00b3, code lost:
            if (r0.get() != null) goto L_0x00b9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00b6, code lost:
            r16 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00bb, code lost:
            if (r0 == false) goto L_0x00dd;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00c0, code lost:
            if (r16 == false) goto L_0x00dd;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00c3, code lost:
            r0 = r5.error;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00cb, code lost:
            if (r0 == null) goto L_0x00d8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00ce, code lost:
            error(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00d8, code lost:
            complete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00dc, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00e1, code lost:
            if (r0 == 0) goto L_0x00eb;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00e4, code lost:
            p530d.p541c.p543b0.p557i.C9800b.m2009c(r5, r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00eb, code lost:
            r0 = r5.wip.addAndGet(-r8);
            r8 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:?, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void drain() {
            /*
                Method dump skipped, instructions count: 255
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableCreate.LatestAsyncEmitter.drain():void");
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter, p530d.p541c.AbstractC9811d
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // p530d.p541c.AbstractC9811d
        public void onNext(T t) {
            if (!this.done && !isCancelled()) {
                if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                    return;
                }
                this.queue.set(t);
                drain();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        public void onRequested() {
            drain();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        public void onUnsubscribed() {
            if (this.wip.getAndIncrement() == 0) {
                this.queue.lazySet(null);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        public boolean tryOnError(Throwable th) {
            if (this.done || isCancelled()) {
                return false;
            }
            if (th == null) {
                onError(new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources."));
            }
            this.error = th;
            this.done = true;
            drain();
            return true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter.class */
    public static final class MissingEmitter<T> extends BaseEmitter<T> {
        public static final long serialVersionUID = 3776720187248809713L;

        public MissingEmitter(AbstractC10433c<? super T> cVar) {
            super(cVar);
        }

        @Override // p530d.p541c.AbstractC9811d
        public void onNext(T t) {
            long j;
            if (!isCancelled()) {
                if (t != null) {
                    this.actual.onNext(t);
                    do {
                        j = get();
                        if (j == 0) {
                            return;
                        }
                    } while (!compareAndSet(j, j - 1));
                    return;
                }
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$NoOverflowBaseAsyncEmitter.class */
    public static abstract class NoOverflowBaseAsyncEmitter<T> extends BaseEmitter<T> {
        public static final long serialVersionUID = 4127754106204442833L;

        public NoOverflowBaseAsyncEmitter(AbstractC10433c<? super T> cVar) {
            super(cVar);
        }

        @Override // p530d.p541c.AbstractC9811d
        public final void onNext(T t) {
            if (!isCancelled()) {
                if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else if (get() != 0) {
                    this.actual.onNext(t);
                    C9800b.m2009c(this, 1L);
                } else {
                    onOverflow();
                }
            }
        }

        public abstract void onOverflow();
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter.class */
    public static final class SerializedEmitter<T> extends AtomicInteger implements AbstractC9816f<T> {
        public static final long serialVersionUID = 4883307006032401862L;
        public volatile boolean done;
        public final BaseEmitter<T> emitter;
        public final AtomicThrowable error = new AtomicThrowable();
        public final AbstractC9660i<T> queue = new C9772a(16);

        public SerializedEmitter(BaseEmitter<T> baseEmitter) {
            this.emitter = baseEmitter;
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        public void drainLoop() {
            BaseEmitter<T> baseEmitter = this.emitter;
            AbstractC9660i<T> iVar = this.queue;
            AtomicThrowable atomicThrowable = this.error;
            int i = 1;
            while (!baseEmitter.isCancelled()) {
                if (atomicThrowable.get() != null) {
                    iVar.clear();
                    baseEmitter.onError(atomicThrowable.terminate());
                    return;
                }
                boolean z = this.done;
                T poll = iVar.poll();
                boolean z2 = poll == null;
                if (z && z2) {
                    baseEmitter.onComplete();
                    return;
                } else if (z2) {
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                } else {
                    baseEmitter.onNext(poll);
                }
            }
            iVar.clear();
        }

        public boolean isCancelled() {
            return this.emitter.isCancelled();
        }

        @Override // p530d.p541c.AbstractC9811d
        public void onComplete() {
            if (!this.emitter.isCancelled() && !this.done) {
                this.done = true;
                drain();
            }
        }

        @Override // p530d.p541c.AbstractC9811d
        public void onError(Throwable th) {
            if (!tryOnError(th)) {
                C9815a.m1923b(th);
            }
        }

        @Override // p530d.p541c.AbstractC9811d
        public void onNext(T t) {
            if (!this.emitter.isCancelled() && !this.done) {
                if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                    return;
                }
                if (get() != 0 || !compareAndSet(0, 1)) {
                    AbstractC9660i<T> iVar = this.queue;
                    synchronized (iVar) {
                        iVar.offer(t);
                    }
                    if (getAndIncrement() != 0) {
                        return;
                    }
                } else {
                    this.emitter.onNext(t);
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
                drainLoop();
            }
        }

        public long requested() {
            return this.emitter.requested();
        }

        public AbstractC9816f<T> serialize() {
            return this;
        }

        public void setCancellable(AbstractC9643f fVar) {
            this.emitter.setCancellable(fVar);
        }

        public void setDisposable(AbstractC9861b bVar) {
            this.emitter.setDisposable(bVar);
        }

        @Override // java.util.concurrent.atomic.AtomicInteger
        public String toString() {
            return this.emitter.toString();
        }

        public boolean tryOnError(Throwable th) {
            if (this.emitter.isCancelled() || this.done) {
                return false;
            }
            Throwable th2 = th;
            if (th == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (!this.error.addThrowable(th2)) {
                return false;
            }
            this.done = true;
            drain();
            return true;
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableCreate$a */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$a.class */
    public static /* synthetic */ class C10403a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f38355a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[BackpressureStrategy.values().length];
            f38355a = iArr;
            try {
                iArr[BackpressureStrategy.MISSING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f38355a[BackpressureStrategy.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f38355a[BackpressureStrategy.DROP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f38355a[BackpressureStrategy.LATEST.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public FlowableCreate(AbstractC9818g<T> gVar, BackpressureStrategy backpressureStrategy) {
        this.f38353b = gVar;
        this.f38354c = backpressureStrategy;
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super T> cVar) {
        int i = C10403a.f38355a[this.f38354c.ordinal()];
        BaseEmitter bufferAsyncEmitter = i != 1 ? i != 2 ? i != 3 ? i != 4 ? new BufferAsyncEmitter(cVar, AbstractC9814e.m1946g()) : new LatestAsyncEmitter(cVar) : new DropAsyncEmitter(cVar) : new ErrorAsyncEmitter(cVar) : new MissingEmitter(cVar);
        cVar.onSubscribe(bufferAsyncEmitter);
        try {
            this.f38353b.mo1917a(bufferAsyncEmitter);
        } catch (Throwable th) {
            C9863a.m1822b(th);
            bufferAsyncEmitter.onError(th);
        }
    }
}
