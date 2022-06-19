package p193e.p194a.p619d.p628c.p635b;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.AbstractC11824d;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.c.b.o */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/b/o.class */
public final class C11292o extends AbstractC20574a<AbstractC11278h> implements AbstractC11277g {

    /* renamed from: d */
    public final f f33266d;

    /* renamed from: e */
    public final AbstractC11824d f33267e;

    /* renamed from: f */
    public final AbstractC19223c0 f33268f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C11292o(@Named("UI") f fVar, AbstractC11824d abstractC11824d, AbstractC19223c0 abstractC19223c0) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC11824d, "groupCallManager");
        l.e(abstractC19223c0, "resourceProvider");
        this.f33266d = fVar;
        this.f33267e = abstractC11824d;
        this.f33268f = abstractC19223c0;
    }

    /* renamed from: Ij */
    public final AbstractC11822b m24895Ij() {
        return this.f33267e.mo23961b();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.d.c.b.h, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC11278h abstractC11278h) {
        AbstractC11278h abstractC11278h2 = abstractC11278h;
        l.e(abstractC11278h2, "presenterView");
        this.f57683a = abstractC11278h2;
        abstractC11278h2.mo24930Cq();
        d.w2(this, (f) null, (j0) null, new C11288n(this, new C11287m(this), null), 3, (Object) null);
    }
}
