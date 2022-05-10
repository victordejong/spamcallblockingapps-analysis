package io.reactivex.internal.operators.flowable;

import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast.class */
public final class FlowableSamplePublisher$SampleMainNoLast<T> extends FlowableSamplePublisher$SamplePublisherSubscriber<T> {
    public static final long serialVersionUID = -3029755663834015785L;

    public FlowableSamplePublisher$SampleMainNoLast(AbstractC10433c<? super T> cVar, AbstractC10432b<?> bVar) {
        super(cVar, bVar);
    }

    @Override // io.reactivex.internal.operators.flowable.FlowableSamplePublisher$SamplePublisherSubscriber
    public void completeMain() {
        this.actual.onComplete();
    }

    @Override // io.reactivex.internal.operators.flowable.FlowableSamplePublisher$SamplePublisherSubscriber
    public void completeOther() {
        this.actual.onComplete();
    }

    @Override // io.reactivex.internal.operators.flowable.FlowableSamplePublisher$SamplePublisherSubscriber
    public void run() {
        emit();
    }
}
