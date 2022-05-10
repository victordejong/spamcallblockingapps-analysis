package p530d.p541c.p543b0.p548e.p550b;

import io.reactivex.internal.operators.flowable.FlowableGroupBy$GroupBySubscriber;
import io.reactivex.internal.operators.flowable.FlowableGroupBy$State;
import p530d.p541c.p570z.AbstractC9865b;
import p611j.p612a.AbstractC10433c;
/* renamed from: d.c.b0.e.b.i */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/i.class */
public final class C9691i<K, T> extends AbstractC9865b<K, T> {

    /* renamed from: c */
    public final FlowableGroupBy$State<T, K> f36781c;

    public C9691i(K k, FlowableGroupBy$State<T, K> flowableGroupBy$State) {
        super(k);
        this.f36781c = flowableGroupBy$State;
    }

    /* renamed from: a */
    public static <T, K> C9691i<K, T> m2085a(K k, int i, FlowableGroupBy$GroupBySubscriber<?, K, T> flowableGroupBy$GroupBySubscriber, boolean z) {
        return new C9691i<>(k, new FlowableGroupBy$State(i, flowableGroupBy$GroupBySubscriber, k, z));
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super T> cVar) {
        this.f36781c.subscribe(cVar);
    }

    public void onComplete() {
        this.f36781c.onComplete();
    }

    public void onError(Throwable th) {
        this.f36781c.onError(th);
    }

    public void onNext(T t) {
        this.f36781c.onNext(t);
    }
}
