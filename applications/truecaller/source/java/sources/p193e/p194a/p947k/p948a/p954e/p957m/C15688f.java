package p193e.p194a.p947k.p948a.p954e.p957m;

import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.utils.ReceiveVideoPreferences;
import javax.inject.Inject;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p947k.p969c.AbstractC15992h0;
import p193e.p194a.p947k.p969c.AbstractC16067r0;
import s1.z.c.l;
/* renamed from: e.a.k.a.e.m.f */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/e/m/f.class */
public final class C15688f extends AbstractC20576b<AbstractC15687e> implements AbstractC15686d {

    /* renamed from: b */
    public final AbstractC15992h0 f44259b;

    /* renamed from: c */
    public final AbstractC16067r0 f44260c;

    @Inject
    public C15688f(AbstractC15992h0 abstractC15992h0, AbstractC16067r0 abstractC16067r0) {
        l.e(abstractC15992h0, "manager");
        l.e(abstractC16067r0, "availabilityManager");
        this.f44259b = abstractC15992h0;
        this.f44260c = abstractC16067r0;
    }

    /* renamed from: Hj */
    public void m18513Hj(ReceiveVideoPreferences receiveVideoPreferences, boolean z) {
        l.e(receiveVideoPreferences, AnalyticsConstants.PREFERENCES);
        if (!z) {
            return;
        }
        AbstractC15687e abstractC15687e = (AbstractC15687e) this.f57683a;
        if (abstractC15687e != null) {
            abstractC15687e.mo18518N();
        }
        this.f44259b.mo18002g(receiveVideoPreferences);
        m18512Ij();
    }

    /* renamed from: Ij */
    public final void m18512Ij() {
        if (this.f44259b.mo18004e() == ReceiveVideoPreferences.Everyone && this.f44260c.mo17918k()) {
            AbstractC15687e abstractC15687e = (AbstractC15687e) this.f57683a;
            if (abstractC15687e == null) {
                return;
            }
            abstractC15687e.mo18517Z(true);
        } else if (this.f44259b.mo18004e() == ReceiveVideoPreferences.Contacts && this.f44260c.isAvailable()) {
            AbstractC15687e abstractC15687e2 = (AbstractC15687e) this.f57683a;
            if (abstractC15687e2 == null) {
                return;
            }
            abstractC15687e2.mo18515r0(true);
        } else if (this.f44259b.mo18004e() == ReceiveVideoPreferences.NoOne) {
            AbstractC15687e abstractC15687e3 = (AbstractC15687e) this.f57683a;
            if (abstractC15687e3 == null) {
                return;
            }
            abstractC15687e3.mo18516k0(true);
        } else {
            AbstractC15687e abstractC15687e4 = (AbstractC15687e) this.f57683a;
            if (abstractC15687e4 == null) {
                return;
            }
            abstractC15687e4.mo18516k0(true);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.k.a.e.m.e] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC15687e abstractC15687e) {
        AbstractC15687e abstractC15687e2 = abstractC15687e;
        l.e(abstractC15687e2, "presenterView");
        this.f57683a = abstractC15687e2;
        if (!this.f44260c.isAvailable()) {
            abstractC15687e2.mo18514y(false);
            abstractC15687e2.mo18519J0(true);
        } else if (!this.f44260c.mo17918k()) {
            abstractC15687e2.mo18519J0(false);
            abstractC15687e2.mo18514y(true);
        } else {
            abstractC15687e2.mo18514y(true);
            abstractC15687e2.mo18519J0(true);
        }
        m18512Ij();
    }
}
