package io.reactivex.internal.operators.flowable;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$Node.class */
public final class FlowableReplay$Node extends AtomicReference<FlowableReplay$Node> {
    public static final long serialVersionUID = 245354315435971818L;
    public final long index;
    public final Object value;

    public FlowableReplay$Node(Object obj, long j) {
        this.value = obj;
        this.index = j;
    }
}
