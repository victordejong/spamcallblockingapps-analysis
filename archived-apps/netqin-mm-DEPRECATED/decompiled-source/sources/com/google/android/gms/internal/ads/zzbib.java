package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbib;
import java.io.ByteArrayInputStream;
import java.io.File;
import p012b.p042i.p054p.C1002u;
import p131c.p161d.p170b.p224d.p252g.p253a.C3501ea;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3464da;
import p131c.p161d.p170b.p224d.p252g.p253a.View$OnAttachStateChangeListenerC3427ca;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbib.class */
public final class zzbib extends zzbik implements zzbhv {

    /* renamed from: d */
    public zzbgj f25008d;

    /* renamed from: g */
    public zzux f25011g;

    /* renamed from: h */
    public zzp f25012h;

    /* renamed from: i */
    public zzbhu f25013i;

    /* renamed from: j */
    public zzbhx f25014j;

    /* renamed from: k */
    public zzagt f25015k;

    /* renamed from: l */
    public zzagv f25016l;

    /* renamed from: n */
    public volatile boolean f25018n;

    /* renamed from: o */
    public boolean f25019o;

    /* renamed from: p */
    public boolean f25020p;

    /* renamed from: q */
    public zzv f25021q;

    /* renamed from: r */
    public zzaqo f25022r;

    /* renamed from: s */
    public zza f25023s;

    /* renamed from: t */
    public zzaqd f25024t;

    /* renamed from: u */
    public zzawl f25025u;

    /* renamed from: v */
    public boolean f25026v;

    /* renamed from: w */
    public boolean f25027w;

    /* renamed from: x */
    public int f25028x;

    /* renamed from: y */
    public boolean f25029y;

    /* renamed from: z */
    public View.OnAttachStateChangeListener f25030z;

    /* renamed from: f */
    public final Object f25010f = new Object();

    /* renamed from: m */
    public boolean f25017m = false;

    /* renamed from: e */
    public final zzakd<zzbgj> f25009e = new zzakd<>();

