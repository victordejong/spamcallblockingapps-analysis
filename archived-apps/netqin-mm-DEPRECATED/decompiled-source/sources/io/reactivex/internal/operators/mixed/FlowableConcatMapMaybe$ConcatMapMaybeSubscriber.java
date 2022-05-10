package io.reactivex.internal.operators.mixed;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p546c.AbstractC9660i;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber.class */
public final class FlowableConcatMapMaybe$ConcatMapMaybeSubscriber<T, R> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d {
    public static final int STATE_ACTIVE = 1;
    public static final int STATE_INACTIVE = 0;
    public static final int STATE_RESULT_VALUE = 2;
    public static final long serialVersionUID = -9140123220065488293L;
    public volatile boolean cancelled;
    public int consumed;
    public volatile boolean done;
    public final AbstractC10433c<? super R> downstream;
    public long emitted;
    public final ErrorMode errorMode;
    public R item;
    public final AbstractC9645h<? super T, ? extends AbstractC9838m<? extends R>> mapper;
    public final int prefetch;
    public final AbstractC9660i<T> queue;
    public volatile int state;
    public AbstractC10434d upstream;
    public final AtomicLong requested = new AtomicLong();
    public final AtomicThrowable errors = new AtomicThrowable();
    public final ConcatMapMaybeObserver<R> inner = new ConcatMapMaybeObserver<>(this);

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber$ConcatMapMaybeObserver.class */
    public static final class ConcatMapMaybeObserver<R> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<R> {
        public static final long serialVersionUID = -3051469169682093892L;
        public final FlowableConcatMapMaybe$ConcatMapMaybeSubscriber<?, R> parent;

        public ConcatMapMaybeObserver(FlowableConcatMapMaybe$ConcatMapMaybeSubscriber<?, R> flowableConcatMapMaybe$ConcatMapMaybeSubscriber) {
            this.parent = flowableConcatMapMaybe$ConcatMapMaybeSubscriber;
        }

        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onComplete() {
            this.parent.innerComplete();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            this.parent.innerError(th);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.replace(this, bVar);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(R r) {
            this.parent.innerSuccess(r);
        }
    }

    public FlowableConcatMapMaybe$ConcatMapMaybeSubscriber(AbstractC10433c<? super R> cVar, AbstractC9645h<? super T, ? extends AbstractC9838m<? extends R>> hVar, int i, ErrorMode errorMode) {
        this.downstream = cVar;
        this.mapper = hVar;
        this.prefetch = i;
        this.errorMode = errorMode;
        this.queue = new SpscArrayQueue(i);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.cancelled = true;
        this.upstream.cancel();
        this.inner.dispose();
        if (getAndIncrement() == 0) {
            this.queue.clear();
            this.item = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0068, code lost:
        r0.clear();
        r6.item = null;
        r0.onError(r0.terminate());
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x007e, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drain() {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.mixed.FlowableConcatMapMaybe$ConcatMapMaybeSubscriber.drain():void");
    }

    public void innerComplete() {
        this.state = 0;
        drain();
    }

    public void innerError(Throwable th) {
        if (this.errors.addThrowable(th)) {
            if (this.errorMode != ErrorMode.END) {
                this.upstream.cancel();
            }
            this.state = 0;
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    public void innerSuccess(R r) {
        this.item = r;
        this.state = 2;
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.done = true;
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.errors.addThrowable(th)) {
            if (this.errorMode == ErrorMode.IMMEDIATE) {
                this.inner.dispose();
            }
            this.done = true;
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (!this.queue.offer(t)) {
            this.upstream.cancel();
            onError(new MissingBackpressureException("queue full?!"));
            return;
        }
        drain();
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
            dVar.request(this.prefetch);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        C9800b.m2012a(this.requested, j);
        drain();
    }
}
