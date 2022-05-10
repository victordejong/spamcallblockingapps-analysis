package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p530d.p531a.C9260k0;
/* renamed from: c.d.e.q.q0.s3.b.w */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/w.class */
public final class C5806w implements AbstractC5521b<C9260k0> {

    /* renamed from: a */
    public final C5805v f19055a;

    public C5806w(C5805v vVar) {
        this.f19055a = vVar;
    }

    /* renamed from: a */
    public static C5806w m22986a(C5805v vVar) {
        return new C5806w(vVar);
    }

    /* renamed from: b */
    public static C9260k0 m22985b(C5805v vVar) {
        C9260k0 a = vVar.m22990a();
        C5523d.m23633a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public C9260k0 get() {
        return m22985b(this.f19055a);
    }
}
