package p193e.p194a.p947k.p948a.p954e;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p947k.AbstractC16116j;
import p193e.p194a.p947k.p969c.AbstractC16067r0;
import p193e.p194a.p947k.p973n.p975e.AbstractC16166a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.k.a.e.i */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/e/i.class */
public final class C15666i extends AbstractC20574a<AbstractC15661e> implements AbstractC15660d {

    /* renamed from: d */
    public final AbstractC16166a f44226d;

    /* renamed from: e */
    public final AbstractC16067r0 f44227e;

    /* renamed from: f */
    public final AbstractC16116j f44228f;

    /* renamed from: g */
    public final f f44229g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C15666i(AbstractC16166a abstractC16166a, AbstractC16067r0 abstractC16067r0, AbstractC16116j abstractC16116j, @Named("UI") f fVar) {
        super(fVar);
        l.e(abstractC16166a, "hiddenContactRepository");
        l.e(abstractC16067r0, "availability");
        l.e(abstractC16116j, "support");
        l.e(fVar, "iOContext");
        this.f44226d = abstractC16166a;
        this.f44227e = abstractC16067r0;
        this.f44228f = abstractC16116j;
        this.f44229g = fVar;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.k.a.e.e, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC15661e abstractC15661e) {
        AbstractC15661e abstractC15661e2 = abstractC15661e;
        l.e(abstractC15661e2, "presenterView");
        this.f57683a = abstractC15661e2;
        abstractC15661e2.mo18541n4(this.f44227e.mo17924b());
    }
}
