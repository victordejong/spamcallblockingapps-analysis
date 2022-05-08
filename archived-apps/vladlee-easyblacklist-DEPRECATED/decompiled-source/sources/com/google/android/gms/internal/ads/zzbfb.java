package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.core.p037g.C0741t;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.overlay.zzt;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.Predicate;
import java.io.ByteArrayInputStream;
import java.io.File;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfb.class */
public final class zzbfb extends zzbfk implements zzbev {

    /* renamed from: a */
    protected zzbdi f11785a;

    /* renamed from: d */
    private zzty f11788d;

    /* renamed from: e */
    private zzo f11789e;

    /* renamed from: f */
    private zzbeu f11790f;

    /* renamed from: g */
    private zzbex f11791g;

    /* renamed from: h */
    private zzaew f11792h;

    /* renamed from: i */
    private zzaey f11793i;

    /* renamed from: j */
    private zzbew f11794j;

    /* renamed from: l */
    private volatile boolean f11796l;

    /* renamed from: m */
    private boolean f11797m;

    /* renamed from: n */
    private boolean f11798n;

    /* renamed from: o */
    private boolean f11799o;

    /* renamed from: p */
    private zzt f11800p;

    /* renamed from: q */
    private zzaol f11801q;

    /* renamed from: r */
    private zzc f11802r;

    /* renamed from: s */
    private zzaoe f11803s;

    /* renamed from: t */
    private zzato f11804t;

    /* renamed from: u */
    private boolean f11805u;

    /* renamed from: v */
    private boolean f11806v;

    /* renamed from: w */
    private int f11807w;

    /* renamed from: x */
    private boolean f11808x;

    /* renamed from: y */
    private View.OnAttachStateChangeListener f11809y;

    /* renamed from: c */
    private final Object f11787c = new Object();

    /* renamed from: k */
    private boolean f11795k = false;

    /* renamed from: b */
    private final zzaie<zzbdi> f11786b = new zzaie<>();

