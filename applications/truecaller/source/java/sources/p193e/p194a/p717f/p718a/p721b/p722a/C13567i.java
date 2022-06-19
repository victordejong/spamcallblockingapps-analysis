package p193e.p194a.p717f.p718a.p721b.p722a;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p717f.p733y.AbstractC13762c;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.f.a.b.a.i */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/a/i.class */
public final class C13567i extends AbstractC20574a<AbstractC13565g> implements AbstractC13564f {

    /* renamed from: d */
    public final AbstractC13762c f39328d;

    /* renamed from: e */
    public final f f39329e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C13567i(AbstractC13762c abstractC13762c, @Named("UI") f fVar) {
        super(fVar);
        l.e(abstractC13762c, "callManager");
        l.e(fVar, "uiContext");
        this.f39328d = abstractC13762c;
        this.f39329e = fVar;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.f.a.b.a.g] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC13565g abstractC13565g) {
        AbstractC13565g abstractC13565g2 = abstractC13565g;
        l.e(abstractC13565g2, "presenterView");
        this.f57683a = abstractC13565g2;
        C19291g.m13599P0(this, this.f39328d.mo21225E(), new C13566h(this, null));
    }
}
