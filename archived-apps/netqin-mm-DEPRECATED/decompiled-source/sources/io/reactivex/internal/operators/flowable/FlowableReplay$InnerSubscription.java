package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription.class */
public final class FlowableReplay$InnerSubscription<T> extends AtomicLong implements AbstractC10434d, AbstractC9861b {
    public static final long CANCELLED = Long.MIN_VALUE;
    public static final long serialVersionUID = -4453897557930727610L;
    public final AbstractC10433c<? super T> child;
    public boolean emitting;
    public Object index;
    public boolean missed;
    public final FlowableReplay$ReplaySubscriber<T> parent;
    public final AtomicLong totalRequested = new AtomicLong();

    public FlowableReplay$InnerSubscription(FlowableReplay$ReplaySubscriber<T> flowableReplay$ReplaySubscriber, AbstractC10433c<? super T> cVar) {
        this.parent = flowableReplay$ReplaySubscriber;
        this.child = cVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        dispose();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
            this.parent.remove(this);
            this.parent.manageRequests();
        }
    }

    public <U> U index() {
        return (U) this.index;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get() == Long.MIN_VALUE;
    }

    public long produced(long j) {
        return C9800b.m2008d(this, j);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j) && C9800b.m2010b(this, j) != Long.MIN_VALUE) {
            C9800b.m2012a(this.totalRequested, j);
            this.parent.manageRequests();
            this.parent.buffer.replay(this);
        }
    }
}
