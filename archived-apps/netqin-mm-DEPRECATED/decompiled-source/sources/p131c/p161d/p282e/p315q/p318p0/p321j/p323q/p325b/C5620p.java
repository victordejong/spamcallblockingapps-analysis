package p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b;

import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.C5546e;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
/* renamed from: c.d.e.q.p0.j.q.b.p */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/p.class */
public final class C5620p implements AbstractC5544c<C5560i> {

    /* renamed from: a */
    public final C5619o f18692a;

    public C5620p(C5619o oVar) {
        this.f18692a = oVar;
    }

    /* renamed from: a */
    public static C5620p m23395a(C5619o oVar) {
        return new C5620p(oVar);
    }

    /* renamed from: b */
    public static C5560i m23394b(C5619o oVar) {
        C5560i a = oVar.m23398a();
        C5546e.m23585a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5560i get() {
        return m23394b(this.f18692a);
    }
}
