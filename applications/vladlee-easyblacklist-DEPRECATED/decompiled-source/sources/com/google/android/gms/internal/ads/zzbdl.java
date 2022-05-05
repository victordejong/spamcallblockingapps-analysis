package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.core.p037g.C0741t;
import com.google.ads.AdSize;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.overlay.zzt;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.internal.ads.zzso;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.ParametersAreNonnullByDefault;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0007a;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdl.class */
public class zzbdl extends WebViewClient implements zzbev {

    /* renamed from: a */
    protected zzbdi f11735a;

    /* renamed from: b */
    protected zzato f11736b;

    /* renamed from: c */
    private final zzsm f11737c;

    /* renamed from: d */
    private final HashMap<String, List<zzafn<? super zzbdi>>> f11738d;

    /* renamed from: e */
    private final Object f11739e;

    /* renamed from: f */
    private zzty f11740f;

    /* renamed from: g */
    private zzo f11741g;

    /* renamed from: h */
    private zzbeu f11742h;

    /* renamed from: i */
    private zzbex f11743i;

    /* renamed from: j */
    private zzaew f11744j;

    /* renamed from: k */
    private zzaey f11745k;

    /* renamed from: l */
    private zzbew f11746l;

    /* renamed from: m */
    private boolean f11747m;

    /* renamed from: n */
    private boolean f11748n;

    /* renamed from: o */
    private boolean f11749o;

    /* renamed from: p */
    private boolean f11750p;

    /* renamed from: q */
    private boolean f11751q;

    /* renamed from: r */
    private zzt f11752r;

    /* renamed from: s */
    private final zzaol f11753s;

    /* renamed from: t */
    private zzc f11754t;

    /* renamed from: u */
    private zzaoe f11755u;

    /* renamed from: v */
    private boolean f11756v;

    /* renamed from: w */
    private boolean f11757w;

    /* renamed from: x */
    private int f11758x;

    /* renamed from: y */
    private boolean f11759y;

    /* renamed from: z */
    private View.OnAttachStateChangeListener f11760z;

    public zzbdl(zzbdi zzbdiVar, zzsm zzsmVar, boolean z) {
        this(zzbdiVar, zzsmVar, z, new zzaol(zzbdiVar, zzbdiVar.zzzv(), new zzyy(zzbdiVar.getContext())));
    }

    private zzbdl(zzbdi zzbdiVar, zzsm zzsmVar, boolean z, zzaol zzaolVar) {
        this.f11738d = new HashMap<>();
        this.f11739e = new Object();
        this.f11747m = false;
        this.f11737c = zzsmVar;
        this.f11735a = zzbdiVar;
        this.f11748n = z;
        this.f11753s = zzaolVar;
        this.f11755u = null;
    }

