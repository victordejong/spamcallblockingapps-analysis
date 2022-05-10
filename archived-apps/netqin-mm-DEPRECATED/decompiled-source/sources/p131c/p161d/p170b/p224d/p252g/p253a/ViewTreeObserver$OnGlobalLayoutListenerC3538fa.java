package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.android.volley.Request;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzabj;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzabq;
import com.google.android.gms.internal.ads.zzabs;
import com.google.android.gms.internal.ads.zzacb;
import com.google.android.gms.internal.ads.zzadn;
import com.google.android.gms.internal.ads.zzads;
import com.google.android.gms.internal.ads.zzahq;
import com.google.android.gms.internal.ads.zzajz;
import com.google.android.gms.internal.ads.zzakc;
import com.google.android.gms.internal.ads.zzaqn;
import com.google.android.gms.internal.ads.zzayp;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzazm;
import com.google.android.gms.internal.ads.zzbbg;
import com.google.android.gms.internal.ads.zzbbh;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbbx;
import com.google.android.gms.internal.ads.zzbdn;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zzbfl;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzbhd;
import com.google.android.gms.internal.ads.zzbhe;
import com.google.android.gms.internal.ads.zzbho;
import com.google.android.gms.internal.ads.zzbhv;
import com.google.android.gms.internal.ads.zzbhy;
import com.google.android.gms.internal.ads.zzbhz;
import com.google.android.gms.internal.ads.zzbib;
import com.google.android.gms.internal.ads.zzbim;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdnw;
import com.google.android.gms.internal.ads.zzeg;
import com.google.android.gms.internal.ads.zzejz;
import com.google.android.gms.internal.ads.zzqr;
import com.google.android.gms.internal.ads.zzsc;
import com.google.android.gms.internal.ads.zzsu;
import com.google.android.gms.internal.ads.zztr;
import com.google.android.gms.internal.ads.zzts;
import com.google.android.gms.internal.ads.zztu;
import com.google.android.gms.internal.ads.zzua;
import com.google.android.gms.internal.ads.zzwm;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import com.mopub.mobileads.VastIconXmlManager;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
@VisibleForTesting
/* renamed from: c.d.b.d.g.a.fa */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/fa.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC3538fa extends zzbim implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, zzajz, zzbgj {

    /* renamed from: A */
    public zzads f12896A;

    /* renamed from: B */
    public zzadn f12897B;

    /* renamed from: C */
    public zzsc f12898C;

    /* renamed from: D */
    public int f12899D;

    /* renamed from: E */
    public int f12900E;

    /* renamed from: F */
    public zzabq f12901F;

    /* renamed from: G */
    public zzabq f12902G;

    /* renamed from: H */
    public zzabq f12903H;

    /* renamed from: I */
    public zzabp f12904I;

    /* renamed from: J */
    public zze f12905J;

    /* renamed from: K */
    public zzbbh f12906K;

    /* renamed from: Q */
    public Map<String, zzbfl> f12912Q;

    /* renamed from: d */
    public final zzbhz f12914d;

    /* renamed from: e */
    public final zzbib f12915e;

    /* renamed from: f */
    public final zzeg f12916f;

    /* renamed from: g */
    public final zzacb f12917g;

    /* renamed from: h */
    public final zzbbx f12918h;

    /* renamed from: i */
    public final zzk f12919i;

    /* renamed from: j */
    public final zzb f12920j;

    /* renamed from: l */
    public final zzts f12922l;

    /* renamed from: m */
    public final zzsu f12923m;

    /* renamed from: n */
    public final boolean f12924n;

    /* renamed from: o */
    public zze f12925o;

    /* renamed from: p */
    public zzbhy f12926p;

    /* renamed from: q */
    public String f12927q;

    /* renamed from: r */
    public boolean f12928r;

    /* renamed from: s */
    public boolean f12929s;

    /* renamed from: t */
    public boolean f12930t;

    /* renamed from: x */
    public zzbhd f12934x;

    /* renamed from: y */
    public boolean f12935y;

    /* renamed from: z */
    public boolean f12936z;

    /* renamed from: v */
    public boolean f12932v = true;

    /* renamed from: w */
    public String f12933w = "";

    /* renamed from: L */
    public final AtomicReference<IObjectWrapper> f12907L = new AtomicReference<>();

    /* renamed from: M */
    public int f12908M = -1;

    /* renamed from: N */
    public int f12909N = -1;

    /* renamed from: O */
    public int f12910O = -1;

    /* renamed from: P */
    public int f12911P = -1;

    /* renamed from: u */
    public int f12931u = -1;

    /* renamed from: R */
    public final WindowManager f12913R = (WindowManager) getContext().getSystemService("window");

    /* renamed from: k */
    public final DisplayMetrics f12921k = zzayu.m16128a(this.f12913R);

    @VisibleForTesting
    public ViewTreeObserver$OnGlobalLayoutListenerC3538fa(zzbhz zzbhzVar, zzbib zzbibVar, zzbhy zzbhyVar, String str, boolean z, boolean z2, zzeg zzegVar, zzacb zzacbVar, zzbbx zzbbxVar, zzabs zzabsVar, zzk zzkVar, zzb zzbVar, zzts zztsVar, zzsu zzsuVar, boolean z3, zzdnv zzdnvVar, zzdnw zzdnwVar) {
        super(zzbhzVar, zzbibVar);
        this.f12914d = zzbhzVar;
        this.f12915e = zzbibVar;
        this.f12926p = zzbhyVar;
        this.f12927q = str;
        this.f12929s = z;
        this.f12916f = zzegVar;
        this.f12917g = zzacbVar;
        this.f12918h = zzbbxVar;
        this.f12919i = zzkVar;
        this.f12920j = zzbVar;
        zzp.m17969c();
        this.f12922l = zztsVar;
        this.f12923m = zzsuVar;
        this.f12924n = z3;
        this.f12906K = new zzbbh(this.f12914d.m15502b(), this, this, null);
        zzp.m17969c().m16140a(zzbhzVar, zzbbxVar.f24759a, getSettings());
        setDownloadListener(this);
        m27003U();
        if (PlatformVersion.m17064d()) {
            addJavascriptInterface(zzbhe.m15530a(this), "googleAdsJsInterface");
        }
        m26999Y();
        zzabp zzabpVar = new zzabp(new zzabs(true, "make_wv", this.f12927q));
        this.f12904I = zzabpVar;
        zzabpVar.m16892a().m16883a(zzabsVar);
        zzabq a = zzabj.m16896a(this.f12904I.m16892a());
        this.f12902G = a;
        this.f12904I.m16891a("native:view_create", a);
        this.f12903H = null;
        this.f12901F = null;
        zzp.m17967e().mo16038b(zzbhzVar);
    }

    /* renamed from: a */
    public static final /* synthetic */ void m26996a(boolean z, int i, zzua.zzi.zza zzaVar) {
        zzua.zzae.zza n = zzua.zzae.m11397n();
        if (n.m11393p() != z) {
            n.m11394a(z);
        }
        n.m11395a(i);
        zzaVar.m11318a((zzua.zzae) ((zzejz) n.mo12342K()));
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: A */
    public final void mo15608A() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: B */
    public final void mo15607B() {
        m27004T();
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f12918h.f24759a);
        zzakc.m16715a(this, "onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: C */
    public final void mo15606C() {
        zzayp.m16153g("Cannot add text view to inner AdWebView");
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: D */
    public final WebViewClient mo15605D() {
        return this.f12915e;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: E */
    public final boolean mo15604E() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: F */
    public final void mo15603F() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(zzp.m17964h().m16019b()));
        hashMap.put("app_volume", String.valueOf(zzp.m17964h().m16023a()));
        hashMap.put("device_volume", String.valueOf(zzazm.m16021a(getContext())));
        zzakc.m16715a(this, AvidVideoPlaybackListenerImpl.VOLUME, hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbim, com.google.android.gms.internal.ads.zzbgj
    /* renamed from: G */
    public final void mo15456G() {
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: H */
    public final boolean mo15602H() {
        boolean z;
        synchronized (this) {
            z = this.f12928r;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: I */
    public final zzsc mo15601I() {
        zzsc zzscVar;
        synchronized (this) {
            zzscVar = this.f12898C;
        }
        return zzscVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: J */
    public final zzsu mo15600J() {
        return this.f12923m;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: K */
    public final Context mo15599K() {
        return this.f12914d.m15503a();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: L */
    public final boolean mo15598L() {
        boolean z;
        synchronized (this) {
            z = this.f12932v;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: M */
    public final zzabq mo15597M() {
        return this.f12902G;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: N */
    public final boolean mo15596N() {
        return ((Boolean) zzwm.m11166e().m16921a(zzabb.f23860n3)).booleanValue() && this.f12923m != null && this.f12924n;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: O */
    public final zze mo15595O() {
        zze zzeVar;
        synchronized (this) {
            zzeVar = this.f12925o;
        }
        return zzeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: P */
    public final boolean mo15594P() {
        boolean z;
        synchronized (this) {
            z = this.f12899D > 0;
        }
        return z;
    }

    /* renamed from: S */
    public final boolean m27005S() {
        int i;
        int i2;
        boolean z = false;
        if (!this.f12915e.mo15482b() && !this.f12915e.m15469j()) {
            return false;
        }
        zzwm.m11170a();
        DisplayMetrics displayMetrics = this.f12921k;
        int b = zzbbg.m15896b(displayMetrics, displayMetrics.widthPixels);
        zzwm.m11170a();
        DisplayMetrics displayMetrics2 = this.f12921k;
        int b2 = zzbbg.m15896b(displayMetrics2, displayMetrics2.heightPixels);
        Activity b3 = this.f12914d.m15502b();
        if (b3 == null || b3.getWindow() == null) {
            i2 = b;
            i = b2;
        } else {
            zzp.m17969c();
            int[] c = zzayu.m16104c(b3);
            zzwm.m11170a();
            i2 = zzbbg.m15896b(this.f12921k, c[0]);
            zzwm.m11170a();
            i = zzbbg.m15896b(this.f12921k, c[1]);
        }
        if (this.f12909N == b && this.f12908M == b2 && this.f12910O == i2 && this.f12911P == i) {
            return false;
        }
        if (!(this.f12909N == b && this.f12908M == b2)) {
            z = true;
        }
        this.f12909N = b;
        this.f12908M = b2;
        this.f12910O = i2;
        this.f12911P = i;
        new zzaqn(this).m16429a(b, b2, i2, i, this.f12921k.density, this.f12913R.getDefaultDisplay().getRotation());
        return z;
    }

    /* renamed from: T */
    public final void m27004T() {
        zzabj.m16895a(this.f12904I.m16892a(), this.f12902G, "aeh2");
    }

    /* renamed from: U */
    public final void m27003U() {
        synchronized (this) {
            if (!this.f12929s && !this.f12926p.m15510b()) {
                if (Build.VERSION.SDK_INT < 18) {
                    zzbbq.m15858a("Disabling hardware acceleration on an AdView.");
                    m27002V();
                    return;
                }
                zzbbq.m15858a("Enabling hardware acceleration on an AdView.");
                m27001W();
                return;
            }
            zzbbq.m15858a("Enabling hardware acceleration on an overlay.");
            m27001W();
        }
    }

    /* renamed from: V */
    public final void m27002V() {
        synchronized (this) {
            if (!this.f12930t) {
                zzp.m17967e();
                setLayerType(1, null);
            }
            this.f12930t = true;
        }
    }

    /* renamed from: W */
    public final void m27001W() {
        synchronized (this) {
            if (this.f12930t) {
                zzp.m17967e();
                setLayerType(0, null);
            }
            this.f12930t = false;
        }
    }

    /* renamed from: X */
    public final void m27000X() {
        synchronized (this) {
            if (this.f12912Q != null) {
                for (zzbfl zzbflVar : this.f12912Q.values()) {
                    zzbflVar.mo15656a();
                }
            }
            this.f12912Q = null;
        }
    }

    /* renamed from: Y */
    public final void m26999Y() {
        zzabs a;
        zzabp zzabpVar = this.f12904I;
        if (zzabpVar != null && (a = zzabpVar.m16892a()) != null && zzp.m17965g().m16184c() != null) {
            zzp.m17965g().m16184c().m16901a(a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu, com.google.android.gms.internal.ads.zzbht
    /* renamed from: a */
    public final zzbbx mo15516a() {
        return this.f12918h;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15593a(int i) {
        if (i == 0) {
            zzabj.m16895a(this.f12904I.m16892a(), this.f12902G, "aebb2");
        }
        m27004T();
        if (this.f12904I.m16892a() != null) {
            this.f12904I.m16892a().m16882a("close_type", String.valueOf(i));
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.f12918h.f24759a);
        zzakc.m16715a(this, "onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15592a(ViewGroup viewGroup, Activity activity, String str, String str2) {
        if (!mo15596N()) {
            zzayp.m16153g("AR ad is not enabled or the ad from the server is not an AR ad.");
            return;
        }
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).removeView(this);
        }
        zzayp.m16153g("Initializing ArWebView object.");
        this.f12923m.mo11461a(activity, this);
        this.f12923m.mo11459a(str, str2);
        if (viewGroup != null) {
            viewGroup.addView(this.f12923m.getView());
        } else {
            zzbbq.m15856b("The FrameLayout object cannot be null.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    /* renamed from: a */
    public final void mo15522a(com.google.android.gms.ads.internal.overlay.zzb zzbVar) {
        this.f12915e.m15494a(zzbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15591a(zze zzeVar) {
        synchronized (this) {
            this.f12925o = zzeVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15590a(IObjectWrapper iObjectWrapper) {
        this.f12907L.set(iObjectWrapper);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15589a(zzadn zzadnVar) {
        synchronized (this) {
            this.f12897B = zzadnVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15588a(zzads zzadsVar) {
        synchronized (this) {
            this.f12896A = zzadsVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu
    /* renamed from: a */
    public final void mo15586a(zzbhd zzbhdVar) {
        synchronized (this) {
            if (this.f12934x != null) {
                zzbbq.m15856b("Attempt to create multiple AdWebViewVideoControllers.");
            } else {
                this.f12934x = zzbhdVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15585a(zzbhy zzbhyVar) {
        synchronized (this) {
            this.f12926p = zzbhyVar;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15584a(zzdnv zzdnvVar, zzdnw zzdnwVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    /* renamed from: a */
    public final void mo11534a(zzqr zzqrVar) {
        synchronized (this) {
            this.f12935y = zzqrVar.f28889j;
        }
        m26995h(zzqrVar.f28889j);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15583a(zzsc zzscVar) {
        synchronized (this) {
            this.f12898C = zzscVar;
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.C3687ja, com.google.android.gms.internal.ads.zzajz, com.google.android.gms.internal.ads.zzaks
    /* renamed from: a */
    public final void mo15582a(String str) {
        synchronized (this) {
            if (!m15452g()) {
                super.mo15582a(str);
            } else {
                zzbbq.m15852d("The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15581a(String str, Predicate<zzahq<? super zzbgj>> predicate) {
        zzbib zzbibVar = this.f12915e;
        if (zzbibVar != null) {
            zzbibVar.m15488a(str, predicate);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15580a(String str, zzahq<? super zzbgj> zzahqVar) {
        zzbib zzbibVar = this.f12915e;
        if (zzbibVar != null) {
            zzbibVar.m15481b(str, zzahqVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu
    /* renamed from: a */
    public final void mo15579a(String str, zzbfl zzbflVar) {
        synchronized (this) {
            if (this.f12912Q == null) {
                this.f12912Q = new HashMap();
            }
            this.f12912Q.put(str, zzbflVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajz
    /* renamed from: a */
    public final void mo16672a(String str, String str2) {
        zzakc.m16716a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15578a(String str, String str2, String str3) {
        synchronized (this) {
            super.loadDataWithBaseURL(str, zzbho.m15523a(str2, zzbho.m15524a()), "text/html", Request.DEFAULT_PARAMS_ENCODING, str3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    /* renamed from: a */
    public final void mo15577a(String str, Map map) {
        zzakc.m16715a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzajz, com.google.android.gms.internal.ads.zzajr
    /* renamed from: a */
    public final void mo15576a(String str, JSONObject jSONObject) {
        zzakc.m16713b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: a */
    public final void mo15575a(boolean z) {
        this.f12915e.m15478c(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    /* renamed from: a */
    public final void mo15521a(boolean z, int i) {
        this.f12915e.m15485a(z, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    /* renamed from: a */
    public final void mo15520a(boolean z, int i, String str) {
        this.f12915e.m15484a(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    /* renamed from: a */
    public final void mo15519a(boolean z, int i, String str, String str2) {
        this.f12915e.m15483a(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: a */
    public final void mo15574a(boolean z, long j) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("success", z ? "1" : "0");
        hashMap.put(VastIconXmlManager.DURATION, Long.toString(j));
        zzakc.m16715a(this, "onCacheAccessComplete", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu, com.google.android.gms.internal.ads.zzbhi
    /* renamed from: b */
    public final Activity mo15528b() {
        return this.f12914d.m15502b();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: b */
    public final void mo15573b(Context context) {
        this.f12914d.setBaseContext(context);
        this.f12906K.m15887a(this.f12914d.m15502b());
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: b */
    public final void mo15572b(zze zzeVar) {
        synchronized (this) {
            this.f12905J = zzeVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: b */
    public final void mo15570b(String str, zzahq<? super zzbgj> zzahqVar) {
        zzbib zzbibVar = this.f12915e;
        if (zzbibVar != null) {
            zzbibVar.m15487a(str, zzahqVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaks
    /* renamed from: b */
    public final void mo15569b(String str, JSONObject jSONObject) {
        zzakc.m16714a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: b */
    public final void mo15568b(boolean z) {
        synchronized (this) {
            if (this.f12925o != null) {
                this.f12925o.m18013a(this.f12915e.mo15482b(), z);
            } else {
                this.f12928r = z;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: b */
    public final boolean mo15567b(final boolean z, final int i) {
        destroy();
        this.f12922l.m11425a(new zztr(z, i) { // from class: c.d.b.d.g.a.ia

            /* renamed from: a */
            public final boolean f13504a;

            /* renamed from: b */
            public final int f13505b;

            {
                this.f13504a = z;
                this.f13505b = i;
            }

            @Override // com.google.android.gms.internal.ads.zztr
            /* renamed from: a */
            public final void mo11427a(zzua.zzi.zza zzaVar) {
                ViewTreeObserver$OnGlobalLayoutListenerC3538fa.m26996a(this.f13504a, this.f13505b, zzaVar);
            }
        });
        this.f12922l.m11424a(zztu.zza.zzb.ANDROID_WEBVIEW_CRASH);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbhr
    /* renamed from: c */
    public final zzbhy mo15517c() {
        zzbhy zzbhyVar;
        synchronized (this) {
            zzbhyVar = this.f12926p;
        }
        return zzbhyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbim
    /* renamed from: c */
    public final void mo15453c(boolean z) {
        synchronized (this) {
            if (!z) {
                m26999Y();
                this.f12906K.m15883d();
                if (this.f12925o != null) {
                    this.f12925o.m18018Q1();
                    this.f12925o.onDestroy();
                    this.f12925o = null;
                }
            }
            this.f12907L.set(null);
            this.f12915e.m15470i();
            zzp.m17947y();
            zzbfi.m15672a(this);
            m27000X();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu
    /* renamed from: d */
    public final zzabp mo15566d() {
        return this.f12904I;
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: d */
    public final zzbfl mo15565d(String str) {
        synchronized (this) {
            if (this.f12912Q == null) {
                return null;
            }
            return this.f12912Q.get(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: d */
    public final void mo15564d(boolean z) {
        synchronized (this) {
            this.f12932v = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: e */
    public final void mo15563e(boolean z) {
        synchronized (this) {
            int i = this.f12899D + (z ? 1 : -1);
            this.f12899D = i;
            if (i <= 0 && this.f12925o != null) {
                this.f12925o.m18005j2();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbhl
    /* renamed from: e */
    public final boolean mo15526e() {
        boolean z;
        synchronized (this) {
            z = this.f12929s;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu
    /* renamed from: f */
    public final zzb mo15562f() {
        return this.f12920j;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: f */
    public final void mo15561f(boolean z) {
        this.f12915e.m15476d(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: g */
    public final void mo15559g(boolean z) {
        synchronized (this) {
            boolean z2 = z != this.f12929s;
            this.f12929s = z;
            m27003U();
            if (z2) {
                if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23683H)).booleanValue() || !this.f12926p.m15510b()) {
                    new zzaqn(this).m16425c(z ? "expanded" : "default");
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    public final String getRequestId() {
        String str;
        synchronized (this) {
            str = this.f12933w;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbhs
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    public final WebView getWebView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbhq
    /* renamed from: h */
    public final zzeg mo15518h() {
        return this.f12916f;
    }

    /* renamed from: h */
    public final void m26995h(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", z ? "1" : "0");
        zzakc.m16715a(this, "onAdVisibilityChanged", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu
    /* renamed from: i */
    public final zzbhd mo15558i() {
        zzbhd zzbhdVar;
        synchronized (this) {
            zzbhdVar = this.f12934x;
        }
        return zzbhdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: j */
    public final int mo15557j() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: k */
    public final void mo15556k() {
        this.f12906K.m15884c();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: l */
    public final zze mo15555l() {
        zze zzeVar;
        synchronized (this) {
            zzeVar = this.f12905J;
        }
        return zzeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: m */
    public final zzbdn mo15554m() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: o */
    public final int mo15553o() {
        return getMeasuredHeight();
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        synchronized (this) {
            super.onAttachedToWindow();
            if (!m15452g()) {
                this.f12906K.m15888a();
            }
            boolean z = this.f12935y;
            boolean z2 = z;
            if (this.f12915e != null) {
                z2 = z;
                if (this.f12915e.m15469j()) {
                    if (!this.f12936z) {
                        this.f12915e.m15467l();
                        this.f12915e.m15466m();
                        this.f12936z = true;
                    }
                    m27005S();
                    z2 = true;
                }
            }
            m26995h(z2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        synchronized (this) {
            if (!m15452g()) {
                this.f12906K.m15886b();
            }
            super.onDetachedFromWindow();
            if (this.f12936z && this.f12915e != null && this.f12915e.m15469j() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.f12915e.m15467l();
                this.f12915e.m15466m();
                this.f12936z = false;
            }
        }
        m26995h(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            zzp.m17969c();
            zzayu.m16143a(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(str4).length());
            sb.append("Couldn't find an Activity to view url/mimetype: ");
            sb.append(str);
            sb.append(" / ");
            sb.append(str4);
            zzbbq.m15858a(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbim, android.webkit.WebView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (Build.VERSION.SDK_INT != 21 || !canvas.isHardwareAccelerated() || isAttachedToWindow()) {
            super.onDraw(canvas);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue > 0.0f && !canScrollVertically(-1)) {
                return false;
            }
            if (axisValue < 0.0f && !canScrollVertically(1)) {
                return false;
            }
            if (axisValue2 > 0.0f && !canScrollHorizontally(-1)) {
                return false;
            }
            if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean S = m27005S();
        zze O = mo15595O();
        if (O != null && S) {
            O.m18008g2();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0286 A[Catch: all -> 0x035c, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0012, B:11:0x0019, B:13:0x0020, B:16:0x002d, B:18:0x0037, B:21:0x0040, B:23:0x004a, B:25:0x005e, B:28:0x0067, B:30:0x0070, B:34:0x0083, B:37:0x008c, B:48:0x0100, B:51:0x0114, B:53:0x011e, B:55:0x0132, B:58:0x013b, B:60:0x0161, B:61:0x0173, B:63:0x0179, B:66:0x0182, B:69:0x018b, B:71:0x0195, B:74:0x01aa, B:86:0x01f5, B:89:0x0205, B:94:0x021b, B:96:0x0222, B:98:0x0232, B:100:0x0250, B:110:0x0286, B:112:0x0322, B:114:0x0328, B:117:0x0330, B:119:0x0339, B:121:0x033f, B:124:0x0353), top: B:131:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0330 A[Catch: all -> 0x035c, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0012, B:11:0x0019, B:13:0x0020, B:16:0x002d, B:18:0x0037, B:21:0x0040, B:23:0x004a, B:25:0x005e, B:28:0x0067, B:30:0x0070, B:34:0x0083, B:37:0x008c, B:48:0x0100, B:51:0x0114, B:53:0x011e, B:55:0x0132, B:58:0x013b, B:60:0x0161, B:61:0x0173, B:63:0x0179, B:66:0x0182, B:69:0x018b, B:71:0x0195, B:74:0x01aa, B:86:0x01f5, B:89:0x0205, B:94:0x021b, B:96:0x0222, B:98:0x0232, B:100:0x0250, B:110:0x0286, B:112:0x0322, B:114:0x0328, B:117:0x0330, B:119:0x0339, B:121:0x033f, B:124:0x0353), top: B:131:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0232 A[Catch: all -> 0x035c, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0012, B:11:0x0019, B:13:0x0020, B:16:0x002d, B:18:0x0037, B:21:0x0040, B:23:0x004a, B:25:0x005e, B:28:0x0067, B:30:0x0070, B:34:0x0083, B:37:0x008c, B:48:0x0100, B:51:0x0114, B:53:0x011e, B:55:0x0132, B:58:0x013b, B:60:0x0161, B:61:0x0173, B:63:0x0179, B:66:0x0182, B:69:0x018b, B:71:0x0195, B:74:0x01aa, B:86:0x01f5, B:89:0x0205, B:94:0x021b, B:96:0x0222, B:98:0x0232, B:100:0x0250, B:110:0x0286, B:112:0x0322, B:114:0x0328, B:117:0x0330, B:119:0x0339, B:121:0x033f, B:124:0x0353), top: B:131:0x0002 }] */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 865
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.ViewTreeObserver$OnGlobalLayoutListenerC3538fa.onMeasure(int, int):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbim, android.webkit.WebView, com.google.android.gms.internal.ads.zzbgj
    public final void onPause() {
        try {
            super.onPause();
        } catch (Exception e) {
            zzbbq.m15855b("Could not pause webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbim, android.webkit.WebView, com.google.android.gms.internal.ads.zzbgj
    public final void onResume() {
        try {
            super.onResume();
        } catch (Exception e) {
            zzbbq.m15855b("Could not resume webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbim, android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f12915e.m15469j() || this.f12915e.m15468k()) {
            zzeg zzegVar = this.f12916f;
            if (zzegVar != null) {
                zzegVar.m12599a(motionEvent);
            }
            zzacb zzacbVar = this.f12917g;
            if (zzacbVar != null) {
                zzacbVar.m16872a(motionEvent);
            }
        } else {
            synchronized (this) {
                if (this.f12896A != null) {
                    this.f12896A.mo16843a(motionEvent);
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.ads.internal.zzk
    /* renamed from: p */
    public final void mo15552p() {
        synchronized (this) {
            if (this.f12919i != null) {
                this.f12919i.mo15552p();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: r */
    public final void mo15551r() {
        if (this.f12903H == null) {
            zzabq a = zzabj.m16896a(this.f12904I.m16892a());
            this.f12903H = a;
            this.f12904I.m16891a("native:view_load", a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: s */
    public final void mo15550s() {
        synchronized (this) {
            if (this.f12897B != null) {
                this.f12897B.mo14260L1();
            }
        }
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzbgj
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        new WeakReference(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    public final void setRequestedOrientation(int i) {
        synchronized (this) {
            this.f12931u = i;
            if (this.f12925o != null) {
                this.f12925o.m18009f(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbim, android.webkit.WebView
    public final void stopLoading() {
        try {
            super.stopLoading();
        } catch (Exception e) {
            zzbbq.m15855b("Could not stop loading webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: t */
    public final String mo15549t() {
        String str;
        synchronized (this) {
            str = this.f12927q;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: u */
    public final void mo15548u() {
        zze O = mo15595O();
        if (O != null) {
            O.m18006i2();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: v */
    public final zzads mo15547v() {
        zzads zzadsVar;
        synchronized (this) {
            zzadsVar = this.f12896A;
        }
        return zzadsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: w */
    public final IObjectWrapper mo15546w() {
        return this.f12907L.get();
    }

    @Override // com.google.android.gms.ads.internal.zzk
    /* renamed from: x */
    public final void mo15545x() {
        synchronized (this) {
            if (this.f12919i != null) {
                this.f12919i.mo15545x();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: y */
    public final void mo15544y() {
        if (this.f12901F == null) {
            zzabj.m16895a(this.f12904I.m16892a(), this.f12902G, "aes2");
            zzabq a = zzabj.m16896a(this.f12904I.m16892a());
            this.f12901F = a;
            this.f12904I.m16891a("native:view_show", a);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f12918h.f24759a);
        zzakc.m16715a(this, "onshow", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: z */
    public final /* synthetic */ zzbhv mo15543z() {
        return this.f12915e;
    }
}
