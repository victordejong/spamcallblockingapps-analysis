package p081h.p115c.p116a;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.appier.ads.InterstitialActivity;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p115c.p116a.AbstractC5726d;
import p081h.p115c.p116a.C5737g;
import p081h.p115c.p116a.p117i.BinderC5756g;
import p081h.p115c.p116a.p117i.C5744a;
import p081h.p115c.p116a.p117i.C5745b;
import p081h.p115c.p116a.p117i.C5748d;
import p081h.p115c.p116a.p117i.C5750e;
import p081h.p115c.p116a.p118j.C5758a;
/* renamed from: h.c.a.f */
/* loaded from: classes-dex2jar.jar:h/c/a/f.class */
public class C5732f extends AbstractC5726d implements AbstractC5726d.AbstractC5730d {

    /* renamed from: j */
    public Context f14353j;

    /* renamed from: k */
    public AbstractC5735c f14354k;

    /* renamed from: l */
    public C5737g f14355l;

    /* renamed from: m */
    public String f14356m;

    /* renamed from: n */
    public int f14357n;

    /* renamed from: o */
    public int f14358o;

    /* renamed from: p */
    public String f14359p;

    /* renamed from: h.c.a.f$b */
    /* loaded from: classes-dex2jar.jar:h/c/a/f$b.class */
    public class C5734b implements C5737g.AbstractC5739b {
        public C5734b() {
        }

        @Override // p081h.p115c.p116a.C5737g.AbstractC5739b
        /* renamed from: a */
        public void mo24618a() {
            C5732f.this.f14354k.onViewShown(C5732f.this);
        }

        @Override // p081h.p115c.p116a.C5737g.AbstractC5739b
        public void onDismiss() {
            C5732f.this.f14354k.onDismiss(C5732f.this);
        }
    }

    /* renamed from: h.c.a.f$c */
    /* loaded from: classes-dex2jar.jar:h/c/a/f$c.class */
    public interface AbstractC5735c {
        void onAdLoadFail(EnumC5731e eVar, C5732f fVar);

        void onAdLoaded(C5732f fVar);

        void onAdNoBid(C5732f fVar);

        void onDismiss(C5732f fVar);

        void onViewShown(C5732f fVar);
    }

    /* renamed from: h.c.a.f$d */
    /* loaded from: classes-dex2jar.jar:h/c/a/f$d.class */
    public class C5736d implements C5748d.AbstractC5749a {
        public C5736d() {
        }

        @Override // p081h.p115c.p116a.p117i.C5748d.AbstractC5749a
        /* renamed from: a */
        public void mo24566a(EnumC5731e eVar, String str) {
            C5732f.this.f14359p = str;
            C5732f.this.f14354k.onAdLoadFail(eVar, C5732f.this);
        }

        @Override // p081h.p115c.p116a.p117i.C5748d.AbstractC5749a
        /* renamed from: a */
        public void mo24565a(C5745b bVar) {
            C5732f.this.f14354k.onAdLoaded(C5732f.this);
        }
    }

    public C5732f(Context context, AbstractC5735c cVar) {
        super(context);
        m24646a((AbstractC5726d.AbstractC5730d) this);
        this.f14353j = context;
        this.f14354k = cVar;
        this.f14355l = new C5737g(context, new C5734b());
        this.f14355l.setWebViewClient(new C5748d(new C5736d(), this.f14355l));
    }

    /* renamed from: a */
    public void m24630a(int i, int i2) {
        this.f14357n = i;
        this.f14358o = i2;
        this.f14355l.m24574a(this.f14357n, this.f14358o);
    }

    @Override // p081h.p115c.p116a.AbstractC5726d.AbstractC5730d
    /* renamed from: a */
    public void mo24617a(AbstractC5726d dVar, boolean z) {
        C5716a.m24661a("[Appier SDK]", "AppierInterstitialAd.onBaseAdLoaded()", "isNoBid =", Boolean.valueOf(z));
        if (z) {
            this.f14354k.onAdNoBid(this);
            return;
        }
        try {
            this.f14355l.m24621a(m24624m());
        } catch (JSONException e) {
            this.f14354k.onAdLoadFail(EnumC5731e.INVALID_JSON, this);
        } catch (Exception e2) {
            this.f14354k.onAdLoadFail(EnumC5731e.UNKNOWN_ERROR, this);
        }
    }

    @Override // p081h.p115c.p116a.AbstractC5726d.AbstractC5730d
    /* renamed from: a */
    public void mo24616a(EnumC5731e eVar) {
        C5716a.m24661a("[Appier SDK]", "AppierInterstitialAd.onBaseAdLoadFail():", eVar.toString());
        this.f14354k.onAdLoadFail(eVar, this);
    }

    /* renamed from: a */
    public void m24627a(String str) {
        this.f14356m = str;
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
        aVar2.m24592c(this.f14356m);
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
        aVar2.m24590d(Integer.toString(this.f14357n));
        aVar2.m24595b(Integer.toString(this.f14358o));
        aVar2.m24589e();
        aVar2.m24591d();
        aVar2.m24593c();
        return aVar2.m24552a();
    }

    /* renamed from: k */
    public void m24626k() {
        C5737g gVar = this.f14355l;
        if (gVar != null) {
            gVar.destroy();
            this.f14355l = null;
        }
    }

    /* renamed from: l */
    public final JSONObject m24625l() throws JSONException {
        return m24641b().getJSONArray("adUnits").getJSONObject(0).getJSONObject(CatWalkWebPayload.CATWALK_AD_KEY);
    }

    /* renamed from: m */
    public String m24624m() throws JSONException {
        return m24625l().getString("content");
    }

    /* renamed from: n */
    public String m24623n() {
        return this.f14359p;
    }

    /* renamed from: o */
    public void m24622o() {
        Bundle bundle = new Bundle();
        bundle.putBinder("INTERSTITIAL_BUNDLE_BINDER", new BinderC5756g(this.f14355l));
        Intent intent = new Intent(this.f14353j, InterstitialActivity.class);
        intent.putExtra("INTERSTITIAL_INTENT_EXTRA_BUNDLE", bundle);
        this.f14353j.startActivity(intent);
    }
}
