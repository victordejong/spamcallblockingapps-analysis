package p131c.p161d.p282e.p315q.p328q0;

import android.app.Application;
import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.q0.w2 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/w2.class */
public final class C5827w2 implements AbstractC5521b<C5823v2> {

    /* renamed from: a */
    public final AbstractC9866a<Application> f19096a;

    public C5827w2(AbstractC9866a<Application> aVar) {
        this.f19096a = aVar;
    }

    /* renamed from: a */
    public static C5823v2 m22948a(Application application) {
        return new C5823v2(application);
    }

    /* renamed from: a */
    public static C5827w2 m22947a(AbstractC9866a<Application> aVar) {
        return new C5827w2(aVar);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5823v2 get() {
        return m22948a(this.f19096a.get());
    }
}
