package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p282e.p313o.AbstractC5473d;
import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p131c.p161d.p282e.p315q.p328q0.C5701n;
import p131c.p161d.p282e.p315q.p328q0.C5715p3;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.q0.s3.b.f */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/f.class */
public final class C5775f implements AbstractC5521b<C5701n> {

    /* renamed from: a */
    public final C5771d f19018a;

    /* renamed from: b */
    public final AbstractC9866a<C5715p3> f19019b;

    /* renamed from: c */
    public final AbstractC9866a<AbstractC5473d> f19020c;

    public C5775f(C5771d dVar, AbstractC9866a<C5715p3> aVar, AbstractC9866a<AbstractC5473d> aVar2) {
        this.f19018a = dVar;
        this.f19019b = aVar;
        this.f19020c = aVar2;
    }

    /* renamed from: a */
    public static C5701n m23047a(C5771d dVar, C5715p3 p3Var, AbstractC5473d dVar2) {
        C5701n a = dVar.m23057a(p3Var, dVar2);
        C5523d.m23633a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    /* renamed from: a */
    public static C5775f m23046a(C5771d dVar, AbstractC9866a<C5715p3> aVar, AbstractC9866a<AbstractC5473d> aVar2) {
        return new C5775f(dVar, aVar, aVar2);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5701n get() {
        return m23047a(this.f19018a, this.f19019b.get(), this.f19020c.get());
    }
}
