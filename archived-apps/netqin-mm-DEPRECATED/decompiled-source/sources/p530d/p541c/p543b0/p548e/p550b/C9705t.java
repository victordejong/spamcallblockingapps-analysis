package p530d.p541c.p543b0.p548e.p550b;

import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import p530d.p541c.AbstractC9829h;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* renamed from: d.c.b0.e.b.t */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/t.class */
public final class C9705t<T> implements AbstractC9829h<T> {

    /* renamed from: a */
    public final AbstractC10433c<? super T> f36790a;

    /* renamed from: b */
    public final SubscriptionArbiter f36791b;

    public C9705t(AbstractC10433c<? super T> cVar, SubscriptionArbiter subscriptionArbiter) {
        this.f36790a = cVar;
        this.f36791b = subscriptionArbiter;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.f36790a.onComplete();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.f36790a.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.f36790a.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        this.f36791b.setSubscription(dVar);
    }
}
