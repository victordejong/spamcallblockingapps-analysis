package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.util.NotificationLite;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9699o;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer.class */
public class FlowableReplay$BoundedReplayBuffer<T> extends AtomicReference<FlowableReplay$Node> implements AbstractC9699o<T> {
    public static final long serialVersionUID = 2346567790059478686L;
    public long index;
    public int size;
    public FlowableReplay$Node tail;

    public FlowableReplay$BoundedReplayBuffer() {
        FlowableReplay$Node flowableReplay$Node = new FlowableReplay$Node(null, 0L);
        this.tail = flowableReplay$Node;
        set(flowableReplay$Node);
    }

    public final void addLast(FlowableReplay$Node flowableReplay$Node) {
        this.tail.set(flowableReplay$Node);
        this.tail = flowableReplay$Node;
        this.size++;
    }

    public final void collect(Collection<? super T> collection) {
        FlowableReplay$Node head = getHead();
        while (true) {
            head = head.get();
            if (head != null) {
                Object leaveTransform = leaveTransform(head.value);
                if (!NotificationLite.isComplete(leaveTransform) && !NotificationLite.isError(leaveTransform)) {
                    collection.add((Object) NotificationLite.getValue(leaveTransform));
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9699o
    public final void complete() {
        Object enterTransform = enterTransform(NotificationLite.complete());
        long j = this.index + 1;
        this.index = j;
        addLast(new FlowableReplay$Node(enterTransform, j));
        truncateFinal();
    }

    public Object enterTransform(Object obj) {
        return obj;
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9699o
    public final void error(Throwable th) {
        Object enterTransform = enterTransform(NotificationLite.error(th));
        long j = this.index + 1;
        this.index = j;
        addLast(new FlowableReplay$Node(enterTransform, j));
        truncateFinal();
    }

    public FlowableReplay$Node getHead() {
        return get();
    }

    public boolean hasCompleted() {
        Object obj = this.tail.value;
        return obj != null && NotificationLite.isComplete(leaveTransform(obj));
    }

    public boolean hasError() {
        Object obj = this.tail.value;
        return obj != null && NotificationLite.isError(leaveTransform(obj));
    }

    public Object leaveTransform(Object obj) {
        return obj;
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9699o
    public final void next(T t) {
        Object enterTransform = enterTransform(NotificationLite.next(t));
        long j = this.index + 1;
        this.index = j;
        addLast(new FlowableReplay$Node(enterTransform, j));
        truncate();
    }

    public final void removeFirst() {
        FlowableReplay$Node flowableReplay$Node = get().get();
        if (flowableReplay$Node != null) {
            this.size--;
            setFirst(flowableReplay$Node);
            return;
        }
        throw new IllegalStateException("Empty list!");
    }

    public final void removeSome(int i) {
        FlowableReplay$Node flowableReplay$Node = get();
        while (i > 0) {
            flowableReplay$Node = flowableReplay$Node.get();
            i--;
            this.size--;
        }
        setFirst(flowableReplay$Node);
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9699o
    public final void replay(FlowableReplay$InnerSubscription<T> flowableReplay$InnerSubscription) {
        FlowableReplay$Node flowableReplay$Node;
        synchronized (flowableReplay$InnerSubscription) {
            try {
                if (flowableReplay$InnerSubscription.emitting) {
                    flowableReplay$InnerSubscription.missed = true;
                    return;
                }
                flowableReplay$InnerSubscription.emitting = true;
                while (!flowableReplay$InnerSubscription.isDisposed()) {
                    long j = flowableReplay$InnerSubscription.get();
                    boolean z = j == Long.MAX_VALUE;
                    FlowableReplay$Node flowableReplay$Node2 = (FlowableReplay$Node) flowableReplay$InnerSubscription.index();
                    FlowableReplay$Node flowableReplay$Node3 = flowableReplay$Node2;
                    if (flowableReplay$Node2 == null) {
                        flowableReplay$Node3 = getHead();
                        flowableReplay$InnerSubscription.index = flowableReplay$Node3;
                        C9800b.m2012a(flowableReplay$InnerSubscription.totalRequested, flowableReplay$Node3.index);
                    }
                    long j2 = 0;
                    while (j != 0 && (flowableReplay$Node = flowableReplay$Node3.get()) != null) {
                        Object leaveTransform = leaveTransform(flowableReplay$Node.value);
                        try {
                            if (NotificationLite.accept(leaveTransform, flowableReplay$InnerSubscription.child)) {
                                flowableReplay$InnerSubscription.index = null;
                                return;
                            }
                            j2++;
                            j--;
                            if (!flowableReplay$InnerSubscription.isDisposed()) {
                                flowableReplay$Node3 = flowableReplay$Node;
                            } else {
                                return;
                            }
                        } catch (Throwable th) {
                            C9863a.m1822b(th);
                            flowableReplay$InnerSubscription.index = null;
                            flowableReplay$InnerSubscription.dispose();
                            if (!NotificationLite.isError(leaveTransform) && !NotificationLite.isComplete(leaveTransform)) {
                                flowableReplay$InnerSubscription.child.onError(th);
                                return;
                            }
                            return;
                        }
                    }
                    if (j2 != 0) {
                        flowableReplay$InnerSubscription.index = flowableReplay$Node3;
                        if (!z) {
                            flowableReplay$InnerSubscription.produced(j2);
                        }
                    }
                    synchronized (flowableReplay$InnerSubscription) {
                        if (!flowableReplay$InnerSubscription.missed) {
                            flowableReplay$InnerSubscription.emitting = false;
                            return;
                        }
                        flowableReplay$InnerSubscription.missed = false;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void setFirst(FlowableReplay$Node flowableReplay$Node) {
        set(flowableReplay$Node);
    }

    public final void trimHead() {
        FlowableReplay$Node flowableReplay$Node = get();
        if (flowableReplay$Node.value != null) {
            FlowableReplay$Node flowableReplay$Node2 = new FlowableReplay$Node(null, 0L);
            flowableReplay$Node2.lazySet(flowableReplay$Node.get());
            set(flowableReplay$Node2);
        }
    }

    public void truncate() {
    }

    public void truncateFinal() {
        trimHead();
    }
}
