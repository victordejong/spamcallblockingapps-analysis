package p193e.p194a.p717f.p718a.p729v;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.incallui.C4013R;
import e.m.d.y.n;
import javax.inject.Inject;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1270u2.p1271a.AbstractC20580e;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p717f.p734z.AbstractC13864y;
import s1.z.c.l;
/* renamed from: e.a.f.a.v.e */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/v/e.class */
public final class C13693e extends AbstractC20576b<AbstractC13692d> implements AbstractC20580e {

    /* renamed from: b */
    public final AbstractC8426f f39666b;

    /* renamed from: c */
    public final AbstractC13864y f39667c;

    /* renamed from: d */
    public final AbstractC19462a f39668d;

    @Inject
    public C13693e(AbstractC8426f abstractC8426f, AbstractC13864y abstractC13864y, AbstractC19462a abstractC19462a) {
        l.e(abstractC8426f, "regionUtils");
        l.e(abstractC13864y, "inCallUISettings");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f39666b = abstractC8426f;
        this.f39667c = abstractC13864y;
        this.f39668d = abstractC19462a;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.f.a.v.d, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC13692d) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        r0.mo21308w(this.f39666b.mo28596b() ? C4013R.C4014drawable.logo_white_uk : C4013R.C4014drawable.ic_truecaller_logo_white_small);
        this.f39667c.putBoolean("infoShown", true);
        l.e("InCallUIOptInInfo", "viewId");
        n.B0(new C19597a("InCallUIOptInInfo", null, null), this.f39668d);
    }
}
