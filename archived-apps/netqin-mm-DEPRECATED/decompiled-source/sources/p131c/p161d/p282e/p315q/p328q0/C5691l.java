package p131c.p161d.p282e.p315q.p328q0;

import android.app.Application;
import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p328q0.p332t3.AbstractC5814a;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.q0.l */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/l.class */
public final class C5691l implements AbstractC5521b<C5686k> {

    /* renamed from: a */
    public final AbstractC9866a<C5819u2> f18829a;

    /* renamed from: b */
    public final AbstractC9866a<Application> f18830b;

    /* renamed from: c */
    public final AbstractC9866a<AbstractC5814a> f18831c;

    public C5691l(AbstractC9866a<C5819u2> aVar, AbstractC9866a<Application> aVar2, AbstractC9866a<AbstractC5814a> aVar3) {
        this.f18829a = aVar;
        this.f18830b = aVar2;
        this.f18831c = aVar3;
    }

    /* renamed from: a */
    public static C5686k m23220a(C5819u2 u2Var, Application application, AbstractC5814a aVar) {
        return new C5686k(u2Var, application, aVar);
    }

    /* renamed from: a */
    public static C5691l m23219a(AbstractC9866a<C5819u2> aVar, AbstractC9866a<Application> aVar2, AbstractC9866a<AbstractC5814a> aVar3) {
        return new C5691l(aVar, aVar2, aVar3);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5686k get() {
        return m23220a(this.f18829a.get(), this.f18830b.get(), this.f18831c.get());
    }
}
