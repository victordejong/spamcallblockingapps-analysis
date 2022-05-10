package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.util.NotificationLite;
import java.util.ArrayList;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9699o;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer.class */
public final class FlowableReplay$UnboundedReplayBuffer<T> extends ArrayList<Object> implements AbstractC9699o<T> {
    public static final long serialVersionUID = 7063189396499112664L;
    public volatile int size;

    public FlowableReplay$UnboundedReplayBuffer(int i) {
        super(i);
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9699o
    public void complete() {
        add(NotificationLite.complete());
        this.size++;
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9699o
    public void error(Throwable th) {
        add(NotificationLite.error(th));
        this.size++;
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9699o
    public void next(T t) {
        add(NotificationLite.next(t));
        this.size++;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9699o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void replay(io.reactivex.internal.operators.flowable.FlowableReplay$InnerSubscription<T> r6) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableReplay$UnboundedReplayBuffer.replay(io.reactivex.internal.operators.flowable.FlowableReplay$InnerSubscription):void");
    }
}
