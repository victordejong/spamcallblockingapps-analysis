package p081h.p115c.p116a;

import android.content.Context;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p115c.p116a.AbstractC5726d;
import p081h.p115c.p116a.C5722c;
import p081h.p115c.p116a.p117i.C5744a;
import p081h.p115c.p116a.p117i.C5745b;
import p081h.p115c.p116a.p117i.C5748d;
import p081h.p115c.p116a.p117i.C5750e;
import p081h.p115c.p116a.p118j.C5758a;
/* renamed from: h.c.a.b */
/* loaded from: classes-dex2jar.jar:h/c/a/b.class */
public class C5717b extends AbstractC5726d implements AbstractC5726d.AbstractC5730d {

    /* renamed from: j */
    public AbstractC5720c f14318j;

    /* renamed from: k */
    public C5722c f14319k;

    /* renamed from: l */
    public String f14320l;

    /* renamed from: m */
    public int f14321m;

    /* renamed from: n */
    public int f14322n;

    /* renamed from: o */
    public String f14323o;

    /* renamed from: h.c.a.b$b */
    /* loaded from: classes-dex2jar.jar:h/c/a/b$b.class */
    public class C5719b implements C5722c.AbstractC5724b {
        public C5719b() {
        }

        @Override // p081h.p115c.p116a.C5722c.AbstractC5724b
        public void onClick() {
            C5717b.this.f14318j.onViewClick(C5717b.this);
        }
    }

    /* renamed from: h.c.a.b$c */
    /* loaded from: classes-dex2jar.jar:h/c/a/b$c.class */
    public interface AbstractC5720c {
        void onAdLoadFail(EnumC5731e eVar, C5717b bVar);

        void onAdLoaded(C5717b bVar);

        void onAdNoBid(C5717b bVar);

        void onViewClick(C5717b bVar);
    }

    /* renamed from: h.c.a.b$d */
    /* loaded from: classes-dex2jar.jar:h/c/a/b$d.class */
    public class C5721d implements C5748d.AbstractC5749a {
        public C5721d() {
        }

        @Override // p081h.p115c.p116a.p117i.C5748d.AbstractC5749a
        /* renamed from: a */
        public void mo24566a(EnumC5731e eVar, String str) {
            C5717b.this.f14323o = str;
            C5717b.this.f14318j.onAdLoadFail(eVar, C5717b.this);
        }

        @Override // p081h.p115c.p116a.p117i.C5748d.AbstractC5749a
        /* renamed from: a */
        public void mo24565a(C5745b bVar) {
            C5717b.this.f14318j.onAdLoaded(C5717b.this);
        }
    }

    public C5717b(Context context, AbstractC5720c cVar) {
        super(context);
        m24646a((AbstractC5726d.AbstractC5730d) this);
        this.f14318j = cVar;
        this.f14319k = new C5722c(context, new C5719b());
        this.f14319k.setWebViewClient(new C5748d(new C5721d(), this.f14319k));
    }

    /* renamed from: a */
    public void m24658a(int i, int i2) {
        this.f14321m = i;
        this.f14322n = i2;
    }

    @Override // p081h.p115c.p116a.AbstractC5726d.AbstractC5730d
    /* renamed from: a */
    public void mo24617a(AbstractC5726d dVar, boolean z) {
        C5716a.m24661a("[Appier SDK]", "AppierBannerAd.onBaseAdLoaded()", "isNoBid =", Boolean.valueOf(z));
        if (z) {
            this.f14318j.onAdNoBid(this);
            return;
        }
        try {
            this.f14319k.m24649a(m24652m());
        } catch (JSONException e) {
            this.f14318j.onAdLoadFail(EnumC5731e.INVALID_JSON, this);
        } catch (Exception e2) {
            this.f14318j.onAdLoadFail(EnumC5731e.UNKNOWN_ERROR, this);
        }
    }

    @Override // p081h.p115c.p116a.AbstractC5726d.AbstractC5730d
    /* renamed from: a */
    public void mo24616a(EnumC5731e eVar) {
        C5716a.m24661a("[Appier SDK]", "AppierBannerAd.onBaseAdLoadFail():", eVar.toString());
        this.f14318j.onAdLoadFail(eVar, this);
    }

    /* renamed from: a */
    public void m24655a(String str) {
        this.f14320l = str;
        super.m24631j();
    }

    @Override // p081h.p115c.p116a.AbstractC5726d
    /* renamed from: d */
    public String mo24610d() {
        String g = m24634g();
        String c = m24639c();
        C5750e f = m24635f();
        AdvertisingIdClient.Info a = m24647a();
        boolean z = a == null || a.isLimitAdTrackingEnabled();
        C5744a aVar = new C5744a(g, c);
        aVar.m24549b();
        C5744a aVar2 = aVar;
        aVar2.m24592c(this.f14320l);
        aVar2.m24588e(m24636e().getPackageName());
        aVar2.m24582i(z ? "" : a.getId());
        aVar2.m24581j("adid");
        aVar2.m24597a(Boolean.valueOf(z));
        aVar2.m24587f();
        aVar2.m24585g();
        aVar2.m24586f(C5758a.m24548a(m24636e()).toString());
        aVar2.m24583h(f.m24560b());
        aVar2.m24579l(f.m24558c());
        aVar2.m24578m(f.m24557d());
        aVar2.m24590d(Integer.toString(this.f14321m));
        aVar2.m24595b(Integer.toString(this.f14322n));
        aVar2.m24589e();
        aVar2.m24591d();
        aVar2.m24593c();
        return aVar2.m24552a();
    }

    /* renamed from: k */
    public void m24654k() {
        C5722c cVar = this.f14319k;
        if (cVar != null) {
            cVar.destroy();
            this.f14319k = null;
        }
    }

    /* renamed from: l */
    public final JSONObject m24653l() throws JSONException {
        return m24641b().getJSONArray("adUnits").getJSONObject(0).getJSONObject(CatWalkWebPayload.CATWALK_AD_KEY);
    }

    /* renamed from: m */
    public String m24652m() throws JSONException {
        return m24653l().getString("content");
    }

    /* renamed from: n */
    public String m24651n() {
        return this.f14323o;
    }

    /* renamed from: o */
    public C5722c m24650o() {
        return this.f14319k;
    }
}
