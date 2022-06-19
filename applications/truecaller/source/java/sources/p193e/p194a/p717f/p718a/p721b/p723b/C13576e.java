package p193e.p194a.p717f.p718a.p721b.p723b;

import javax.inject.Inject;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1270u2.p1271a.AbstractC20580e;
import p193e.p194a.p717f.p733y.AbstractC13792v;
import s1.z.c.l;
/* renamed from: e.a.f.a.b.b.e */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/b/e.class */
public final class C13576e extends AbstractC20576b<AbstractC13575d> implements AbstractC20580e {

    /* renamed from: b */
    public final AbstractC13792v f39342b;

    @Inject
    public C13576e(AbstractC13792v abstractC13792v) {
        l.e(abstractC13792v, "ongoingCallHelper");
        this.f39342b = abstractC13792v;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.f.a.b.b.d, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC13575d) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        String mo21072J1 = this.f39342b.mo21072J1();
        if (mo21072J1 != null) {
            r0.mo21612o9(mo21072J1);
        }
    }
}
