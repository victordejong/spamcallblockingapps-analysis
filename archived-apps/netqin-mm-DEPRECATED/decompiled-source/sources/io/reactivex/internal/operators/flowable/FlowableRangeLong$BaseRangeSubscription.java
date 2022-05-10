package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import p530d.p541c.p543b0.p557i.C9800b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription.class */
public abstract class FlowableRangeLong$BaseRangeSubscription extends BasicQueueSubscription<Long> {
    public static final long serialVersionUID = -2252972430506210021L;
    public volatile boolean cancelled;
    public final long end;
    public long index;

    public FlowableRangeLong$BaseRangeSubscription(long j, long j2) {
        this.index = j;
        this.end = j2;
    }

    @Override // p611j.p612a.AbstractC10434d
    public final void cancel() {
        this.cancelled = true;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public final void clear() {
        this.index = this.end;
    }

    public abstract void fastPath();

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public final boolean isEmpty() {
        return this.index == this.end;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public final Long poll() {
        long j = this.index;
        if (j == this.end) {
            return null;
        }
        this.index = 1 + j;
        return Long.valueOf(j);
    }

    @Override // p611j.p612a.AbstractC10434d
    public final void request(long j) {
        if (SubscriptionHelper.validate(j) && C9800b.m2012a(this, j) == 0) {
            if (j == Long.MAX_VALUE) {
                fastPath();
            } else {
                slowPath(j);
            }
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
    public final int requestFusion(int i) {
        return i & 1;
    }

    public abstract void slowPath(long j);
}
