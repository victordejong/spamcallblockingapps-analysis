package p193e.p194a.p717f;

import com.truecaller.ads.campaigns.AdCampaign;
import com.truecaller.ads.campaigns.AdCampaigns;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p852i.C15213o;
import p193e.p194a.p852i.p856b0.AbstractC14992a;
import p193e.p194a.p852i.p856b0.p860d.C14995a;
import p193e.p194a.p852i.p896f0.p898k.AbstractC15168a;
import q3.a.i0;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.InCallUIAdsProviderImpl$loadAd$2", f = "InCallUIAdsProviderImpl.kt", l = {34, 35}, m = "invokeSuspend")
/* renamed from: e.a.f.e */
/* loaded from: classes10-dex2jar.jar:e/a/f/e.class */
public final class C13710e extends i implements p<i0, d<? super String>, Object> {

    /* renamed from: e */
    public int f39696e;

    /* renamed from: f */
    public final /* synthetic */ C13711f f39697f;

    /* renamed from: g */
    public final /* synthetic */ String f39698g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13710e(C13711f c13711f, String str, d dVar) {
        super(2, dVar);
        this.f39697f = c13711f;
        this.f39698g = str;
    }

    /* renamed from: i */
    public final d<s> m21293i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13710e(this.f39697f, this.f39698g, dVar);
    }

    /* renamed from: k */
    public final Object m21292k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13710e(this.f39697f, this.f39698g, dVar).m21291s(s.a);
    }

    /* renamed from: s */
    public final Object m21291s(Object obj) {
        AdCampaigns adCampaigns;
        a aVar = a.a;
        int i = this.f39696e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            if (this.f39697f.f39703e.m10990O().isEnabled()) {
                C13711f c13711f = this.f39697f;
                String str = this.f39698g;
                this.f39696e = 1;
                Objects.requireNonNull(c13711f);
                C14995a.C14997b c14997b = C14995a.f42800h;
                C14995a.C14996a c14996a = new C14995a.C14996a();
                c14996a.m19302c("CALLERID");
                c14996a.m19303b(str);
                Object m19310a = ((AbstractC14992a) c13711f.f39704f.get()).m19310a(c14996a.m19304a(), this);
                obj = m19310a;
                if (m19310a == aVar) {
                    return aVar;
                }
                adCampaigns = (AdCampaigns) obj;
            } else {
                C13711f c13711f2 = this.f39697f;
                String str2 = this.f39698g;
                this.f39696e = 2;
                Objects.requireNonNull(c13711f2);
                C15213o.C15215b c15215b = new C15213o.C15215b("CALLERID");
                c15215b.f43291a = str2;
                C15213o m19046a = c15215b.m19046a();
                l.d(m19046a, "CampaignConfig.Builder(A…ber)\n            .build()");
                Object m19077c = ((AbstractC15168a) c13711f2.f39701c.get()).m19077c(m19046a, this);
                obj = m19077c;
                if (m19077c == aVar) {
                    return aVar;
                }
                adCampaigns = (AdCampaigns) obj;
            }
        } else if (i == 1) {
            C25225a.m3932a3(obj);
            adCampaigns = (AdCampaigns) obj;
        } else if (i != 2) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
            adCampaigns = (AdCampaigns) obj;
        }
        String str3 = null;
        if (adCampaigns != null) {
            AdCampaign m35991c = adCampaigns.m35991c();
            str3 = null;
            if (m35991c != null) {
                AdCampaign.Style style = m35991c.f9821b;
                str3 = null;
                if (style != null) {
                    String str4 = style.f9834f;
                    str3 = null;
                    if (str4 != null) {
                        l.d(str4, "it");
                        str3 = null;
                        if (Boolean.valueOf(!r.p(str4)).booleanValue()) {
                            str3 = str4;
                        }
                    }
                }
            }
        }
        return str3;
    }
}
