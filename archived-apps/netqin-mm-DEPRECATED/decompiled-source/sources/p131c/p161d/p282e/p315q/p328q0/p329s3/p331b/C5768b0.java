package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p530d.p541c.p570z.AbstractC9864a;
/* renamed from: c.d.e.q.q0.s3.b.b0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/b0.class */
public final class C5768b0 implements AbstractC5521b<AbstractC9864a<String>> {

    /* renamed from: a */
    public final C5766a0 f19005a;

    public C5768b0(C5766a0 a0Var) {
        this.f19005a = a0Var;
    }

    /* renamed from: a */
    public static C5768b0 m23066a(C5766a0 a0Var) {
        return new C5768b0(a0Var);
    }

    /* renamed from: b */
    public static AbstractC9864a<String> m23065b(C5766a0 a0Var) {
        AbstractC9864a<String> a = a0Var.m23071a();
        C5523d.m23633a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public AbstractC9864a<String> get() {
        return m23065b(this.f19005a);
    }
}
