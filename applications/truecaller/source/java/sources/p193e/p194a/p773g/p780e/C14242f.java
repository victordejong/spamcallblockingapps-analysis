package p193e.p194a.p773g.p780e;

import com.google.android.gms.ads.AdSize;
import com.truecaller.ads.CustomTemplate;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p773g.C14233b;
import p193e.p194a.p852i.C15160f;
import p193e.p194a.p852i.C15210l;
import p193e.p194a.p852i.C15213o;
import p193e.p194a.p852i.C15222s;
import p193e.p194a.p852i.p856b0.p860d.C14995a;
import p193e.p194a.p852i.p904h0.AbstractC15199a;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.g.e.f */
/* loaded from: classes4-dex2jar.jar:e/a/g/e/f.class */
public final class C14242f {

    /* renamed from: a */
    public C15210l f41150a;

    /* renamed from: b */
    public final AbstractC14241e f41151b;

    /* renamed from: c */
    public final AbstractC8438a f41152c;

    /* renamed from: d */
    public final C20592g f41153d;

    /* renamed from: e */
    public final AbstractC15199a f41154e;

    @Inject
    public C14242f(AbstractC14241e abstractC14241e, AbstractC8438a abstractC8438a, C20592g c20592g, AbstractC15199a abstractC15199a) {
        l.e(abstractC14241e, "adsProvider");
        l.e(abstractC8438a, "accountSettings");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC15199a, "acsCallIdHelper");
        this.f41151b = abstractC14241e;
        this.f41152c = abstractC8438a;
        this.f41153d = c20592g;
        this.f41154e = abstractC15199a;
    }

    /* renamed from: a */
    public final C15210l m20321a(String str) {
        C15210l m19080b = ((C14233b) this.f41151b).m20337d().m19080b(null, (str != null && str.hashCode() == 2139874827 && str.equals("fullScreenAfterCallScreen")) ? "fullscreenAfterCallAdUnitId" : "afterCallUnifiedAdUnitId");
        this.f41150a = m19080b;
        return m19080b;
    }

    /* renamed from: b */
    public final C15222s m20320b(C15210l c15210l, String str, String str2, AdSize... adSizeArr) {
        CustomTemplate customTemplate;
        C15222s.C15223a c15223a = new C15222s.C15223a(null, 1);
        c15223a.m19041b(c15210l.f43283a, null);
        if (this.f41153d.m10990O().isEnabled()) {
            C14995a.C14997b c14997b = C14995a.f42800h;
            C14995a.C14996a c14996a = new C14995a.C14996a();
            c14996a.m19302c("AFTERCALL");
            c14996a.m19303b(str);
            c15223a.m19042a(c14996a.m19304a());
        } else {
            C15213o.C15215b c15215b = new C15213o.C15215b("AFTERCALL");
            c15215b.f43291a = str;
            C15213o m19046a = c15215b.m19046a();
            l.d(m19046a, "CampaignConfig.Builder(A…                 .build()");
            c15223a.m19039d(m19046a);
        }
        c15223a.f43331i = "afterCall";
        c15223a.f43335m = true;
        c15223a.f43336n = false;
        c15223a.m19038e((AdSize[]) Arrays.copyOf(adSizeArr, adSizeArr.length));
        C15160f c15160f = new C15160f(this.f41154e.mo19053a(), "call", null, 4);
        l.e(c15160f, "adExtraConfig");
        c15223a.f43337o = c15160f;
        Map<String, String> W = i.W(new k[]{new k("afterCallOfflineAdUnitId", ((C14233b) this.f41151b).m20337d().m19081a("afterCallOfflineAdUnitId")), new k("afterCallOfflineToOnlineAdUnitId", ((C14233b) this.f41151b).m20337d().m19081a("afterCallOfflineToOnlineAdUnitId"))});
        l.e(W, "adUnitIds");
        c15223a.f43329g = W;
        CustomTemplate customTemplate2 = CustomTemplate.NATIVE_BANNER;
        if (((C14233b) this.f41151b).m20340a(str2)) {
            C20592g c20592g = this.f41153d;
            if (c20592g.f57770K3.m10941a(c20592g, C20592g.f57695p6[246]).isEnabled()) {
                customTemplate = CustomTemplate.MEGA_NATIVE_BANNER_DUAL_TRACKER;
                Object[] array = i.T(new CustomTemplate[]{customTemplate2, customTemplate, CustomTemplate.NATIVE_CONTENT_DUAL_TRACKER, CustomTemplate.CLICK_TO_PLAY_VIDEO, CustomTemplate.VIDEO_WITH_FALLBACK_IMAGE}).toArray(new CustomTemplate[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                CustomTemplate[] customTemplateArr = (CustomTemplate[]) array;
                c15223a.m19037f((CustomTemplate[]) Arrays.copyOf(customTemplateArr, customTemplateArr.length));
                return new C15222s(c15223a);
            }
        }
        customTemplate = CustomTemplate.NATIVE_BANNER_DUAL_TRACKER;
        Object[] array2 = i.T(new CustomTemplate[]{customTemplate2, customTemplate, CustomTemplate.NATIVE_CONTENT_DUAL_TRACKER, CustomTemplate.CLICK_TO_PLAY_VIDEO, CustomTemplate.VIDEO_WITH_FALLBACK_IMAGE}).toArray(new CustomTemplate[0]);
        Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
        CustomTemplate[] customTemplateArr2 = (CustomTemplate[]) array2;
        c15223a.m19037f((CustomTemplate[]) Arrays.copyOf(customTemplateArr2, customTemplateArr2.length));
        return new C15222s(c15223a);
    }
}
