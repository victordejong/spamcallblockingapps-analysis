package p193e.p194a.p765f5.p769h.p770a;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.log.AssertionUtil;
import javax.inject.Inject;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1270u2.p1271a.AbstractC20580e;
import p193e.p194a.p765f5.AbstractC14046a;
import p193e.p194a.p765f5.p772i.C14070b;
import s1.f0.h;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.f5.h.a.e */
/* loaded from: classes14-dex2jar.jar:e/a/f5/h/a/e.class */
public final class C14066e extends AbstractC20576b<AbstractC14065d> implements AbstractC20580e {

    /* renamed from: b */
    public String f40667b;

    /* renamed from: c */
    public final h f40668c = new h("\\d{0,6}([.,]\\d{0,2})?");

    /* renamed from: d */
    public final AbstractC14046a f40669d;

    /* renamed from: e */
    public final C14070b f40670e;

    /* renamed from: f */
    public final AbstractC19462a f40671f;

    @Inject
    public C14066e(AbstractC14046a abstractC14046a, C14070b c14070b, AbstractC19462a abstractC19462a) {
        l.e(abstractC14046a, "swishManager");
        l.e(c14070b, "swishAppDataManager");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f40669d = abstractC14046a;
        this.f40670e = c14070b;
        this.f40671f = abstractC19462a;
    }

    /* renamed from: Hj */
    public final Double m20797Hj(String str) {
        Double d;
        if (str.length() == 0) {
            return Double.valueOf((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
        }
        try {
            d = Double.valueOf(Double.parseDouble(r.t(str, ",", StringConstant.DOT, false, 4)));
        } catch (NumberFormatException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            d = null;
        }
        return d;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.f5.h.a.d, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC14065d) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        AbstractC19462a abstractC19462a = this.f40671f;
        l.e("swishInput", "viewId");
        abstractC19462a.mo13274b(new C19597a("swishInput", null, null));
    }
}
