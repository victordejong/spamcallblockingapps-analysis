package io.reactivex.internal.operators.parallel;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.parallel.ParallelFlowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelRunOn.class */
public final class ParallelRunOn<T> extends ParallelFlowable<T> {
    final int prefetch;
    final Scheduler scheduler;
    final ParallelFlowable<? extends T> source;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber.class */
    static abstract class BaseRunOnSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = 9222303586456402150L;
        volatile boolean cancelled;
        int consumed;
        volatile boolean done;
        Throwable error;
        final int limit;
        final int prefetch;
        final SpscArrayQueue<T> queue;
        final AtomicLong requested = new AtomicLong();

        /* renamed from: s */
        Subscription f670s;
        final Scheduler.Worker worker;

        BaseRunOnSubscriber(int i, SpscArrayQueue<T> spscArrayQueue, Scheduler.Worker worker) {
            this.prefetch = i;
            this.queue = spscArrayQueue;
            this.limit = i - (i >> 2);
            this.worker = worker;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.f670s.cancel();
                this.worker.dispose();
                if (getAndIncrement() == 0) {
                    this.queue.clear();
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            if (!this.done) {
                this.done = true;
                schedule();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.error = th;
            this.done = true;
            schedule();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(T t) {
            if (!this.done) {
                if (!this.queue.offer(t)) {
                    this.f670s.cancel();
                    onError(new MissingBackpressureException("Queue is full?!"));
                    return;
                }
                schedule();
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(this.requested, j);
                schedule();
            }
        }

        final void schedule() {
            if (getAndIncrement() == 0) {
                this.worker.schedule(this);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber.class */
    static final class RunOnConditionalSubscriber<T> extends BaseRunOnSubscriber<T> {
        private static final long serialVersionUID = 1075119423897941642L;
        final ConditionalSubscriber<? super T> actual;

        RunOnConditionalSubscriber(ConditionalSubscriber<? super T> conditionalSubscriber, int i, SpscArrayQueue<T> spscArrayQueue, Scheduler.Worker worker) {
            super(i, spscArrayQueue, worker);
            this.actual = conditionalSubscriber;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f670s, subscription)) {
                this.f670s = subscription;
                this.actual.onSubscribe(this);
                subscription.request(this.prefetch);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x00d9, code lost:
            if (r0 != 0) goto L_0x0123;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00e0, code lost:
            if (r5.cancelled == false) goto L_0x00e8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00e3, code lost:
            r0.clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00e7, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00ec, code lost:
            if (r5.done == false) goto L_0x0123;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00ef, code lost:
            r0 = r5.error;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00f7, code lost:
            if (r0 == null) goto L_0x010e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00fa, code lost:
            r0.clear();
            r0.onError(r0);
            r5.worker.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x010d, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0112, code lost:
            if (r0.isEmpty() == false) goto L_0x0123;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0115, code lost:
            r0.onComplete();
            r5.worker.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0122, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0127, code lost:
            if (r13 == 0) goto L_0x013e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x0130, code lost:
            if (r0 == Long.MAX_VALUE) goto L_0x013e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x0133, code lost:
            r5.requested.addAndGet(-r13);
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x013e, code lost:
            r0 = get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x0148, code lost:
            if (r0 != r10) goto L_0x0163;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x014b, code lost:
            r5.consumed = r6;
            r0 = addAndGet(-r10);
            r10 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x015f, code lost:
            if (r0 != 0) goto L_0x0018;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x0162, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x0163, code lost:
            r10 = r0;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r13v0 */
        /* JADX WARN: Type inference failed for: r13v1, types: [long] */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Type inference failed for: r13v4 */
        /* JADX WARN: Type inference failed for: r19v0 */
        /* JADX WARN: Type inference failed for: r19v1 */
        /* JADX WARN: Type inference failed for: r19v3 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 362
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelRunOn.RunOnConditionalSubscriber.run():void");
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber.class */
    static final class RunOnSubscriber<T> extends BaseRunOnSubscriber<T> {
        private static final long serialVersionUID = 1075119423897941642L;
        final Subscriber<? super T> actual;

        RunOnSubscriber(Subscriber<? super T> subscriber, int i, SpscArrayQueue<T> spscArrayQueue, Scheduler.Worker worker) {
            super(i, spscArrayQueue, worker);
            this.actual = subscriber;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f670s, subscription)) {
                this.f670s = subscription;
                this.actual.onSubscribe(this);
                subscription.request(this.prefetch);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x00d2, code lost:
            if (r0 != 0) goto L_0x011c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00d9, code lost:
            if (r5.cancelled == false) goto L_0x00e1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00dc, code lost:
            r0.clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00e0, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00e5, code lost:
            if (r5.done == false) goto L_0x011c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00e8, code lost:
            r0 = r5.error;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00f0, code lost:
            if (r0 == null) goto L_0x0107;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00f3, code lost:
            r0.clear();
            r0.onError(r0);
            r5.worker.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0106, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x010b, code lost:
            if (r0.isEmpty() == false) goto L_0x011c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x010e, code lost:
            r0.onComplete();
            r5.worker.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x011b, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0120, code lost:
            if (r13 == 0) goto L_0x0137;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0129, code lost:
            if (r0 == Long.MAX_VALUE) goto L_0x0137;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x012c, code lost:
            r5.requested.addAndGet(-r13);
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0137, code lost:
            r0 = get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x0141, code lost:
            if (r0 != r10) goto L_0x015c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x0144, code lost:
            r5.consumed = r6;
            r0 = addAndGet(-r10);
            r10 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x0158, code lost:
            if (r0 != 0) goto L_0x0018;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x015b, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x015c, code lost:
            r10 = r0;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Type inference failed for: r13v4 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 355
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelRunOn.RunOnSubscriber.run():void");
        }
    }

    public ParallelRunOn(ParallelFlowable<? extends T> parallelFlowable, Scheduler scheduler, int i) {
        this.source = parallelFlowable;
        this.scheduler = scheduler;
        this.prefetch = i;
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public int parallelism() {
        return this.source.parallelism();
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public void subscribe(Subscriber<? super T>[] subscriberArr) {
        if (validate(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super Object>[] subscriberArr2 = new Subscriber[length];
            int i = this.prefetch;
            for (int i2 = 0; i2 < length; i2++) {
                Subscriber<? super T> subscriber = subscriberArr[i2];
                Scheduler.Worker createWorker = this.scheduler.createWorker();
                SpscArrayQueue spscArrayQueue = new SpscArrayQueue(i);
                if (subscriber instanceof ConditionalSubscriber) {
                    subscriberArr2[i2] = new RunOnConditionalSubscriber((ConditionalSubscriber) subscriber, i, spscArrayQueue, createWorker);
                } else {
                    subscriberArr2[i2] = new RunOnSubscriber(subscriber, i, spscArrayQueue, createWorker);
                }
            }
            this.source.subscribe(subscriberArr2);
        }
    }
}
