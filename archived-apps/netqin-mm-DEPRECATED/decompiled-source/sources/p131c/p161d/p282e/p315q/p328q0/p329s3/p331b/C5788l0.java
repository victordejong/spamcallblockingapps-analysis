package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p530d.p541c.AbstractC9845s;
/* renamed from: c.d.e.q.q0.s3.b.l0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/l0.class */
public final class C5788l0 implements AbstractC5521b<AbstractC9845s> {

    /* renamed from: a */
    public final C5784j0 f19034a;

    public C5788l0(C5784j0 j0Var) {
        this.f19034a = j0Var;
    }

    /* renamed from: a */
    public static C5788l0 m23022a(C5784j0 j0Var) {
        return new C5788l0(j0Var);
    }

    /* renamed from: b */
    public static AbstractC9845s m23021b(C5784j0 j0Var) {
        AbstractC9845s b = j0Var.m23030b();
        C5523d.m23633a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }

    @Override // p571e.p572a.AbstractC9866a
    public AbstractC9845s get() {
        return m23021b(this.f19034a);
    }
}
