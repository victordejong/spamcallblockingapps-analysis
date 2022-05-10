package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p131c.p161d.p282e.p315q.p328q0.C5715p3;
import p131c.p161d.p282e.p315q.p328q0.C5729r3;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.q0.s3.b.j */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/j.class */
public final class C5783j implements AbstractC5521b<C5729r3> {

    /* renamed from: a */
    public final C5771d f19028a;

    /* renamed from: b */
    public final AbstractC9866a<C5715p3> f19029b;

    public C5783j(C5771d dVar, AbstractC9866a<C5715p3> aVar) {
        this.f19028a = dVar;
        this.f19029b = aVar;
    }

    /* renamed from: a */
    public static C5729r3 m23033a(C5771d dVar, C5715p3 p3Var) {
        C5729r3 a = dVar.m23058a(p3Var);
        C5523d.m23633a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    /* renamed from: a */
    public static C5783j m23032a(C5771d dVar, AbstractC9866a<C5715p3> aVar) {
        return new C5783j(dVar, aVar);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5729r3 get() {
        return m23033a(this.f19028a, this.f19029b.get());
    }
}
