package p193e.p194a.p682e.p684b.p690j;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.settings.CallingSettings;
import e.m.d.y.n;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1011l.p1013c.p1016n.AbstractC16826d;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1213s2.AbstractC20197c;
import p193e.p194a.p1213s2.p1214g.AbstractC20201a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p717f.AbstractC13706b;
import p193e.p194a.p851h5.AbstractC14946m;
import p193e.p194a.p851h5.AbstractC14967y;
import p193e.p194a.p947k.AbstractC16111h;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.e.b.j.l */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/j/l.class */
public final class C12938l extends AbstractC20574a<AbstractC12935i> implements AbstractC12934h {

    /* renamed from: d */
    public boolean f37545d = true;

    /* renamed from: e */
    public final f f37546e;

    /* renamed from: f */
    public final CallingSettings f37547f;

    /* renamed from: g */
    public final AbstractC19230g f37548g;

    /* renamed from: h */
    public final AbstractC19219a0 f37549h;

    /* renamed from: i */
    public final AbstractC14967y f37550i;

    /* renamed from: j */
    public final AbstractC13706b f37551j;

    /* renamed from: k */
    public final AbstractC19462a f37552k;

    /* renamed from: l */
    public final C20592g f37553l;

    /* renamed from: m */
    public final AbstractC16111h f37554m;

    /* renamed from: n */
    public final AbstractC20197c f37555n;

    /* renamed from: o */
    public final AbstractC20201a f37556o;

    /* renamed from: p */
    public final AbstractC16826d f37557p;

    /* renamed from: q */
    public final AbstractC14946m f37558q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C12938l(@Named("UI") f fVar, CallingSettings callingSettings, AbstractC19230g abstractC19230g, AbstractC19219a0 abstractC19219a0, AbstractC14967y abstractC14967y, AbstractC13706b abstractC13706b, AbstractC19462a abstractC19462a, C20592g c20592g, AbstractC16111h abstractC16111h, AbstractC20197c abstractC20197c, AbstractC20201a abstractC20201a, AbstractC16826d abstractC16826d, AbstractC14946m abstractC14946m) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(callingSettings, "callingSettings");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC14967y, "tcPermissionsView");
        l.e(abstractC13706b, "inCallUI");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC16111h, "videoCallerId");
        l.e(abstractC20197c, "announceCallerIdManager");
        l.e(abstractC20201a, "announceCallerIdEventLogger");
        l.e(abstractC16826d, "premiumNewFeatureLabelHelper");
        l.e(abstractC14946m, "roleRequester");
        this.f37546e = fVar;
        this.f37547f = callingSettings;
        this.f37548g = abstractC19230g;
        this.f37549h = abstractC19219a0;
        this.f37550i = abstractC14967y;
        this.f37551j = abstractC13706b;
        this.f37552k = abstractC19462a;
        this.f37553l = c20592g;
        this.f37554m = abstractC16111h;
        this.f37555n = abstractC20197c;
        this.f37556o = abstractC20201a;
        this.f37557p = abstractC16826d;
        this.f37558q = abstractC14946m;
    }

    /* renamed from: Ij */
    public final void m22376Ij() {
        AbstractC12935i abstractC12935i = (AbstractC12935i) this.f57683a;
        if (abstractC12935i != null) {
            abstractC12935i.mo22388g2(false);
        }
        n.B0(ViewActionEvent.f9985d.m35934d("settingsCallerId", ViewActionEvent.CallerIdSettingsAction.STYLE_CLASSIC), this.f37552k);
        m22375z5();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.e.b.j.i, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC12935i abstractC12935i) {
        AbstractC12935i abstractC12935i2 = abstractC12935i;
        l.e(abstractC12935i2, "presenterView");
        this.f57683a = abstractC12935i2;
        C20592g c20592g = this.f37553l;
        C20592g.C20593a c20593a = c20592g.f57832T2;
        s1.a.l<?>[] lVarArr = C20592g.f57695p6;
        boolean isEnabled = c20593a.m10941a(c20592g, lVarArr[201]).isEnabled();
        C20592g c20592g2 = this.f37553l;
        boolean isEnabled2 = c20592g2.f57839U2.m10941a(c20592g2, lVarArr[202]).isEnabled();
        abstractC12935i2.mo22393T9(!isEnabled);
        abstractC12935i2.mo22399D3(isEnabled2);
        boolean z = true;
        if (!this.f37554m.mo17820z()) {
            z = this.f37554m.mo17835k();
        }
        abstractC12935i2.mo22390d4(z);
        abstractC12935i2.mo22391a7(this.f37555n.mo11356m());
        if (!abstractC12935i2.mo22398E0()) {
            abstractC12935i2.mo22394S5();
        }
    }

    /* renamed from: z5 */
    public final void m22375z5() {
        boolean mo21257l = this.f37551j.mo21257l();
        boolean mo21263f = this.f37551j.mo21263f();
        if (mo21257l) {
            if (mo21263f) {
                AbstractC12935i abstractC12935i = (AbstractC12935i) this.f57683a;
                if (abstractC12935i != null) {
                    abstractC12935i.mo22389f7();
                }
            } else {
                AbstractC12935i abstractC12935i2 = (AbstractC12935i) this.f57683a;
                if (abstractC12935i2 != null) {
                    abstractC12935i2.mo22386n3();
                }
            }
        }
        AbstractC12935i abstractC12935i3 = (AbstractC12935i) this.f57683a;
        if (abstractC12935i3 != null) {
            abstractC12935i3.mo22400B9(mo21257l);
            abstractC12935i3.mo22385o1(this.f37555n.mo11361b());
            AbstractC12935i abstractC12935i4 = (AbstractC12935i) this.f57683a;
            abstractC12935i3.mo22387ja(C12864a2.m22540r(abstractC12935i4 != null ? Boolean.valueOf(abstractC12935i4.mo22396Q0()) : null) && !mo21263f);
            abstractC12935i3.mo22384s1(this.f37547f.getBoolean("enabledCallerIDforPB"));
            abstractC12935i3.mo22392X8(this.f37547f.getBoolean("afterCall"));
            abstractC12935i3.mo22382w3(this.f37547f.getBoolean("afterCallForPbContacts"));
            abstractC12935i3.mo22395R3(mo21257l && !mo21263f);
        }
    }
}
