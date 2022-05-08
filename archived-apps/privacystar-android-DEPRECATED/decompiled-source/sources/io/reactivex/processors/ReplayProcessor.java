package io.reactivex.processors;

import io.reactivex.Scheduler;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor.class */
public final class ReplayProcessor<T> extends FlowableProcessor<T> {
    final ReplayBuffer<T> buffer;
    boolean done;
    final AtomicReference<ReplaySubscription<T>[]> subscribers = new AtomicReference<>(EMPTY);
    private static final Object[] EMPTY_ARRAY = new Object[0];
    static final ReplaySubscription[] EMPTY = new ReplaySubscription[0];
    static final ReplaySubscription[] TERMINATED = new ReplaySubscription[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor$Node.class */
    public static final class Node<T> extends AtomicReference<Node<T>> {
        private static final long serialVersionUID = 6404226426336033100L;
        final T value;

        Node(T t) {
            this.value = t;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor$ReplayBuffer.class */
    public interface ReplayBuffer<T> {
        void complete();

        void error(Throwable th);

        Throwable getError();

        T getValue();

        T[] getValues(T[] tArr);

        boolean isDone();

        void next(T t);

        void replay(ReplaySubscription<T> replaySubscription);

        int size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor$ReplaySubscription.class */
    public static final class ReplaySubscription<T> extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = 466549804534799122L;
        final Subscriber<? super T> actual;
        volatile boolean cancelled;
        long emitted;
        Object index;
        final AtomicLong requested = new AtomicLong();
        final ReplayProcessor<T> state;

        ReplaySubscription(Subscriber<? super T> subscriber, ReplayProcessor<T> replayProcessor) {
            this.actual = subscriber;
            this.state = replayProcessor;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.state.remove(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(this.requested, j);
                this.state.buffer.replay(this);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer.class */
    static final class SizeAndTimeBoundReplayBuffer<T> implements ReplayBuffer<T> {
        volatile boolean done;
        Throwable error;
        volatile TimedNode<T> head;
        final long maxAge;
        final int maxSize;
        final Scheduler scheduler;
        int size;
        TimedNode<T> tail;
        final TimeUnit unit;

        SizeAndTimeBoundReplayBuffer(int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
            this.maxSize = ObjectHelper.verifyPositive(i, "maxSize");
            this.maxAge = ObjectHelper.verifyPositive(j, "maxAge");
            this.unit = (TimeUnit) ObjectHelper.requireNonNull(timeUnit, "unit is null");
            this.scheduler = (Scheduler) ObjectHelper.requireNonNull(scheduler, "scheduler is null");
            TimedNode<T> timedNode = new TimedNode<>(null, 0L);
            this.tail = timedNode;
            this.head = timedNode;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void complete() {
            trimFinal();
            this.done = true;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void error(Throwable th) {
            trimFinal();
            this.error = th;
            this.done = true;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public Throwable getError() {
            return this.error;
        }

        TimedNode<T> getHead() {
            TimedNode<T> timedNode = this.head;
            long now = this.scheduler.now(this.unit);
            long j = this.maxAge;
            TimedNode<T> timedNode2 = timedNode.get();
            while (timedNode2 != null && timedNode2.time <= now - j) {
                timedNode2 = timedNode2.get();
                timedNode = timedNode2;
            }
            return timedNode;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public T getValue() {
            TimedNode<T> timedNode = this.head;
            while (true) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2 == null) {
                    break;
                }
                timedNode = timedNode2;
            }
            if (timedNode.time < this.scheduler.now(this.unit) - this.maxAge) {
                return null;
            }
            return timedNode.value;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public T[] getValues(T[] tArr) {
            T[] tArr2;
            TimedNode<T> head = getHead();
            int size = size(head);
            if (size == 0) {
                tArr2 = tArr;
                if (tArr.length != 0) {
                    tArr[0] = null;
                    tArr2 = tArr;
                }
            } else {
                TimedNode<T> timedNode = head;
                int i = 0;
                T[] tArr3 = tArr;
                if (tArr.length < size) {
                    i = 0;
                    timedNode = head;
                    tArr3 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), size);
                }
                while (i != size) {
                    timedNode = timedNode.get();
                    tArr3[i] = timedNode.value;
                    i++;
                }
                tArr2 = tArr3;
                if (tArr3.length > size) {
                    tArr3[size] = null;
                    tArr2 = tArr3;
                }
            }
            return tArr2;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public boolean isDone() {
            return this.done;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void next(T t) {
            TimedNode<T> timedNode = new TimedNode<>(t, this.scheduler.now(this.unit));
            TimedNode<T> timedNode2 = this.tail;
            this.tail = timedNode;
            this.size++;
            timedNode2.set(timedNode);
            trim();
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void replay(ReplaySubscription<T> replaySubscription) {
            int i;
            int addAndGet;
            if (replaySubscription.getAndIncrement() == 0) {
                Subscriber<? super T> subscriber = replaySubscription.actual;
                TimedNode<T> timedNode = (TimedNode) replaySubscription.index;
                TimedNode<T> timedNode2 = timedNode;
                if (timedNode == null) {
                    timedNode2 = getHead();
                }
                long j = replaySubscription.emitted;
                int i2 = 1;
                do {
                    long j2 = replaySubscription.requested.get();
                    while (true) {
                        i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
                        if (i == 0) {
                            break;
                        } else if (replaySubscription.cancelled) {
                            replaySubscription.index = null;
                            return;
                        } else {
                            boolean z = this.done;
                            TimedNode<T> timedNode3 = timedNode2.get();
                            boolean z2 = timedNode3 == null;
                            if (z && z2) {
                                replaySubscription.index = null;
                                replaySubscription.cancelled = true;
                                Throwable th = this.error;
                                if (th == null) {
                                    subscriber.onComplete();
                                    return;
                                } else {
                                    subscriber.onError(th);
                                    return;
                                }
                            } else if (z2) {
                                break;
                            } else {
                                subscriber.onNext((T) timedNode3.value);
                                j++;
                                timedNode2 = timedNode3;
                            }
                        }
                    }
                    if (i == 0) {
                        if (replaySubscription.cancelled) {
                            replaySubscription.index = null;
                            return;
                        } else if (this.done && timedNode2.get() == null) {
                            replaySubscription.index = null;
                            replaySubscription.cancelled = true;
                            Throwable th2 = this.error;
                            if (th2 == null) {
                                subscriber.onComplete();
                                return;
                            } else {
                                subscriber.onError(th2);
                                return;
                            }
                        }
                    }
                    replaySubscription.index = timedNode2;
                    replaySubscription.emitted = j;
                    addAndGet = replaySubscription.addAndGet(-i2);
                    i2 = addAndGet;
                } while (addAndGet != 0);
            }
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public int size() {
            return size(getHead());
        }

        int size(TimedNode<T> timedNode) {
            int i = 0;
            while (i != Integer.MAX_VALUE) {
                timedNode = timedNode.get();
                if (timedNode == null) {
                    break;
                }
                i++;
            }
            return i;
        }

        void trim() {
            if (this.size > this.maxSize) {
                this.size--;
                this.head = this.head.get();
            }
            long now = this.scheduler.now(this.unit);
            long j = this.maxAge;
            TimedNode<T> timedNode = this.head;
            while (true) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2 == null) {
                    this.head = timedNode;
                    return;
                } else if (timedNode2.time > now - j) {
                    this.head = timedNode;
                    return;
                } else {
                    timedNode = timedNode2;
                }
            }
        }

        void trimFinal() {
            long now = this.scheduler.now(this.unit);
            long j = this.maxAge;
            TimedNode<T> timedNode = this.head;
            while (true) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2 == null) {
                    this.head = timedNode;
                    return;
                } else if (timedNode2.time > now - j) {
                    this.head = timedNode;
                    return;
                } else {
                    timedNode = timedNode2;
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer.class */
    static final class SizeBoundReplayBuffer<T> implements ReplayBuffer<T> {
        volatile boolean done;
        Throwable error;
        volatile Node<T> head;
        final int maxSize;
        int size;
        Node<T> tail;

        SizeBoundReplayBuffer(int i) {
            this.maxSize = ObjectHelper.verifyPositive(i, "maxSize");
            Node<T> node = new Node<>(null);
            this.tail = node;
            this.head = node;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void complete() {
            this.done = true;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void error(Throwable th) {
            this.error = th;
            this.done = true;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public Throwable getError() {
            return this.error;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public T getValue() {
            Node<T> node = this.head;
            while (true) {
                Node<T> node2 = node.get();
                if (node2 == null) {
                    return node.value;
                }
                node = node2;
            }
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public T[] getValues(T[] tArr) {
            Node<T> node = this.head;
            Node<T> node2 = node;
            int i = 0;
            while (true) {
                node2 = node2.get();
                if (node2 == null) {
                    break;
                }
                i++;
            }
            Node<T> node3 = node;
            int i2 = 0;
            T[] tArr2 = tArr;
            if (tArr.length < i) {
                tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
                i2 = 0;
                node3 = node;
            }
            while (i2 < i) {
                node3 = node3.get();
                tArr2[i2] = node3.value;
                i2++;
            }
            if (tArr2.length > i) {
                tArr2[i] = null;
            }
            return tArr2;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public boolean isDone() {
            return this.done;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void next(T t) {
            Node<T> node = new Node<>(t);
            Node<T> node2 = this.tail;
            this.tail = node;
            this.size++;
            node2.set(node);
            trim();
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void replay(ReplaySubscription<T> replaySubscription) {
            int i;
            int addAndGet;
            if (replaySubscription.getAndIncrement() == 0) {
                Subscriber<? super T> subscriber = replaySubscription.actual;
                Node<T> node = (Node) replaySubscription.index;
                Node<T> node2 = node;
                if (node == null) {
                    node2 = this.head;
                }
                long j = replaySubscription.emitted;
                int i2 = 1;
                do {
                    long j2 = replaySubscription.requested.get();
                    while (true) {
                        i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
                        if (i == 0) {
                            break;
                        } else if (replaySubscription.cancelled) {
                            replaySubscription.index = null;
                            return;
                        } else {
                            boolean z = this.done;
                            Node<T> node3 = node2.get();
                            boolean z2 = node3 == null;
                            if (z && z2) {
                                replaySubscription.index = null;
                                replaySubscription.cancelled = true;
                                Throwable th = this.error;
                                if (th == null) {
                                    subscriber.onComplete();
                                    return;
                                } else {
                                    subscriber.onError(th);
                                    return;
                                }
                            } else if (z2) {
                                break;
                            } else {
                                subscriber.onNext((T) node3.value);
                                j++;
                                node2 = node3;
                            }
                        }
                    }
                    if (i == 0) {
                        if (replaySubscription.cancelled) {
                            replaySubscription.index = null;
                            return;
                        } else if (this.done && node2.get() == null) {
                            replaySubscription.index = null;
                            replaySubscription.cancelled = true;
                            Throwable th2 = this.error;
                            if (th2 == null) {
                                subscriber.onComplete();
                                return;
                            } else {
                                subscriber.onError(th2);
                                return;
                            }
                        }
                    }
                    replaySubscription.index = node2;
                    replaySubscription.emitted = j;
                    addAndGet = replaySubscription.addAndGet(-i2);
                    i2 = addAndGet;
                } while (addAndGet != 0);
            }
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public int size() {
            Node<T> node = this.head;
            int i = 0;
            while (i != Integer.MAX_VALUE) {
                node = node.get();
                if (node == null) {
                    break;
                }
                i++;
            }
            return i;
        }

        void trim() {
            if (this.size > this.maxSize) {
                this.size--;
                this.head = this.head.get();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor$TimedNode.class */
    public static final class TimedNode<T> extends AtomicReference<TimedNode<T>> {
        private static final long serialVersionUID = 6404226426336033100L;
        final long time;
        final T value;

        TimedNode(T t, long j) {
            this.value = t;
            this.time = j;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer.class */
    static final class UnboundedReplayBuffer<T> implements ReplayBuffer<T> {
        final List<T> buffer;
        volatile boolean done;
        Throwable error;
        volatile int size;

        UnboundedReplayBuffer(int i) {
            this.buffer = new ArrayList(ObjectHelper.verifyPositive(i, "capacityHint"));
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void complete() {
            this.done = true;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void error(Throwable th) {
            this.error = th;
            this.done = true;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public Throwable getError() {
            return this.error;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public T getValue() {
            int i = this.size;
            if (i == 0) {
                return null;
            }
            return this.buffer.get(i - 1);
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public T[] getValues(T[] tArr) {
            int i = this.size;
            if (i == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
                return tArr;
            }
            List<T> list = this.buffer;
            int i2 = 0;
            T[] tArr2 = tArr;
            if (tArr.length < i) {
                tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
                i2 = 0;
            }
            while (i2 < i) {
                tArr2[i2] = list.get(i2);
                i2++;
            }
            if (tArr2.length > i) {
                tArr2[i] = null;
            }
            return tArr2;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public boolean isDone() {
            return this.done;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void next(T t) {
            this.buffer.add(t);
            this.size++;
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x00c2, code lost:
            if (r0 != 0) goto L_0x010e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00c9, code lost:
            if (r6.cancelled == false) goto L_0x00d2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00cc, code lost:
            r6.index = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00d1, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00d2, code lost:
            r0 = r5.done;
            r0 = r5.size;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00e0, code lost:
            if (r0 == false) goto L_0x010e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00e7, code lost:
            if (r10 != r0) goto L_0x010e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00ea, code lost:
            r6.index = null;
            r6.cancelled = true;
            r0 = r5.error;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00fa, code lost:
            if (r0 != null) goto L_0x0106;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00fd, code lost:
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0106, code lost:
            r0.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x010d, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x010e, code lost:
            r6.index = java.lang.Integer.valueOf(r10);
            r6.emitted = r11;
            r0 = r6.addAndGet(-r13);
            r13 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:?, code lost:
            return;
         */
        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void replay(io.reactivex.processors.ReplayProcessor.ReplaySubscription<T> r6) {
            /*
                Method dump skipped, instructions count: 304
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.processors.ReplayProcessor.UnboundedReplayBuffer.replay(io.reactivex.processors.ReplayProcessor$ReplaySubscription):void");
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public int size() {
            return this.size;
        }
    }

    ReplayProcessor(ReplayBuffer<T> replayBuffer) {
        this.buffer = replayBuffer;
    }

    @CheckReturnValue
    public static <T> ReplayProcessor<T> create() {
        return new ReplayProcessor<>(new UnboundedReplayBuffer(16));
    }

    @CheckReturnValue
    public static <T> ReplayProcessor<T> create(int i) {
        return new ReplayProcessor<>(new UnboundedReplayBuffer(i));
    }

    static <T> ReplayProcessor<T> createUnbounded() {
        return new ReplayProcessor<>(new SizeBoundReplayBuffer(Integer.MAX_VALUE));
    }

    @CheckReturnValue
    public static <T> ReplayProcessor<T> createWithSize(int i) {
        return new ReplayProcessor<>(new SizeBoundReplayBuffer(i));
    }

    @CheckReturnValue
    public static <T> ReplayProcessor<T> createWithTime(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return new ReplayProcessor<>(new SizeAndTimeBoundReplayBuffer(Integer.MAX_VALUE, j, timeUnit, scheduler));
    }

    @CheckReturnValue
    public static <T> ReplayProcessor<T> createWithTimeAndSize(long j, TimeUnit timeUnit, Scheduler scheduler, int i) {
        return new ReplayProcessor<>(new SizeAndTimeBoundReplayBuffer(i, j, timeUnit, scheduler));
    }

    boolean add(ReplaySubscription<T> replaySubscription) {
        ReplaySubscription<T>[] replaySubscriptionArr;
        ReplaySubscription<T>[] replaySubscriptionArr2;
        do {
            replaySubscriptionArr = this.subscribers.get();
            if (replaySubscriptionArr == TERMINATED) {
                return false;
            }
            int length = replaySubscriptionArr.length;
            replaySubscriptionArr2 = new ReplaySubscription[length + 1];
            System.arraycopy(replaySubscriptionArr, 0, replaySubscriptionArr2, 0, length);
            replaySubscriptionArr2[length] = replaySubscription;
        } while (!this.subscribers.compareAndSet(replaySubscriptionArr, replaySubscriptionArr2));
        return true;
    }

    @Override // io.reactivex.processors.FlowableProcessor
    public Throwable getThrowable() {
        ReplayBuffer<T> replayBuffer = this.buffer;
        if (replayBuffer.isDone()) {
            return replayBuffer.getError();
        }
        return null;
    }

    public T getValue() {
        return this.buffer.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object[] getValues() {
        Object[] values = getValues(EMPTY_ARRAY);
        return values == EMPTY_ARRAY ? new Object[0] : values;
    }

    public T[] getValues(T[] tArr) {
        return this.buffer.getValues(tArr);
    }

    @Override // io.reactivex.processors.FlowableProcessor
    public boolean hasComplete() {
        ReplayBuffer<T> replayBuffer = this.buffer;
        return replayBuffer.isDone() && replayBuffer.getError() == null;
    }

    @Override // io.reactivex.processors.FlowableProcessor
    public boolean hasSubscribers() {
        return this.subscribers.get().length != 0;
    }

    @Override // io.reactivex.processors.FlowableProcessor
    public boolean hasThrowable() {
        ReplayBuffer<T> replayBuffer = this.buffer;
        return replayBuffer.isDone() && replayBuffer.getError() != null;
    }

    public boolean hasValue() {
        return this.buffer.size() != 0;
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            ReplayBuffer<T> replayBuffer = this.buffer;
            replayBuffer.complete();
            for (ReplaySubscription<T> replaySubscription : this.subscribers.getAndSet(TERMINATED)) {
                replayBuffer.replay(replaySubscription);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        Throwable th2 = th;
        if (th == null) {
            th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        }
        if (this.done) {
            RxJavaPlugins.onError(th2);
            return;
        }
        this.done = true;
        ReplayBuffer<T> replayBuffer = this.buffer;
        replayBuffer.error(th2);
        for (ReplaySubscription<T> replaySubscription : this.subscribers.getAndSet(TERMINATED)) {
            replayBuffer.replay(replaySubscription);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (t == null) {
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
        } else if (!this.done) {
            ReplayBuffer<T> replayBuffer = this.buffer;
            replayBuffer.next(t);
            for (ReplaySubscription<T> replaySubscription : this.subscribers.get()) {
                replayBuffer.replay(replaySubscription);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (this.done) {
            subscription.cancel();
        } else {
            subscription.request(Long.MAX_VALUE);
        }
    }

    void remove(ReplaySubscription<T> replaySubscription) {
        ReplaySubscription<T>[] replaySubscriptionArr;
        ReplaySubscription<T>[] replaySubscriptionArr2;
        do {
            replaySubscriptionArr = this.subscribers.get();
            if (replaySubscriptionArr != TERMINATED && replaySubscriptionArr != EMPTY) {
                int length = replaySubscriptionArr.length;
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (replaySubscriptionArr[i2] == replaySubscription) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        replaySubscriptionArr2 = EMPTY;
                    } else {
                        replaySubscriptionArr2 = new ReplaySubscription[length - 1];
                        System.arraycopy(replaySubscriptionArr, 0, replaySubscriptionArr2, 0, i);
                        System.arraycopy(replaySubscriptionArr, i + 1, replaySubscriptionArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.subscribers.compareAndSet(replaySubscriptionArr, replaySubscriptionArr2));
    }

    int size() {
        return this.buffer.size();
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super T> subscriber) {
        ReplaySubscription<T> replaySubscription = new ReplaySubscription<>(subscriber, this);
        subscriber.onSubscribe(replaySubscription);
        if (!add(replaySubscription) || !replaySubscription.cancelled) {
            this.buffer.replay(replaySubscription);
        } else {
            remove(replaySubscription);
        }
    }

    int subscriberCount() {
        return this.subscribers.get().length;
    }
}
