package io.reactivex.internal.operators.flowable;

import java.util.concurrent.TimeUnit;
import p530d.p541c.AbstractC9845s;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedNoLast.class */
public final class FlowableSampleTimed$SampleTimedNoLast<T> extends FlowableSampleTimed$SampleTimedSubscriber<T> {
    public static final long serialVersionUID = -7139995637533111443L;

    public FlowableSampleTimed$SampleTimedNoLast(AbstractC10433c<? super T> cVar, long j, TimeUnit timeUnit, AbstractC9845s sVar) {
        super(cVar, j, timeUnit, sVar);
    }

    @Override // io.reactivex.internal.operators.flowable.FlowableSampleTimed$SampleTimedSubscriber
    public void complete() {
        this.actual.onComplete();
    }

    @Override // java.lang.Runnable
    public void run() {
        emit();
    }
}
