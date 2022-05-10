package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
/* renamed from: c.d.e.q.q0.s3.b.g */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/g.class */
public final class C5777g implements AbstractC5521b<C5128c> {

    /* renamed from: a */
    public final C5771d f19023a;

    public C5777g(C5771d dVar) {
        this.f19023a = dVar;
    }

    /* renamed from: a */
    public static C5777g m23043a(C5771d dVar) {
        return new C5777g(dVar);
    }

    /* renamed from: b */
    public static C5128c m23042b(C5771d dVar) {
        C5128c a = dVar.m23060a();
        C5523d.m23633a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5128c get() {
        return m23042b(this.f19023a);
    }
}