    /* JADX WARN: Code restructure failed: missing block: B:41:0x017a, code lost:
        com.google.android.gms.ads.internal.zzq.zzkq();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0183, code lost:
        return com.google.android.gms.internal.ads.zzawb.zzd(r0);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.webkit.WebResourceResponse m4098a(com.google.android.gms.internal.ads.zzbfn r7) {
        /*
            Method dump skipped, instructions count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbfb.m4098a(com.google.android.gms.internal.ads.zzbfn):android.webkit.WebResourceResponse");
    }

    /* renamed from: a */
    private final void m4103a() {
        if (this.f11809y != null) {
            this.f11785a.getView().removeOnAttachStateChangeListener(this.f11809y);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m4102a(View view, zzato zzatoVar, int i) {
        if (zzatoVar.zzul() && i > 0) {
            zzatoVar.zzj(view);
            if (zzatoVar.zzul()) {
                zzawb.zzdsr.postDelayed(new RunnableC1981jk(this, view, zzatoVar, i), 100L);
            }
        }
    }

    /* renamed from: a */
    private final void m4101a(AdOverlayInfoParcel adOverlayInfoParcel) {
        zzaoe zzaoeVar = this.f11803s;
        boolean zztg = zzaoeVar != null ? zzaoeVar.zztg() : false;
        zzq.zzkp();
        zzn.zza(this.f11785a.getContext(), adOverlayInfoParcel, !zztg);
        if (this.f11804t != null) {
            String str = adOverlayInfoParcel.url;
            String str2 = str;
            if (str == null) {
                str2 = str;
                if (adOverlayInfoParcel.zzdhp != null) {
                    str2 = adOverlayInfoParcel.zzdhp.url;
                }
            }
            this.f11804t.zzdv(str2);
        }
    }

    /* renamed from: b */
    private final void m4097b() {
        if (this.f11790f != null && ((this.f11805u && this.f11807w <= 0) || this.f11806v)) {
            this.f11790f.zzak(!this.f11806v);
            this.f11790f = null;
        }
        this.f11785a.zzaak();
    }

    /* renamed from: c */
    private static WebResourceResponse m4096c() {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcip)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m4100a(zzbdi zzbdiVar, boolean z) {
        zzaol zzaolVar = new zzaol(zzbdiVar, zzbdiVar.zzzv(), new zzyy(zzbdiVar.getContext()));
        this.f11785a = zzbdiVar;
        this.f11796l = z;
        this.f11801q = zzaolVar;
        this.f11803s = null;
        this.f11786b.zzg((zzaie<zzbdi>) zzbdiVar);
    }

    public final void destroy() {
        zzato zzatoVar = this.f11804t;
        if (zzatoVar != null) {
            zzatoVar.zzun();
            this.f11804t = null;
        }
        m4103a();
        this.f11786b.reset();
        this.f11786b.zzg((zzaie<zzbdi>) null);
        synchronized (this.f11787c) {
            this.f11788d = null;
            this.f11789e = null;
            this.f11790f = null;
            this.f11791g = null;
            this.f11792h = null;
            this.f11793i = null;
            this.f11800p = null;
            this.f11794j = null;
            if (this.f11803s != null) {
                this.f11803s.zzac(true);
                this.f11803s = null;
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        zzro zzaaq = this.f11785a.zzaaq();
        if (zzaaq != null && webView == zzaaq.getWebView()) {
            zzaaq.onPageStarted(webView, str, bitmap);
        }
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.f11785a.zzb(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zza(int i, int i2, boolean z) {
        this.f11801q.zzj(i, i2);
        zzaoe zzaoeVar = this.f11803s;
        if (zzaoeVar != null) {
            zzaoeVar.zza(i, i2, false);
        }
    }

    public final void zza(zzd zzdVar) {
        boolean zzaaf = this.f11785a.zzaaf();
        m4101a(new AdOverlayInfoParcel(zzdVar, (!zzaaf || this.f11785a.zzzy().zzabt()) ? this.f11788d : null, zzaaf ? null : this.f11789e, this.f11800p, this.f11785a.zzyr()));
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zza(zzbeu zzbeuVar) {
        this.f11790f = zzbeuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zza(zzbex zzbexVar) {
        this.f11791g = zzbexVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfk
    public final void zza(zzbfn zzbfnVar) {
        this.f11805u = true;
        zzbex zzbexVar = this.f11791g;
        if (zzbexVar != null) {
            zzbexVar.zzsb();
            this.f11791g = null;
        }
        m4097b();
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zza(zzty zztyVar, zzaew zzaewVar, zzo zzoVar, zzaey zzaeyVar, zzt zztVar, boolean z, zzafq zzafqVar, zzc zzcVar, zzaon zzaonVar, zzato zzatoVar) {
        zzc zzcVar2 = zzcVar;
        if (zzcVar == null) {
            zzcVar2 = new zzc(this.f11785a.getContext(), zzatoVar, null);
        }
        this.f11803s = new zzaoe(this.f11785a, zzaonVar);
        this.f11804t = zzatoVar;
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzciz)).booleanValue()) {
            zza("/adMetadata", new zzaet(zzaewVar));
        }
        zza("/appEvent", new zzaev(zzaeyVar));
        zza("/backButton", zzafa.zzcxd);
        zza("/refresh", zzafa.zzcxe);
        zza("/canOpenURLs", zzafa.zzcwu);
        zza("/canOpenIntents", zzafa.zzcwv);
        zza("/click", zzafa.zzcww);
        zza("/close", zzafa.zzcwx);
        zza("/customClose", zzafa.zzcwy);
        zza("/instrument", zzafa.zzcxh);
        zza("/delayPageLoaded", zzafa.zzcxj);
        zza("/delayPageClosed", zzafa.zzcxk);
        zza("/getLocationInfo", zzafa.zzcxl);
        zza("/httpTrack", zzafa.zzcwz);
        zza("/log", zzafa.zzcxa);
        zza("/mraid", new zzafs(zzcVar2, this.f11803s, zzaonVar));
        zza("/mraidLoaded", this.f11801q);
        zza("/open", new zzafr(zzcVar2, this.f11803s));
        zza("/precache", new zzbcs());
        zza("/touch", zzafa.zzcxc);
        zza("/video", zzafa.zzcxf);
        zza("/videoMeta", zzafa.zzcxg);
        if (zzq.zzlo().zzab(this.f11785a.getContext())) {
            zza("/logScionEvent", new zzafp(this.f11785a.getContext()));
        }
        this.f11788d = zztyVar;
        this.f11789e = zzoVar;
        this.f11792h = zzaewVar;
        this.f11793i = zzaeyVar;
        this.f11800p = zztVar;
        this.f11802r = zzcVar2;
        this.f11795k = z;
    }

    public final void zza(String str, Predicate<zzafn<? super zzbdi>> predicate) {
        this.f11786b.zza(str, predicate);
    }

    public final void zza(String str, zzafn<? super zzbdi> zzafnVar) {
        this.f11786b.zza(str, zzafnVar);
    }

    public final void zza(boolean z, int i, String str) {
        boolean zzaaf = this.f11785a.zzaaf();
        zzty zztyVar = (!zzaaf || this.f11785a.zzzy().zzabt()) ? this.f11788d : null;
        C1982jl jlVar = zzaaf ? null : new C1982jl(this.f11785a, this.f11789e);
        zzaew zzaewVar = this.f11792h;
        zzaey zzaeyVar = this.f11793i;
        zzt zztVar = this.f11800p;
        zzbdi zzbdiVar = this.f11785a;
        m4101a(new AdOverlayInfoParcel(zztyVar, jlVar, zzaewVar, zzaeyVar, zztVar, zzbdiVar, z, i, str, zzbdiVar.zzyr()));
    }

    public final void zza(boolean z, int i, String str, String str2) {
        boolean zzaaf = this.f11785a.zzaaf();
        zzty zztyVar = (!zzaaf || this.f11785a.zzzy().zzabt()) ? this.f11788d : null;
        C1982jl jlVar = zzaaf ? null : new C1982jl(this.f11785a, this.f11789e);
        zzaew zzaewVar = this.f11792h;
        zzaey zzaeyVar = this.f11793i;
        zzt zztVar = this.f11800p;
        zzbdi zzbdiVar = this.f11785a;
        m4101a(new AdOverlayInfoParcel(zztyVar, jlVar, zzaewVar, zzaeyVar, zztVar, zzbdiVar, z, i, str, str2, zzbdiVar.zzyr()));
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final zzc zzaas() {
        return this.f11802r;
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final boolean zzaat() {
        return this.f11796l;
    }

    public final boolean zzaau() {
        boolean z;
        synchronized (this.f11787c) {
            z = this.f11797m;
        }
        return z;
    }

    public final boolean zzaav() {
        boolean z;
        synchronized (this.f11787c) {
            z = this.f11798n;
        }
        return z;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener zzaaw() {
        synchronized (this.f11787c) {
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener zzaax() {
        synchronized (this.f11787c) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zzaaz() {
        zzato zzatoVar = this.f11804t;
        if (zzatoVar != null) {
            WebView webView = this.f11785a.getWebView();
            if (C0741t.m8370E(webView)) {
                m4102a(webView, zzatoVar, 10);
                return;
            }
            m4103a();
            this.f11809y = new View$OnAttachStateChangeListenerC1980jj(this, zzatoVar);
            this.f11785a.getView().addOnAttachStateChangeListener(this.f11809y);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zzaba() {
        synchronized (this.f11787c) {
            this.f11799o = true;
        }
        this.f11807w++;
        m4097b();
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zzabb() {
        this.f11807w--;
        m4097b();
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zzabc() {
        this.f11806v = true;
        m4097b();
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final zzato zzabf() {
        return this.f11804t;
    }

    public final void zzav(boolean z) {
        this.f11795k = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbfk
    public final void zzb(zzbfn zzbfnVar) {
        this.f11786b.zzg(zzbfnVar.uri);
    }

    public final void zzb(String str, zzafn<? super zzbdi> zzafnVar) {
        this.f11786b.zzb(str, zzafnVar);
    }

    public final void zzba(boolean z) {
        this.f11808x = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zzbb(boolean z) {
        synchronized (this.f11787c) {
            this.f11797m = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zzbc(boolean z) {
        synchronized (this.f11787c) {
            this.f11798n = z;
        }
    }

    public final void zzc(boolean z, int i) {
        zzty zztyVar = (!this.f11785a.zzaaf() || this.f11785a.zzzy().zzabt()) ? this.f11788d : null;
        zzo zzoVar = this.f11789e;
        zzt zztVar = this.f11800p;
        zzbdi zzbdiVar = this.f11785a;
        m4101a(new AdOverlayInfoParcel(zztyVar, zzoVar, zztVar, zzbdiVar, z, i, zzbdiVar.zzyr()));
    }

    @Override // com.google.android.gms.internal.ads.zzbfk
    public final boolean zzc(zzbfn zzbfnVar) {
        Uri uri;
        String valueOf = String.valueOf(zzbfnVar.url);
        zzavs.zzed(valueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(valueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri uri2 = zzbfnVar.uri;
        if (this.f11786b.zzg(uri2)) {
            return true;
        }
        if (this.f11795k) {
            String scheme = uri2.getScheme();
            if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                zzty zztyVar = this.f11788d;
                if (zztyVar == null) {
                    return false;
                }
                zztyVar.onAdClicked();
                zzato zzatoVar = this.f11804t;
                if (zzatoVar != null) {
                    zzatoVar.zzdv(zzbfnVar.url);
                }
                this.f11788d = null;
                return false;
            }
        }
        if (!this.f11785a.getWebView().willNotDraw()) {
            try {
                zzdq zzaad = this.f11785a.zzaad();
                uri = uri2;
                if (zzaad != null) {
                    uri = uri2;
                    if (zzaad.zzb(uri2)) {
                        uri = zzaad.zza(uri2, this.f11785a.getContext(), this.f11785a.getView(), this.f11785a.zzyn());
                    }
                }
            } catch (zzdt e) {
                String valueOf2 = String.valueOf(zzbfnVar.url);
                zzavs.zzez(valueOf2.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf2) : new String("Unable to append parameter to URL: "));
                uri = uri2;
            }
            zzc zzcVar = this.f11802r;
            if (zzcVar == null || zzcVar.zzjq()) {
                zza(new zzd("android.intent.action.VIEW", uri.toString(), null, null, null, null, null));
                return true;
            }
            this.f11802r.zzbq(zzbfnVar.url);
            return true;
        }
        String valueOf3 = String.valueOf(zzbfnVar.url);
        zzavs.zzez(valueOf3.length() != 0 ? "AdWebView unable to handle URL: ".concat(valueOf3) : new String("AdWebView unable to handle URL: "));
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbfk
    public final WebResourceResponse zzd(zzbfn zzbfnVar) {
        WebResourceResponse webResourceResponse;
        zzrx zza;
        zzato zzatoVar = this.f11804t;
        if (zzatoVar != null) {
            zzatoVar.zza(zzbfnVar.url, zzbfnVar.zzab, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(zzbfnVar.url).getName())) {
            webResourceResponse = null;
        } else {
            zztn();
            String str = (String) zzve.zzoy().zzd(this.f11785a.zzzy().zzabt() ? zzzn.zzchn : this.f11785a.zzaaf() ? zzzn.zzchm : zzzn.zzchl);
            zzq.zzkq();
            webResourceResponse = zzawb.zzd(this.f11785a.getContext(), this.f11785a.zzyr().zzbma, str);
        }
        if (webResourceResponse != null) {
            return webResourceResponse;
        }
        try {
            if (!zzauk.zzb(zzbfnVar.url, this.f11785a.getContext(), this.f11808x).equals(zzbfnVar.url)) {
                return m4098a(zzbfnVar);
            }
            zzry zzby = zzry.zzby(zzbfnVar.url);
            if (zzby != null && (zza = zzq.zzkw().zza(zzby)) != null && zza.zzmp()) {
                return new WebResourceResponse("", "", zza.zzmq());
            }
            if (!zzayo.isEnabled() || !zzaax.zzcte.get().booleanValue()) {
                return null;
            }
            return m4098a(zzbfnVar);
        } catch (Exception | NoClassDefFoundError e) {
            zzq.zzku().zza(e, "AdWebViewClient.interceptRequest");
            return m4096c();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zzh(Uri uri) {
        this.f11786b.zzh(uri);
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zzi(int i, int i2) {
        zzaoe zzaoeVar = this.f11803s;
        if (zzaoeVar != null) {
            zzaoeVar.zzi(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zztn() {
        synchronized (this.f11787c) {
            this.f11795k = false;
            this.f11796l = true;
            zzazd.zzdwi.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ji

                /* renamed from: a */
                private final zzbfb f8733a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8733a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbfb zzbfbVar = this.f8733a;
                    zzbfbVar.f11785a.zzaaj();
                    com.google.android.gms.ads.internal.overlay.zzc zzzw = zzbfbVar.f11785a.zzzw();
                    if (zzzw != null) {
                        zzzw.zztn();
                    }
                }
            });
        }
    }
}
