package p660rx.internal.operators;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import p660rx.Observable;
import p660rx.Producer;
import p660rx.Subscriber;
import p660rx.exceptions.MissingBackpressureException;
/* renamed from: rx.internal.operators.OperatorBufferWithSize */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorBufferWithSize.class */
public final class OperatorBufferWithSize<T> implements Observable.Operator<List<T>, T> {
    public final int count;
    public final int skip;

    /* renamed from: rx.internal.operators.OperatorBufferWithSize$BufferExact */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorBufferWithSize$BufferExact.class */
    public static final class BufferExact<T> extends Subscriber<T> {
        public final Subscriber<? super List<T>> actual;
        public List<T> buffer;
        public final int count;

        public BufferExact(Subscriber<? super List<T>> subscriber, int i) {
            this.actual = subscriber;
            this.count = i;
            request(0L);
        }

        public Producer createProducer() {
            return new Producer() { // from class: rx.internal.operators.OperatorBufferWithSize.BufferExact.1
                @Override // p660rx.Producer
                public void request(long j) {
                    int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                    if (i < 0) {
                        throw new IllegalArgumentException("n >= required but it was " + j);
                    } else if (i != 0) {
                        BufferExact.this.request(BackpressureUtils.multiplyCap(j, BufferExact.this.count));
                    }
                }
            };
        }

        @Override // p660rx.Observer
        public void onCompleted() {
            List<T> list = this.buffer;
            if (list != null) {
                this.actual.onNext(list);
            }
            this.actual.onCompleted();
        }

        @Override // p660rx.Observer
        public void onError(Throwable th) {
            this.buffer = null;
            this.actual.onError(th);
        }

