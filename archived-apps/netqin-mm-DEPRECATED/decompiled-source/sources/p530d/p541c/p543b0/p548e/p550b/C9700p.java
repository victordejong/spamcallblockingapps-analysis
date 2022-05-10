package p530d.p541c.p543b0.p548e.p550b;

import io.reactivex.internal.operators.flowable.FlowableSamplePublisher$SamplePublisherSubscriber;
import p530d.p541c.AbstractC9829h;
import p611j.p612a.AbstractC10434d;
/* renamed from: d.c.b0.e.b.p */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/p.class */
public final class C9700p<T> implements AbstractC9829h<Object> {

    /* renamed from: a */
    public final FlowableSamplePublisher$SamplePublisherSubscriber<T> f36787a;

    public C9700p(FlowableSamplePublisher$SamplePublisherSubscriber<T> flowableSamplePublisher$SamplePublisherSubscriber) {
        this.f36787a = flowableSamplePublisher$SamplePublisherSubscriber;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.f36787a.complete();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.f36787a.error(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(Object obj) {
        this.f36787a.run();
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        this.f36787a.setOther(dVar);
    }
}
