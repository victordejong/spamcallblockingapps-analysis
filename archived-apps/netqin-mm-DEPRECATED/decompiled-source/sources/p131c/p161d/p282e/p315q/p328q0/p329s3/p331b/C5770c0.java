package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p131c.p161d.p282e.p315q.p328q0.C5727r2;
/* renamed from: c.d.e.q.q0.s3.b.c0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/c0.class */
public final class C5770c0 implements AbstractC5521b<C5727r2> {

    /* renamed from: a */
    public final C5766a0 f19008a;

    public C5770c0(C5766a0 a0Var) {
        this.f19008a = a0Var;
    }

    /* renamed from: a */
    public static C5770c0 m23062a(C5766a0 a0Var) {
        return new C5770c0(a0Var);
    }

    /* renamed from: b */
    public static C5727r2 m23061b(C5766a0 a0Var) {
        C5727r2 b = a0Var.m23069b();
        C5523d.m23633a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5727r2 get() {
        return m23061b(this.f19008a);
    }
}
