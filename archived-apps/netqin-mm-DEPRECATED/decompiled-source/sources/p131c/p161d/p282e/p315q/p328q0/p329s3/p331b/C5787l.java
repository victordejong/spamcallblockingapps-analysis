package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
/* renamed from: c.d.e.q.q0.s3.b.l */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/l.class */
public final class C5787l implements AbstractC5521b<AbstractC5143a> {

    /* renamed from: a */
    public final C5785k f19033a;

    public C5787l(C5785k kVar) {
        this.f19033a = kVar;
    }

    /* renamed from: a */
    public static C5787l m23024a(C5785k kVar) {
        return new C5787l(kVar);
    }

    /* renamed from: b */
    public static AbstractC5143a m23023b(C5785k kVar) {
        AbstractC5143a a = kVar.m23028a();
        C5523d.m23633a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public AbstractC5143a get() {
        return m23023b(this.f19033a);
    }
}
