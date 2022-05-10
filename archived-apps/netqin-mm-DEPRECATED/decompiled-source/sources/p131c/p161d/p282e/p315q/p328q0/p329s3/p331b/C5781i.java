package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p131c.p161d.p282e.p315q.p328q0.C5715p3;
/* renamed from: c.d.e.q.q0.s3.b.i */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/i.class */
public final class C5781i implements AbstractC5521b<C5715p3> {

    /* renamed from: a */
    public final C5771d f19027a;

    public C5781i(C5771d dVar) {
        this.f19027a = dVar;
    }

    /* renamed from: a */
    public static C5781i m23036a(C5771d dVar) {
        return new C5781i(dVar);
    }

    /* renamed from: b */
    public static C5715p3 m23035b(C5771d dVar) {
        C5715p3 c = dVar.m23055c();
        C5523d.m23633a(c, "Cannot return null from a non-@Nullable @Provides method");
        return c;
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5715p3 get() {
        return m23035b(this.f19027a);
    }
}
