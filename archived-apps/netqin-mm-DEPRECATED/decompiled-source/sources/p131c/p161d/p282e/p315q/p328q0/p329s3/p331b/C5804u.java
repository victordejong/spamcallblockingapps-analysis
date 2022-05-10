package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
/* renamed from: c.d.e.q.q0.s3.b.u */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/u.class */
public final class C5804u implements AbstractC5521b<String> {

    /* renamed from: a */
    public final C5801s f19053a;

    public C5804u(C5801s sVar) {
        this.f19053a = sVar;
    }

    /* renamed from: a */
    public static C5804u m22992a(C5801s sVar) {
        return new C5804u(sVar);
    }

    /* renamed from: b */
    public static String m22991b(C5801s sVar) {
        String a = sVar.m22998a();
        C5523d.m23633a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public String get() {
        return m22991b(this.f19053a);
    }
}
