package p193e.p194a.p437c.p438a.p446c.p449f;

import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.models.AdapterItem;
import com.truecaller.insights.utils.BannerState;
import io.agora.rtc.Constants;
import p193e.p194a.p437c.p580r.p581d.C10530c;
import s1.z.b.l;
import s1.z.c.b;
import s1.z.c.j;
import w3.b.a.f0.t;
import w3.b.a.q;
/* renamed from: e.a.c.a.c.f.l */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/l.class */
public final /* synthetic */ class C8816l extends j implements l<Long, AdapterItem.C4109a> {
    public C8816l(C8819o c8819o) {
        super(1, c8819o, C8819o.class, "getBannerItem", "getBannerItem(J)Lcom/truecaller/insights/ui/models/AdapterItem$BannerItem;", 0);
    }

    /* renamed from: d */
    public Object m28037d(Object obj) {
        int i;
        long longValue = ((Number) obj).longValue();
        C8819o c8819o = (C8819o) ((b) this).b;
        int mo26806y0 = c8819o.f26900b.mo26806y0();
        BannerState mo26850c0 = c8819o.f26900b.mo26850c0();
        BannerState bannerState = BannerState.DISMISSED_ONCE;
        int i2 = mo26850c0 == bannerState ? C4078R.string.understood : C4078R.string.not_now;
        String str = c8819o.f26900b.mo26850c0() == bannerState ? "dismiss" : "not_now";
        int intValue = Integer.valueOf(i2).intValue();
        q qVar = new q(longValue + C8823r.f26910a, t.Y());
        C10530c c10530c = new C10530c(null, null, null, null, null, null, null, Constants.ERR_WATERMARKR_INFO);
        c10530c.m25821g("onboarding");
        c10530c.m25823e("model_download_translation");
        c10530c.m25824d("insights_tab");
        c10530c.m25825c("click");
        BannerState mo26850c02 = c8819o.f26900b.mo26850c0();
        BannerState bannerState2 = BannerState.DISMISSED;
        AdapterItem.C4109a c4109a = null;
        if (!(mo26850c02 == bannerState2)) {
            if (c8819o.f26900b.mo26806y0() >= 3) {
                c8819o.f26900b.mo26819s(bannerState2);
            } else {
                boolean z = false;
                if (c8819o.f26900b.mo26806y0() == 2) {
                    z = true;
                }
                if (z) {
                    c8819o.f26900b.mo26819s(bannerState);
                }
                if (qVar.a(q.g()) < 0) {
                    String mo27306g = c8819o.f26904f.mo27306g();
                    int hashCode = mo27306g.hashCode();
                    if (hashCode != 2210) {
                        if (hashCode == 2642 && mo27306g.equals("SE")) {
                            i = C4078R.string.enable_swedish_smart_sms;
                            c4109a = new AdapterItem.C4109a(0L, C4078R.C4079drawable.ic_tcx_onboarding_insights_banner, i, C4078R.string.download_model, C4078R.string.download_now, Integer.valueOf(intValue), AdapterItem.BannerType.MODEL_DOWNLOAD, C4078R.C4079drawable.drawable_banner_background, new C8817m(c8819o, c10530c), new C8818n(c8819o, mo26806y0, c10530c, str), null, 1);
                        }
                        i = C4078R.string.enable_swedish_smart_sms;
                        c4109a = new AdapterItem.C4109a(0L, C4078R.C4079drawable.ic_tcx_onboarding_insights_banner, i, C4078R.string.download_model, C4078R.string.download_now, Integer.valueOf(intValue), AdapterItem.BannerType.MODEL_DOWNLOAD, C4078R.C4079drawable.drawable_banner_background, new C8817m(c8819o, c10530c), new C8818n(c8819o, mo26806y0, c10530c, str), null, 1);
                    } else {
                        if (mo27306g.equals("EG")) {
                            i = C4078R.string.enable_arabic_smart_sms;
                            c4109a = new AdapterItem.C4109a(0L, C4078R.C4079drawable.ic_tcx_onboarding_insights_banner, i, C4078R.string.download_model, C4078R.string.download_now, Integer.valueOf(intValue), AdapterItem.BannerType.MODEL_DOWNLOAD, C4078R.C4079drawable.drawable_banner_background, new C8817m(c8819o, c10530c), new C8818n(c8819o, mo26806y0, c10530c, str), null, 1);
                        }
                        i = C4078R.string.enable_swedish_smart_sms;
                        c4109a = new AdapterItem.C4109a(0L, C4078R.C4079drawable.ic_tcx_onboarding_insights_banner, i, C4078R.string.download_model, C4078R.string.download_now, Integer.valueOf(intValue), AdapterItem.BannerType.MODEL_DOWNLOAD, C4078R.C4079drawable.drawable_banner_background, new C8817m(c8819o, c10530c), new C8818n(c8819o, mo26806y0, c10530c, str), null, 1);
                    }
                }
            }
        }
        return c4109a;
    }
}