        @Override // p660rx.Observer
        public void onNext(T t) {
            List<T> list = this.buffer;
            List<T> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>(this.count);
                this.buffer = list2;
            }
            list2.add(t);
            if (list2.size() == this.count) {
                this.buffer = null;
                this.actual.onNext(list2);
            }
        }
    }

    /* renamed from: rx.internal.operators.OperatorBufferWithSize$BufferOverlap */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorBufferWithSize$BufferOverlap.class */
    public static final class BufferOverlap<T> extends Subscriber<T> {
        public final Subscriber<? super List<T>> actual;
        public final int count;
        public long index;
        public long produced;
        public final ArrayDeque<List<T>> queue = new ArrayDeque<>();
        public final AtomicLong requested = new AtomicLong();
        public final int skip;

        /* renamed from: rx.internal.operators.OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer */
        /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer.class */
        public final class BufferOverlapProducer extends AtomicBoolean implements Producer {
            public BufferOverlapProducer() {
            }

            @Override // p660rx.Producer
            public void request(long j) {
                BufferOverlap bufferOverlap = BufferOverlap.this;
                if (BackpressureUtils.postCompleteRequest(bufferOverlap.requested, j, bufferOverlap.queue, bufferOverlap.actual) && j != 0) {
                    if (get() || !compareAndSet(false, true)) {
                        bufferOverlap.request(BackpressureUtils.multiplyCap(bufferOverlap.skip, j));
                    } else {
                        bufferOverlap.request(BackpressureUtils.addCap(BackpressureUtils.multiplyCap(bufferOverlap.skip, j - 1), bufferOverlap.count));
                    }
                }
            }
        }

        public BufferOverlap(Subscriber<? super List<T>> subscriber, int i, int i2) {
            this.actual = subscriber;
            this.count = i;
            this.skip = i2;
            request(0L);
        }

        public Producer createProducer() {
            return new BufferOverlapProducer();
        }

        @Override // p660rx.Observer
        public void onCompleted() {
            long j = this.produced;
            if (j != 0) {
                if (j > this.requested.get()) {
                    Subscriber<? super List<T>> subscriber = this.actual;
                    subscriber.onError(new MissingBackpressureException("More produced than requested? " + j));
                    return;
                }
                this.requested.addAndGet(-j);
            }
            BackpressureUtils.postCompleteDone(this.requested, this.queue, this.actual);
        }

        @Override // p660rx.Observer
        public void onError(Throwable th) {
            this.queue.clear();
            this.actual.onError(th);
        }

        @Override // p660rx.Observer
        public void onNext(T t) {
            long j = this.index;
            if (j == 0) {
                this.queue.offer(new ArrayList(this.count));
            }
            long j2 = j + 1;
            if (j2 == this.skip) {
                this.index = 0L;
            } else {
                this.index = j2;
            }
            Iterator<List<T>> it = this.queue.iterator();
            while (it.hasNext()) {
                it.next().add(t);
            }
            List<T> peek = this.queue.peek();
            if (peek != null && peek.size() == this.count) {
                this.queue.poll();
                this.produced++;
                this.actual.onNext(peek);
            }
        }
    }

    /* renamed from: rx.internal.operators.OperatorBufferWithSize$BufferSkip */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorBufferWithSize$BufferSkip.class */
    public static final class BufferSkip<T> extends Subscriber<T> {
        public final Subscriber<? super List<T>> actual;
        public List<T> buffer;
        public final int count;
        public long index;
        public final int skip;

        /* renamed from: rx.internal.operators.OperatorBufferWithSize$BufferSkip$BufferSkipProducer */
        /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer.class */
        public final class BufferSkipProducer extends AtomicBoolean implements Producer {
            public BufferSkipProducer() {
            }

            @Override // p660rx.Producer
            public void request(long j) {
                int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                if (i < 0) {
                    throw new IllegalArgumentException("n >= 0 required but it was " + j);
                } else if (i != 0) {
                    BufferSkip bufferSkip = BufferSkip.this;
                    if (get() || !compareAndSet(false, true)) {
                        bufferSkip.request(BackpressureUtils.multiplyCap(j, bufferSkip.skip));
                    } else {
                        bufferSkip.request(BackpressureUtils.addCap(BackpressureUtils.multiplyCap(j, bufferSkip.count), BackpressureUtils.multiplyCap(bufferSkip.skip - bufferSkip.count, j - 1)));
                    }
                }
            }
        }

        public BufferSkip(Subscriber<? super List<T>> subscriber, int i, int i2) {
            this.actual = subscriber;
            this.count = i;
            this.skip = i2;
            request(0L);
        }

        public Producer createProducer() {
            return new BufferSkipProducer();
        }

        @Override // p660rx.Observer
        public void onCompleted() {
            List<T> list = this.buffer;
            if (list != null) {
                this.buffer = null;
                this.actual.onNext(list);
            }
            this.actual.onCompleted();
        }

        @Override // p660rx.Observer
        public void onError(Throwable th) {
            this.buffer = null;
            this.actual.onError(th);
        }

        @Override // p660rx.Observer
        public void onNext(T t) {
            long j = this.index;
            List list = this.buffer;
            if (j == 0) {
                list = new ArrayList(this.count);
                this.buffer = list;
            }
            long j2 = j + 1;
            if (j2 == this.skip) {
                this.index = 0L;
            } else {
                this.index = j2;
            }
            if (list != null) {
                list.add(t);
                if (list.size() == this.count) {
                    this.buffer = null;
                    this.actual.onNext(list);
                }
            }
        }
    }

    public OperatorBufferWithSize(int i, int i2) {
        if (i <= 0) {
            throw new IllegalArgumentException("count must be greater than 0");
        } else if (i2 > 0) {
            this.count = i;
            this.skip = i2;
        } else {
            throw new IllegalArgumentException("skip must be greater than 0");
        }
    }

    @Override // p660rx.functions.Func1
    public /* bridge */ /* synthetic */ Object call(Object obj) {
        return call((Subscriber) ((Subscriber) obj));
    }

    public Subscriber<? super T> call(Subscriber<? super List<T>> subscriber) {
        int i = this.skip;
        int i2 = this.count;
        if (i == i2) {
            BufferExact bufferExact = new BufferExact(subscriber, i2);
            subscriber.add(bufferExact);
            subscriber.setProducer(bufferExact.createProducer());
            return bufferExact;
        } else if (i > i2) {
            BufferSkip bufferSkip = new BufferSkip(subscriber, i2, i);
            subscriber.add(bufferSkip);
            subscriber.setProducer(bufferSkip.createProducer());
            return bufferSkip;
        } else {
            BufferOverlap bufferOverlap = new BufferOverlap(subscriber, i2, i);
            subscriber.add(bufferOverlap);
            subscriber.setProducer(bufferOverlap.createProducer());
            return bufferOverlap;
        }
    }
}