    /* renamed from: p */
    public static WebResourceResponse m15463p() {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23821h0)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: a */
    public final void mo15500a() {
        this.f25027w = true;
        m15464o();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: a */
    public final void mo15499a(int i, int i2) {
        zzaqd zzaqdVar = this.f25024t;
        if (zzaqdVar != null) {
            zzaqdVar.m16448a(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: a */
    public final void mo15498a(int i, int i2, boolean z) {
        this.f25022r.m16424a(i, i2);
        zzaqd zzaqdVar = this.f25024t;
        if (zzaqdVar != null) {
            zzaqdVar.m16447a(i, i2, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: a */
    public final void mo15497a(Uri uri) {
        this.f25009e.m16707b(uri);
    }

    /* renamed from: a */
    public final void m15496a(View view, zzawl zzawlVar, int i) {
        if (zzawlVar.mo16260c() && i > 0) {
            zzawlVar.mo16265a(view);
            if (zzawlVar.mo16260c()) {
                zzayu.f24665h.postDelayed(new RunnableC3464da(this, view, zzawlVar, i), 100L);
            }
        }
    }

    /* renamed from: a */
    public final void m15495a(AdOverlayInfoParcel adOverlayInfoParcel) {
        zzaqd zzaqdVar = this.f25024t;
        boolean a = zzaqdVar != null ? zzaqdVar.m16449a() : false;
        com.google.android.gms.ads.internal.zzp.m17970b();
        zzl.m18002a(this.f25008d.getContext(), adOverlayInfoParcel, !a);
        if (this.f25025u != null) {
            String str = adOverlayInfoParcel.f22740l;
            String str2 = str;
            if (str == null) {
                zzb zzbVar = adOverlayInfoParcel.f22729a;
                str2 = str;
                if (zzbVar != null) {
                    str2 = zzbVar.f22746b;
                }
            }
            this.f25025u.mo16264a(str2);
        }
    }

    /* renamed from: a */
    public final void m15494a(zzb zzbVar) {
        boolean e = this.f25008d.mo15526e();
        m15495a(new AdOverlayInfoParcel(zzbVar, (!e || this.f25008d.mo15517c().m15510b()) ? this.f25011g : null, e ? null : this.f25012h, this.f25021q, this.f25008d.mo15516a()));
    }

    /* renamed from: a */
    public final void m15493a(zzbgj zzbgjVar, boolean z) {
        zzaqo zzaqoVar = new zzaqo(zzbgjVar, zzbgjVar.mo15599K(), new zzaam(zzbgjVar.getContext()));
        this.f25008d = zzbgjVar;
        this.f25018n = z;
        this.f25022r = zzaqoVar;
        this.f25024t = null;
        this.f25009e.m16710a((zzakd<zzbgj>) zzbgjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: a */
    public final void mo15492a(zzbhu zzbhuVar) {
        this.f25013i = zzbhuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: a */
    public final void mo15491a(zzbhx zzbhxVar) {
        this.f25014j = zzbhxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbik
    /* renamed from: a */
    public final void mo15461a(zzbin zzbinVar) {
        this.f25026v = true;
        zzbhx zzbhxVar = this.f25014j;
        if (zzbhxVar != null) {
            zzbhxVar.mo15514a();
            this.f25014j = null;
        }
        m15464o();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: a */
    public final void mo15489a(zzux zzuxVar, zzagt zzagtVar, zzp zzpVar, zzagv zzagvVar, zzv zzvVar, boolean z, zzahp zzahpVar, zza zzaVar, zzaqq zzaqqVar, zzawl zzawlVar) {
        zza zzaVar2 = zzaVar;
        if (zzaVar == null) {
            zzaVar2 = new zza(this.f25008d.getContext(), zzawlVar, null);
        }
        this.f25024t = new zzaqd(this.f25008d, zzaqqVar);
        this.f25025u = zzawlVar;
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23863o0)).booleanValue()) {
            m15487a("/adMetadata", new zzagu(zzagtVar));
        }
        m15487a("/appEvent", new zzagw(zzagvVar));
        m15487a("/backButton", zzagx.f24101k);
        m15487a("/refresh", zzagx.f24102l);
        m15487a("/canOpenApp", zzagx.f24092b);
        m15487a("/canOpenURLs", zzagx.f24091a);
        m15487a("/canOpenIntents", zzagx.f24093c);
        m15487a("/click", zzagx.f24094d);
        m15487a("/close", zzagx.f24095e);
        m15487a("/customClose", zzagx.f24096f);
        m15487a("/instrument", zzagx.f24105o);
        m15487a("/delayPageLoaded", zzagx.f24107q);
        m15487a("/delayPageClosed", zzagx.f24108r);
        m15487a("/getLocationInfo", zzagx.f24109s);
        m15487a("/httpTrack", zzagx.f24097g);
        m15487a("/log", zzagx.f24098h);
        m15487a("/mraid", new zzahr(zzaVar2, this.f25024t, zzaqqVar));
        m15487a("/mraidLoaded", this.f25022r);
        m15487a("/open", new zzahu(zzaVar2, this.f25024t));
        m15487a("/precache", new zzbfq());
        m15487a("/touch", zzagx.f24100j);
        m15487a("/video", zzagx.f24103m);
        m15487a("/videoMeta", zzagx.f24104n);
        if (com.google.android.gms.ads.internal.zzp.m17972A().m16256a(this.f25008d.getContext())) {
            m15487a("/logScionEvent", new zzahs(this.f25008d.getContext()));
        }
        this.f25011g = zzuxVar;
        this.f25012h = zzpVar;
        this.f25015k = zzagtVar;
        this.f25016l = zzagvVar;
        this.f25021q = zzvVar;
        this.f25023s = zzaVar2;
        this.f25017m = z;
    }

    /* renamed from: a */
    public final void m15488a(String str, Predicate<zzahq<? super zzbgj>> predicate) {
        this.f25009e.m16709a(str, predicate);
    }

    /* renamed from: a */
    public final void m15487a(String str, zzahq<? super zzbgj> zzahqVar) {
        this.f25009e.m16706b(str, zzahqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: a */
    public final void mo15486a(boolean z) {
        synchronized (this.f25010f) {
            this.f25019o = true;
        }
    }

    /* renamed from: a */
    public final void m15485a(boolean z, int i) {
        zzux zzuxVar = (!this.f25008d.mo15526e() || this.f25008d.mo15517c().m15510b()) ? this.f25011g : null;
        zzp zzpVar = this.f25012h;
        zzv zzvVar = this.f25021q;
        zzbgj zzbgjVar = this.f25008d;
        m15495a(new AdOverlayInfoParcel(zzuxVar, zzpVar, zzvVar, zzbgjVar, z, i, zzbgjVar.mo15516a()));
    }

    /* renamed from: a */
    public final void m15484a(boolean z, int i, String str) {
        boolean e = this.f25008d.mo15526e();
        zzux zzuxVar = (!e || this.f25008d.mo15517c().m15510b()) ? this.f25011g : null;
        C3501ea eaVar = e ? null : new C3501ea(this.f25008d, this.f25012h);
        zzagt zzagtVar = this.f25015k;
        zzagv zzagvVar = this.f25016l;
        zzv zzvVar = this.f25021q;
        zzbgj zzbgjVar = this.f25008d;
        m15495a(new AdOverlayInfoParcel(zzuxVar, eaVar, zzagtVar, zzagvVar, zzvVar, zzbgjVar, z, i, str, zzbgjVar.mo15516a()));
    }

    /* renamed from: a */
    public final void m15483a(boolean z, int i, String str, String str2) {
        boolean e = this.f25008d.mo15526e();
        zzux zzuxVar = (!e || this.f25008d.mo15517c().m15510b()) ? this.f25011g : null;
        C3501ea eaVar = e ? null : new C3501ea(this.f25008d, this.f25012h);
        zzagt zzagtVar = this.f25015k;
        zzagv zzagvVar = this.f25016l;
        zzv zzvVar = this.f25021q;
        zzbgj zzbgjVar = this.f25008d;
        m15495a(new AdOverlayInfoParcel(zzuxVar, eaVar, zzagtVar, zzagvVar, zzvVar, zzbgjVar, z, i, str, str2, zzbgjVar.mo15516a()));
    }

    @Override // com.google.android.gms.internal.ads.zzbik
    /* renamed from: b */
    public final void mo15459b(zzbin zzbinVar) {
        this.f25009e.m16712a(zzbinVar.f25038b);
    }

    /* renamed from: b */
    public final void m15481b(String str, zzahq<? super zzbgj> zzahqVar) {
        this.f25009e.m16708a(str, zzahqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: b */
    public final void mo15480b(boolean z) {
        synchronized (this.f25010f) {
            this.f25020p = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: b */
    public final boolean mo15482b() {
        return this.f25018n;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: c */
    public final zzawl mo15479c() {
        return this.f25025u;
    }

    /* renamed from: c */
    public final void m15478c(boolean z) {
        this.f25017m = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbik
    /* renamed from: c */
    public final boolean mo15458c(zzbin zzbinVar) {
        Uri uri;
        String valueOf = String.valueOf(zzbinVar.f25037a);
        zzayp.m16153g(valueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(valueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri uri2 = zzbinVar.f25038b;
        if (this.f25009e.m16712a(uri2)) {
            return true;
        }
        if (this.f25017m) {
            String scheme = uri2.getScheme();
            if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                zzux zzuxVar = this.f25011g;
                if (zzuxVar == null) {
                    return false;
                }
                zzuxVar.onAdClicked();
                zzawl zzawlVar = this.f25025u;
                if (zzawlVar != null) {
                    zzawlVar.mo16264a(zzbinVar.f25037a);
                }
                this.f25011g = null;
                return false;
            }
        }
        if (!this.f25008d.getWebView().willNotDraw()) {
            try {
                zzeg h = this.f25008d.mo15518h();
                uri = uri2;
                if (h != null) {
                    uri = uri2;
                    if (h.m12598b(uri2)) {
                        uri = h.m12601a(uri2, this.f25008d.getContext(), this.f25008d.getView(), this.f25008d.mo15528b());
                    }
                }
            } catch (zzef e) {
                String valueOf2 = String.valueOf(zzbinVar.f25037a);
                zzbbq.m15852d(valueOf2.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf2) : new String("Unable to append parameter to URL: "));
                uri = uri2;
            }
            zza zzaVar = this.f25023s;
            if (zzaVar == null || zzaVar.m17995c()) {
                m15494a(new zzb("android.intent.action.VIEW", uri.toString(), null, null, null, null, null));
                return true;
            }
            this.f25023s.m17997a(zzbinVar.f25037a);
            return true;
        }
        String valueOf3 = String.valueOf(zzbinVar.f25037a);
        zzbbq.m15852d(valueOf3.length() != 0 ? "AdWebView unable to handle URL: ".concat(valueOf3) : new String("AdWebView unable to handle URL: "));
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbik
    /* renamed from: d */
    public final WebResourceResponse mo15457d(zzbin zzbinVar) {
        WebResourceResponse webResourceResponse;
        zzsz a;
        zzawl zzawlVar = this.f25025u;
        if (zzawlVar != null) {
            zzawlVar.mo16263a(zzbinVar.f25037a, zzbinVar.f25039c, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(zzbinVar.f25037a).getName())) {
            webResourceResponse = null;
        } else {
            mo15477d();
            String str = this.f25008d.mo15517c().m15510b() ? (String) zzwm.m11166e().m16921a(zzabb.f23673F) : this.f25008d.mo15526e() ? (String) zzwm.m11166e().m16921a(zzabb.f23668E) : (String) zzwm.m11166e().m16921a(zzabb.f23663D);
            com.google.android.gms.ads.internal.zzp.m17969c();
            webResourceResponse = zzayu.m16101c(this.f25008d.getContext(), this.f25008d.mo15516a().f24759a, str);
        }
        if (webResourceResponse != null) {
            return webResourceResponse;
        }
        try {
            if (!zzaxh.m16219a(zzbinVar.f25037a, this.f25008d.getContext(), this.f25029y).equals(zzbinVar.f25037a)) {
                return m15474e(zzbinVar);
            }
            zzte a2 = zzte.m11438a(zzbinVar.f25037a);
            if (a2 != null && (a = com.google.android.gms.ads.internal.zzp.m17963i().m11452a(a2)) != null && a.m11446f()) {
                return new WebResourceResponse("", "", a.m11445i());
            }
            if (!zzbbk.m15880a() || !zzacr.f23976b.mo16862a().booleanValue()) {
                return null;
            }
            return m15474e(zzbinVar);
        } catch (Exception | NoClassDefFoundError e) {
            com.google.android.gms.ads.internal.zzp.m17965g().m16188a(e, "AdWebViewClient.interceptRequest");
            return m15463p();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: d */
    public final void mo15477d() {
        synchronized (this.f25010f) {
            this.f25017m = false;
            this.f25018n = true;
            zzbbz.f24768e.execute(new Runnable(this) { // from class: c.d.b.d.g.a.ba

                /* renamed from: a */
                public final zzbib f12351a;

                {
                    this.f12351a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbib zzbibVar = this.f12351a;
                    zzbibVar.f25008d.mo15556k();
                    zze O = zzbibVar.f25008d.mo15595O();
                    if (O != null) {
                        O.m18012a2();
                    }
                }
            });
        }
    }

    /* renamed from: d */
    public final void m15476d(boolean z) {
        this.f25029y = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0184, code lost:
        com.google.android.gms.ads.internal.zzp.m17969c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x018d, code lost:
        return com.google.android.gms.internal.ads.zzayu.m16120a(r0);
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.webkit.WebResourceResponse m15474e(com.google.android.gms.internal.ads.zzbin r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbib.m15474e(com.google.android.gms.internal.ads.zzbin):android.webkit.WebResourceResponse");
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: e */
    public final void mo15475e() {
        zzawl zzawlVar = this.f25025u;
        if (zzawlVar != null) {
            WebView webView = this.f25008d.getWebView();
            if (C1002u.m35197y(webView)) {
                m15496a(webView, zzawlVar, 10);
                return;
            }
            m15465n();
            this.f25030z = new View$OnAttachStateChangeListenerC3427ca(this, zzawlVar);
            this.f25008d.getView().addOnAttachStateChangeListener(this.f25030z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: f */
    public final void mo15473f() {
        this.f25028x--;
        m15464o();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: g */
    public final zza mo15472g() {
        return this.f25023s;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: h */
    public final void mo15471h() {
        synchronized (this.f25010f) {
        }
        this.f25028x++;
        m15464o();
    }

    /* renamed from: i */
    public final void m15470i() {
        zzawl zzawlVar = this.f25025u;
        if (zzawlVar != null) {
            zzawlVar.mo16266a();
            this.f25025u = null;
        }
        m15465n();
        this.f25009e.m16704p();
        this.f25009e.m16710a((zzakd<zzbgj>) null);
        synchronized (this.f25010f) {
            this.f25011g = null;
            this.f25012h = null;
            this.f25013i = null;
            this.f25014j = null;
            this.f25015k = null;
            this.f25016l = null;
            this.f25021q = null;
            if (this.f25024t != null) {
                this.f25024t.m16445a(true);
                this.f25024t = null;
            }
        }
    }

    /* renamed from: j */
    public final boolean m15469j() {
        boolean z;
        synchronized (this.f25010f) {
            z = this.f25019o;
        }
        return z;
    }

    /* renamed from: k */
    public final boolean m15468k() {
        boolean z;
        synchronized (this.f25010f) {
            z = this.f25020p;
        }
        return z;
    }

    /* renamed from: l */
    public final ViewTreeObserver.OnGlobalLayoutListener m15467l() {
        synchronized (this.f25010f) {
        }
        return null;
    }

    /* renamed from: m */
    public final ViewTreeObserver.OnScrollChangedListener m15466m() {
        synchronized (this.f25010f) {
        }
        return null;
    }

    /* renamed from: n */
    public final void m15465n() {
        if (this.f25030z != null) {
            this.f25008d.getView().removeOnAttachStateChangeListener(this.f25030z);
        }
    }

    /* renamed from: o */
    public final void m15464o() {
        if (this.f25013i != null && ((this.f25026v && this.f25028x <= 0) || this.f25027w)) {
            this.f25013i.mo15515a(!this.f25027w);
            this.f25013i = null;
        }
        this.f25008d.mo15551r();
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        zzsu J = this.f25008d.mo15600J();
        if (J != null && webView == J.getWebView()) {
            J.mo11460a(webView, str, bitmap);
        }
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.f25008d.mo15567b(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }
}
