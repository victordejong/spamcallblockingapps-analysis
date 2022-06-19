package p193e.p194a.p673d0.p674a;

import com.truecaller.ads.campaigns.AdCampaign;
import com.truecaller.ads.campaigns.AdCampaigns;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p852i.C15213o;
import p193e.p194a.p852i.p856b0.p860d.C14995a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callerid.window.CallerIdWindowPresenter$maybeFetchAd$1", f = "CallerIdWindowPresenter.kt", l = {306, 307}, m = "invokeSuspend")
/* renamed from: e.a.d0.a.o */
/* loaded from: classes6-dex2jar.jar:e/a/d0/a/o.class */
public final class C12452o extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f36376e;

    /* renamed from: f */
    public final /* synthetic */ C12439m f36377f;

    /* renamed from: g */
    public final /* synthetic */ String f36378g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12452o(C12439m c12439m, String str, d dVar) {
        super(2, dVar);
        this.f36377f = c12439m;
        this.f36378g = str;
    }

    /* renamed from: i */
    public final d<s> m22994i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12452o(this.f36377f, this.f36378g, dVar);
    }

    /* renamed from: k */
    public final Object m22993k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12452o(this.f36377f, this.f36378g, dVar).m22992s(s.a);
    }

    /* renamed from: s */
    public final Object m22992s(Object obj) {
        AdCampaigns adCampaigns;
        AdCampaign m35991c;
        AdCampaign.Style style;
        AbstractC12438l abstractC12438l;
        a aVar = a.a;
        int i = this.f36376e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            if (this.f36377f.f36310M.m10990O().isEnabled()) {
                C12439m c12439m = this.f36377f;
                String str = this.f36378g;
                this.f36376e = 1;
                Objects.requireNonNull(c12439m);
                C14995a.C14997b c14997b = C14995a.f42800h;
                C14995a.C14996a c14996a = new C14995a.C14996a();
                c14996a.m19302c("CALLERID");
                c14996a.m19303b(str);
                Object m19310a = c12439m.f36312O.m19310a(c14996a.m19304a(), this);
                obj = m19310a;
                if (m19310a == aVar) {
                    return aVar;
                }
                adCampaigns = (AdCampaigns) obj;
            } else {
                C12439m c12439m2 = this.f36377f;
                String str2 = this.f36378g;
                this.f36376e = 2;
                Objects.requireNonNull(c12439m2);
                C15213o.C15215b c15215b = new C15213o.C15215b("CALLERID");
                c15215b.f43291a = str2;
                C15213o m19046a = c15215b.m19046a();
                l.d(m19046a, "CampaignConfig.Builder(A…ber)\n            .build()");
                Object m19077c = c12439m2.f36324n.m19077c(m19046a, this);
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
        if (adCampaigns != null && (m35991c = adCampaigns.m35991c()) != null && (style = m35991c.f9821b) != null && (abstractC12438l = (AbstractC12438l) this.f36377f.f57683a) != null) {
            l.d(style, "it");
            abstractC12438l.mo23054M5(style);
        }
        return s.a;
    }
}