    /* renamed from: a */
    private final void m4119a() {
        if (this.f11760z != null) {
            this.f11735a.getView().removeOnAttachStateChangeListener(this.f11760z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m4118a(View view, zzato zzatoVar, int i) {
        if (zzatoVar.zzul() && i > 0) {
            zzatoVar.zzj(view);
            if (zzatoVar.zzul()) {
                zzawb.zzdsr.postDelayed(new RunnableC1961ir(this, view, zzatoVar, i), 100L);
            }
        }
    }

    /* renamed from: a */
    private final void m4117a(AdOverlayInfoParcel adOverlayInfoParcel) {
        zzaoe zzaoeVar = this.f11755u;
        boolean zztg = zzaoeVar != null ? zzaoeVar.zztg() : false;
        zzq.zzkp();
        zzn.zza(this.f11735a.getContext(), adOverlayInfoParcel, !zztg);
        if (this.f11736b != null) {
            String str = adOverlayInfoParcel.url;
            String str2 = str;
            if (str == null) {
                str2 = str;
                if (adOverlayInfoParcel.zzdhp != null) {
                    str2 = adOverlayInfoParcel.zzdhp.url;
                }
            }
            this.f11736b.zzdv(str2);
        }
    }

    /* renamed from: b */
    private final WebResourceResponse m4113b(String str, Map<String, String> map) {
        HttpURLConnection httpURLConnection;
        URL url = new URL(str);
        int i = 0;
        while (true) {
            i++;
            if (i <= 20) {
                URLConnection openConnection = url.openConnection();
                openConnection.setConnectTimeout(AbstractC0007a.DEFAULT_TIMEOUT);
                openConnection.setReadTimeout(AbstractC0007a.DEFAULT_TIMEOUT);
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    openConnection.addRequestProperty(entry.getKey(), entry.getValue());
                }
                if (openConnection instanceof HttpURLConnection) {
                    httpURLConnection = (HttpURLConnection) openConnection;
                    zzq.zzkq().zza(this.f11735a.getContext(), this.f11735a.zzyr().zzbma, false, httpURLConnection);
                    zzayo zzayoVar = new zzayo();
                    zzayoVar.zza(httpURLConnection, (byte[]) null);
                    int responseCode = httpURLConnection.getResponseCode();
                    zzayoVar.zza(httpURLConnection, responseCode);
                    if (responseCode < 300 || responseCode >= 400) {
                        break;
                    }
                    String headerField = httpURLConnection.getHeaderField("Location");
                    if (headerField == null) {
                        throw new IOException("Missing Location header in redirect");
                    } else if (headerField.startsWith("tel:")) {
                        return null;
                    } else {
                        URL url2 = new URL(url, headerField);
                        String protocol = url2.getProtocol();
                        if (protocol == null) {
                            zzavs.zzez("Protocol is null");
                            return m4112c();
                        } else if (protocol.equals("http") || protocol.equals("https")) {
                            String valueOf = String.valueOf(headerField);
                            zzavs.zzea(valueOf.length() != 0 ? "Redirecting to ".concat(valueOf) : new String("Redirecting to "));
                            httpURLConnection.disconnect();
                            url = url2;
                        } else {
                            String valueOf2 = String.valueOf(protocol);
                            zzavs.zzez(valueOf2.length() != 0 ? "Unsupported scheme: ".concat(valueOf2) : new String("Unsupported scheme: "));
                            return m4112c();
                        }
                    }
                } else {
                    throw new IOException("Invalid protocol.");
                }
            } else {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Too many redirects (20)");
                throw new IOException(sb.toString());
            }
        }
        zzq.zzkq();
        return zzawb.zzd(httpURLConnection);
    }

    /* renamed from: b */
    private final void m4114b() {
        if (this.f11742h != null && ((this.f11756v && this.f11758x <= 0) || this.f11757w)) {
            this.f11742h.zzak(!this.f11757w);
            this.f11742h = null;
        }
        this.f11735a.zzaak();
    }

    /* renamed from: c */
    private static WebResourceResponse m4112c() {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcip)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final WebResourceResponse m4115a(String str, Map<String, String> map) {
        zzrx zza;
        try {
            String zzb = zzauk.zzb(str, this.f11735a.getContext(), this.f11759y);
            if (!zzb.equals(str)) {
                return m4113b(zzb, map);
            }
            zzry zzby = zzry.zzby(str);
            if (zzby != null && (zza = zzq.zzkw().zza(zzby)) != null && zza.zzmp()) {
                return new WebResourceResponse("", "", zza.zzmq());
            }
            if (!zzayo.isEnabled() || !zzaax.zzcte.get().booleanValue()) {
                return null;
            }
            return m4113b(str, map);
        } catch (Exception | NoClassDefFoundError e) {
            zzq.zzku().zza(e, "AdWebViewClient.interceptRequest");
            return m4112c();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        String valueOf = String.valueOf(str);
        zzavs.zzed(valueOf.length() != 0 ? "Loading resource: ".concat(valueOf) : new String("Loading resource: "));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            zzh(parse);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.f11739e) {
            if (this.f11735a.isDestroyed()) {
                zzavs.zzed("Blank page loaded, 1...");
                this.f11735a.zzaag();
                return;
            }
            this.f11756v = true;
            zzbex zzbexVar = this.f11743i;
            if (zzbexVar != null) {
                zzbexVar.zzsb();
                this.f11743i = null;
            }
            m4114b();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        zzro zzaaq = this.f11735a.zzaaq();
        if (zzaaq != null && webView == zzaaq.getWebView()) {
            zzaaq.onPageStarted(webView, str, bitmap);
        }
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.f11735a.zzb(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    public final void reset() {
        zzato zzatoVar = this.f11736b;
        if (zzatoVar != null) {
            zzatoVar.zzun();
            this.f11736b = null;
        }
        m4119a();
        synchronized (this.f11739e) {
            this.f11738d.clear();
            this.f11740f = null;
            this.f11741g = null;
            this.f11742h = null;
            this.f11743i = null;
            this.f11744j = null;
            this.f11745k = null;
            this.f11747m = false;
            this.f11748n = false;
            this.f11749o = false;
            this.f11751q = false;
            this.f11752r = null;
            this.f11746l = null;
            if (this.f11755u != null) {
                this.f11755u.zzac(true);
                this.f11755u = null;
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return m4115a(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case AdSize.LARGE_AD_HEIGHT /* 90 */:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Uri uri;
        String valueOf = String.valueOf(str);
        zzavs.zzed(valueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(valueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri parse = Uri.parse(str);
        if (!"gmsg".equalsIgnoreCase(parse.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            if (this.f11747m && webView == this.f11735a.getWebView()) {
                String scheme = parse.getScheme();
                if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    zzty zztyVar = this.f11740f;
                    if (zztyVar != null) {
                        zztyVar.onAdClicked();
                        zzato zzatoVar = this.f11736b;
                        if (zzatoVar != null) {
                            zzatoVar.zzdv(str);
                        }
                        this.f11740f = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            if (!this.f11735a.getWebView().willNotDraw()) {
                try {
                    zzdq zzaad = this.f11735a.zzaad();
                    uri = parse;
                    if (zzaad != null) {
                        uri = parse;
                        if (zzaad.zzb(parse)) {
                            uri = zzaad.zza(parse, this.f11735a.getContext(), this.f11735a.getView(), this.f11735a.zzyn());
                        }
                    }
                } catch (zzdt e) {
                    String valueOf2 = String.valueOf(str);
                    zzavs.zzez(valueOf2.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf2) : new String("Unable to append parameter to URL: "));
                    uri = parse;
                }
                zzc zzcVar = this.f11754t;
                if (zzcVar == null || zzcVar.zzjq()) {
                    zza(new zzd("android.intent.action.VIEW", uri.toString(), null, null, null, null, null));
                    return true;
                }
                this.f11754t.zzbq(str);
                return true;
            }
            String valueOf3 = String.valueOf(str);
            zzavs.zzez(valueOf3.length() != 0 ? "AdWebView unable to handle URL: ".concat(valueOf3) : new String("AdWebView unable to handle URL: "));
            return true;
        }
        zzh(parse);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zza(int i, int i2, boolean z) {
        this.f11753s.zzj(i, i2);
        zzaoe zzaoeVar = this.f11755u;
        if (zzaoeVar != null) {
            zzaoeVar.zza(i, i2, false);
        }
    }

    public final void zza(zzd zzdVar) {
        boolean zzaaf = this.f11735a.zzaaf();
        m4117a(new AdOverlayInfoParcel(zzdVar, (!zzaaf || this.f11735a.zzzy().zzabt()) ? this.f11740f : null, zzaaf ? null : this.f11741g, this.f11752r, this.f11735a.zzyr()));
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zza(zzbeu zzbeuVar) {
        this.f11742h = zzbeuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zza(zzbex zzbexVar) {
        this.f11743i = zzbexVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zza(zzty zztyVar, zzaew zzaewVar, zzo zzoVar, zzaey zzaeyVar, zzt zztVar, boolean z, zzafq zzafqVar, zzc zzcVar, zzaon zzaonVar, zzato zzatoVar) {
        zzc zzcVar2 = zzcVar;
        if (zzcVar == null) {
            zzcVar2 = new zzc(this.f11735a.getContext(), zzatoVar, null);
        }
        this.f11755u = new zzaoe(this.f11735a, zzaonVar);
        this.f11736b = zzatoVar;
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
        zza("/mraid", new zzafs(zzcVar2, this.f11755u, zzaonVar));
        zza("/mraidLoaded", this.f11753s);
        zza("/open", new zzafr(zzcVar2, this.f11755u));
        zza("/precache", new zzbcs());
        zza("/touch", zzafa.zzcxc);
        zza("/video", zzafa.zzcxf);
        zza("/videoMeta", zzafa.zzcxg);
        if (zzq.zzlo().zzab(this.f11735a.getContext())) {
            zza("/logScionEvent", new zzafp(this.f11735a.getContext()));
        }
        this.f11740f = zztyVar;
        this.f11741g = zzoVar;
        this.f11744j = zzaewVar;
        this.f11745k = zzaeyVar;
        this.f11752r = zztVar;
        this.f11754t = zzcVar2;
        this.f11747m = z;
    }

    public final void zza(String str, Predicate<zzafn<? super zzbdi>> predicate) {
        synchronized (this.f11739e) {
            List<zzafn<? super zzbdi>> list = this.f11738d.get(str);
            if (list != null) {
                ArrayList arrayList = new ArrayList();
                for (zzafn<? super zzbdi> zzafnVar : list) {
                    if (predicate.apply(zzafnVar)) {
                        arrayList.add(zzafnVar);
                    }
                }
                list.removeAll(arrayList);
            }
        }
    }

    public final void zza(String str, zzafn<? super zzbdi> zzafnVar) {
        synchronized (this.f11739e) {
            List<zzafn<? super zzbdi>> list = this.f11738d.get(str);
            List<zzafn<? super zzbdi>> list2 = list;
            if (list == null) {
                list2 = new CopyOnWriteArrayList<>();
                this.f11738d.put(str, list2);
            }
            list2.add(zzafnVar);
        }
    }

    public final void zza(boolean z, int i, String str) {
        boolean zzaaf = this.f11735a.zzaaf();
        zzty zztyVar = (!zzaaf || this.f11735a.zzzy().zzabt()) ? this.f11740f : null;
        C1963it itVar = zzaaf ? null : new C1963it(this.f11735a, this.f11741g);
        zzaew zzaewVar = this.f11744j;
        zzaey zzaeyVar = this.f11745k;
        zzt zztVar = this.f11752r;
        zzbdi zzbdiVar = this.f11735a;
        m4117a(new AdOverlayInfoParcel(zztyVar, itVar, zzaewVar, zzaeyVar, zztVar, zzbdiVar, z, i, str, zzbdiVar.zzyr()));
    }

    public final void zza(boolean z, int i, String str, String str2) {
        boolean zzaaf = this.f11735a.zzaaf();
        zzty zztyVar = (!zzaaf || this.f11735a.zzzy().zzabt()) ? this.f11740f : null;
        C1963it itVar = zzaaf ? null : new C1963it(this.f11735a, this.f11741g);
        zzaew zzaewVar = this.f11744j;
        zzaey zzaeyVar = this.f11745k;
        zzt zztVar = this.f11752r;
        zzbdi zzbdiVar = this.f11735a;
        m4117a(new AdOverlayInfoParcel(zztyVar, itVar, zzaewVar, zzaeyVar, zztVar, zzbdiVar, z, i, str, str2, zzbdiVar.zzyr()));
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final zzc zzaas() {
        return this.f11754t;
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final boolean zzaat() {
        boolean z;
        synchronized (this.f11739e) {
            z = this.f11748n;
        }
        return z;
    }

    public final boolean zzaau() {
        boolean z;
        synchronized (this.f11739e) {
            z = this.f11749o;
        }
        return z;
    }

    public final boolean zzaav() {
        boolean z;
        synchronized (this.f11739e) {
            z = this.f11750p;
        }
        return z;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener zzaaw() {
        synchronized (this.f11739e) {
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener zzaax() {
        synchronized (this.f11739e) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zzaaz() {
        zzato zzatoVar = this.f11736b;
        if (zzatoVar != null) {
            WebView webView = this.f11735a.getWebView();
            if (C0741t.m8370E(webView)) {
                m4118a(webView, zzatoVar, 10);
                return;
            }
            m4119a();
            this.f11760z = new View$OnAttachStateChangeListenerC1964iu(this, zzatoVar);
            this.f11735a.getView().addOnAttachStateChangeListener(this.f11760z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zzaba() {
        synchronized (this.f11739e) {
            this.f11751q = true;
        }
        this.f11758x++;
        m4114b();
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zzabb() {
        this.f11758x--;
        m4114b();
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zzabc() {
        zzsm zzsmVar = this.f11737c;
        if (zzsmVar != null) {
            zzsmVar.zza(zzso.zza.EnumC3503zza.DELAY_PAGE_LOAD_CANCELLED_AD);
        }
        this.f11757w = true;
        m4114b();
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcpe)).booleanValue()) {
            this.f11735a.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final zzato zzabf() {
        return this.f11736b;
    }

    public final void zzav(boolean z) {
        this.f11747m = z;
    }

    public final void zzb(String str, zzafn<? super zzbdi> zzafnVar) {
        synchronized (this.f11739e) {
            List<zzafn<? super zzbdi>> list = this.f11738d.get(str);
            if (list != null) {
                list.remove(zzafnVar);
            }
        }
    }

    public final void zzba(boolean z) {
        this.f11759y = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zzbb(boolean z) {
        synchronized (this.f11739e) {
            this.f11749o = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zzbc(boolean z) {
        synchronized (this.f11739e) {
            this.f11750p = z;
        }
    }

    public final void zzc(boolean z, int i) {
        zzty zztyVar = (!this.f11735a.zzaaf() || this.f11735a.zzzy().zzabt()) ? this.f11740f : null;
        zzo zzoVar = this.f11741g;
        zzt zztVar = this.f11752r;
        zzbdi zzbdiVar = this.f11735a;
        m4117a(new AdOverlayInfoParcel(zztyVar, zzoVar, zztVar, zzbdiVar, z, i, zzbdiVar.zzyr()));
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zzh(Uri uri) {
        final String path = uri.getPath();
        List<zzafn<? super zzbdi>> list = this.f11738d.get(path);
        if (list != null) {
            zzq.zzkq();
            Map<String, String> zzi = zzawb.zzi(uri);
            if (zzavs.isLoggable(2)) {
                String valueOf = String.valueOf(path);
                zzavs.zzed(valueOf.length() != 0 ? "Received GMSG: ".concat(valueOf) : new String("Received GMSG: "));
                for (String str : zzi.keySet()) {
                    String str2 = zzi.get(str);
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length());
                    sb.append("  ");
                    sb.append(str);
                    sb.append(": ");
                    sb.append(str2);
                    zzavs.zzed(sb.toString());
                }
            }
            for (zzafn<? super zzbdi> zzafnVar : list) {
                zzafnVar.zza(this.f11735a, zzi);
            }
            return;
        }
        String valueOf2 = String.valueOf(uri);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 32);
        sb2.append("No GMSG handler found for GMSG: ");
        sb2.append(valueOf2);
        zzavs.zzed(sb2.toString());
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcre)).booleanValue() && zzq.zzku().zzuz() != null) {
            zzazd.zzdwe.execute(new Runnable(path) { // from class: com.google.android.gms.internal.ads.is

                /* renamed from: a */
                private final String f8645a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8645a = path;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzq.zzku().zzuz().zzcr(this.f8645a.substring(1));
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zzi(int i, int i2) {
        zzaoe zzaoeVar = this.f11755u;
        if (zzaoeVar != null) {
            zzaoeVar.zzi(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbev
    public final void zztn() {
        synchronized (this.f11739e) {
            this.f11747m = false;
            this.f11748n = true;
            zzazd.zzdwi.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.iq

                /* renamed from: a */
                private final zzbdl f8640a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8640a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbdl zzbdlVar = this.f8640a;
                    zzbdlVar.f11735a.zzaaj();
                    com.google.android.gms.ads.internal.overlay.zzc zzzw = zzbdlVar.f11735a.zzzw();
                    if (zzzw != null) {
                        zzzw.zztn();
                    }
                }
            });
        }
    }
}
