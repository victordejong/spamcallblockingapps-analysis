package io.reactivex.internal.operators.flowable;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9845s;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedEmitLast.class */
public final class FlowableSampleTimed$SampleTimedEmitLast<T> extends FlowableSampleTimed$SampleTimedSubscriber<T> {
    public static final long serialVersionUID = -7139995637533111443L;
    public final AtomicInteger wip = new AtomicInteger(1);

    public FlowableSampleTimed$SampleTimedEmitLast(AbstractC10433c<? super T> cVar, long j, TimeUnit timeUnit, AbstractC9845s sVar) {
        super(cVar, j, timeUnit, sVar);
    }

    @Override // io.reactivex.internal.operators.flowable.FlowableSampleTimed$SampleTimedSubscriber
    public void complete() {
        emit();
        if (this.wip.decrementAndGet() == 0) {
            this.actual.onComplete();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.wip.incrementAndGet() == 2) {
            emit();
            if (this.wip.decrementAndGet() == 0) {
                this.actual.onComplete();
            }
        }
    }
}
