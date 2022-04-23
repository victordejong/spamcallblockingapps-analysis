package com.google.android.gms.internal.ads;

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
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzi;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzso;
import com.google.android.gms.internal.ads.zzsy;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.jb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jb.class */
final class ViewTreeObserver$OnGlobalLayoutListenerC1972jb extends WebView implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, zzbdi {

    /* renamed from: A */
    private boolean f8673A;

    /* renamed from: B */
    private boolean f8674B;

    /* renamed from: C */
    private zzabw f8675C;

    /* renamed from: D */
    private zzabr f8676D;

    /* renamed from: E */
    private zzra f8677E;

    /* renamed from: F */
    private int f8678F;

    /* renamed from: G */
    private int f8679G;

    /* renamed from: H */
    private zzaac f8680H;

    /* renamed from: I */
    private zzaac f8681I;

    /* renamed from: J */
    private zzaac f8682J;

    /* renamed from: K */
    private zzaab f8683K;

    /* renamed from: L */
    private WeakReference<View.OnClickListener> f8684L;

    /* renamed from: M */
    private zzc f8685M;

    /* renamed from: N */
    private boolean f8686N;

    /* renamed from: O */
    private zzayl f8687O;

    /* renamed from: T */
    private Map<String, zzbcn> f8692T;

    /* renamed from: V */
    private final zzsm f8694V;

    /* renamed from: a */
    private final zzbez f8695a;

    /* renamed from: b */
    private final zzdq f8696b;

    /* renamed from: c */
    private final zzazb f8697c;

    /* renamed from: d */
    private final zzi f8698d;

    /* renamed from: e */
    private final zza f8699e;

    /* renamed from: h */
    private final zzro f8702h;

    /* renamed from: i */
    private final boolean f8703i;

    /* renamed from: l */
    private zzbdl f8706l;

    /* renamed from: m */
    private zzc f8707m;

    /* renamed from: n */
    private IObjectWrapper f8708n;

    /* renamed from: o */
    private zzbey f8709o;

    /* renamed from: p */
    private String f8710p;

    /* renamed from: q */
    private boolean f8711q;

    /* renamed from: r */
    private boolean f8712r;

    /* renamed from: s */
    private boolean f8713s;

    /* renamed from: t */
    private boolean f8714t;

    /* renamed from: u */
    private Boolean f8715u;

    /* renamed from: z */
    private zzbed f8720z;

    /* renamed from: j */
    private boolean f8704j = false;

    /* renamed from: k */
    private boolean f8705k = false;

    /* renamed from: w */
    private boolean f8717w = true;

    /* renamed from: x */
    private boolean f8718x = false;

    /* renamed from: y */
    private String f8719y = "";

    /* renamed from: P */
    private int f8688P = -1;

    /* renamed from: Q */
    private int f8689Q = -1;

    /* renamed from: R */
    private int f8690R = -1;

    /* renamed from: S */
    private int f8691S = -1;

    /* renamed from: v */
    private int f8716v = -1;

    /* renamed from: U */
    private final WindowManager f8693U = (WindowManager) getContext().getSystemService("window");

    /* renamed from: f */
    private final DisplayMetrics f8700f = zzawb.zza(this.f8693U);

    /* renamed from: g */
    private final float f8701g = this.f8700f.density;

    private ViewTreeObserver$OnGlobalLayoutListenerC1972jb(zzbez zzbezVar, zzbey zzbeyVar, String str, boolean z, zzdq zzdqVar, zzazb zzazbVar, zzaae zzaaeVar, zzi zziVar, zza zzaVar, zzsm zzsmVar, zzro zzroVar, boolean z2) {
        super(zzbezVar);
        this.f8695a = zzbezVar;
        this.f8709o = zzbeyVar;
        this.f8710p = str;
        this.f8713s = z;
        this.f8696b = zzdqVar;
        this.f8697c = zzazbVar;
        this.f8698d = zziVar;
        this.f8699e = zzaVar;
        zzq.zzkq();
        this.f8694V = zzsmVar;
        this.f8702h = zzroVar;
        this.f8703i = z2;
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            zzavs.zzc("Unable to enable Javascript.", e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(2);
        }
        zzq.zzkq().zza(zzbezVar, zzazbVar.zzbma, settings);
        zzq.zzks().zza(getContext(), settings);
        setDownloadListener(this);
        m4689e();
        if (PlatformVersion.isAtLeastJellyBeanMR1()) {
            addJavascriptInterface(zzbee.zzc(this), "googleAdsJsInterface");
        }
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        this.f8687O = new zzayl(this.f8695a.zzyn(), this, this, null);
        m4684j();
        this.f8683K = new zzaab(new zzaae(true, "make_wv", this.f8710p));
        this.f8683K.zzqp().zzc(zzaaeVar);
        this.f8681I = zzzv.zzb(this.f8683K.zzqp());
        this.f8683K.zza("native:view_create", this.f8681I);
        this.f8682J = null;
        this.f8680H = null;
        zzq.zzks().zzbc(zzbezVar);
        zzq.zzku().zzvc();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static ViewTreeObserver$OnGlobalLayoutListenerC1972jb m4703a(Context context, zzbey zzbeyVar, String str, boolean z, zzdq zzdqVar, zzazb zzazbVar, zzaae zzaaeVar, zzi zziVar, zza zzaVar, zzsm zzsmVar, zzro zzroVar, boolean z2) {
        return new ViewTreeObserver$OnGlobalLayoutListenerC1972jb(new zzbez(context), zzbeyVar, str, z, zzdqVar, zzazbVar, zzaaeVar, zziVar, zzaVar, zzsmVar, zzroVar, z2);
    }

    /* renamed from: a */
    private final void m4700a(Boolean bool) {
        synchronized (this) {
            this.f8715u = bool;
        }
        zzq.zzku().zza(bool);
    }

    /* renamed from: a */
    private final void m4699a(String str) {
        synchronized (this) {
            if (!isDestroyed()) {
                loadUrl(str);
            } else {
                zzavs.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    /* renamed from: a */
    private final void m4698a(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", z ? "1" : "0");
        zza("onAdVisibilityChanged", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final /* synthetic */ void m4697a(boolean z, int i, zztu zztuVar) {
        zzsy.zzw.zza zzog = zzsy.zzw.zzog();
        if (zzog.zzof() != z) {
            zzog.zzw(z);
        }
        zztuVar.zzcba = (zzsy.zzw) ((zzdrt) zzog.zzci(i).zzbaf());
    }

    /* renamed from: a */
    private final boolean m4704a() {
        int i;
        int i2;
        boolean z = false;
        if (!this.f8706l.zzaat() && !this.f8706l.zzaau()) {
            return false;
        }
        zzve.zzou();
        DisplayMetrics displayMetrics = this.f8700f;
        int zzb = zzayk.zzb(displayMetrics, displayMetrics.widthPixels);
        zzve.zzou();
        DisplayMetrics displayMetrics2 = this.f8700f;
        int zzb2 = zzayk.zzb(displayMetrics2, displayMetrics2.heightPixels);
        Activity zzyn = this.f8695a.zzyn();
        if (zzyn == null || zzyn.getWindow() == null) {
            i2 = zzb;
            i = zzb2;
        } else {
            zzq.zzkq();
            int[] zzd = zzawb.zzd(zzyn);
            zzve.zzou();
            i2 = zzayk.zzb(this.f8700f, zzd[0]);
            zzve.zzou();
            i = zzayk.zzb(this.f8700f, zzd[1]);
        }
        if (this.f8689Q == zzb && this.f8688P == zzb2 && this.f8690R == i2 && this.f8691S == i) {
            return false;
        }
        if (!(this.f8689Q == zzb && this.f8688P == zzb2)) {
            z = true;
        }
        this.f8689Q = zzb;
        this.f8688P = zzb2;
        this.f8690R = i2;
        this.f8691S = i;
        new zzaoo(this).zza(zzb, zzb2, i2, i, this.f8700f.density, this.f8693U.getDefaultDisplay().getRotation());
        return z;
    }

    /* renamed from: b */
    private final void m4696b() {
        synchronized (this) {
            this.f8715u = zzq.zzku().zzva();
            if (this.f8715u == null) {
                try {
                    evaluateJavascript("(function(){})()", null);
                    m4700a(Boolean.TRUE);
                } catch (IllegalStateException e) {
                    m4700a(Boolean.FALSE);
                }
            }
        }
    }

    /* renamed from: b */
    private final void m4694b(String str) {
        synchronized (this) {
            try {
                super.loadUrl(str);
            } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError | UnsatisfiedLinkError e) {
                zzq.zzku().zza(e, "AdWebViewImpl.loadUrlUnsafe");
                zzavs.zzd("Could not call loadUrl. ", e);
            }
        }
    }

    /* renamed from: c */
    private final Boolean m4693c() {
        Boolean bool;
        synchronized (this) {
            bool = this.f8715u;
        }
        return bool;
    }

    /* renamed from: c */
    private final void m4692c(String str) {
        synchronized (this) {
            if (!isDestroyed()) {
                evaluateJavascript(str, null);
            } else {
                zzavs.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    /* renamed from: d */
    private final void m4691d() {
        zzzv.zza(this.f8683K.zzqp(), this.f8681I, "aeh2");
    }

    /* renamed from: d */
    private final void m4690d(String str) {
        if (PlatformVersion.isAtLeastKitKat()) {
            if (m4693c() == null) {
                m4696b();
            }
            if (m4693c().booleanValue()) {
                m4692c(str);
                return;
            }
            String valueOf = String.valueOf(str);
            m4699a(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
            return;
        }
        String valueOf2 = String.valueOf(str);
        m4699a(valueOf2.length() != 0 ? "javascript:".concat(valueOf2) : new String("javascript:"));
    }

    /* renamed from: e */
    private final void m4689e() {
        synchronized (this) {
            if (!this.f8713s && !this.f8709o.zzabt()) {
                if (Build.VERSION.SDK_INT < 18) {
                    zzavs.zzea("Disabling hardware acceleration on an AdView.");
                    m4688f();
                    return;
                }
                zzavs.zzea("Enabling hardware acceleration on an AdView.");
                m4687g();
                return;
            }
            zzavs.zzea("Enabling hardware acceleration on an overlay.");
            m4687g();
        }
    }

    /* renamed from: f */
    private final void m4688f() {
        synchronized (this) {
            if (!this.f8714t) {
                zzq.zzks();
                setLayerType(1, null);
            }
            this.f8714t = true;
        }
    }

    /* renamed from: g */
    private final void m4687g() {
        synchronized (this) {
            if (this.f8714t) {
                zzq.zzks();
                setLayerType(0, null);
            }
            this.f8714t = false;
        }
    }

    /* renamed from: h */
    private final void m4686h() {
        synchronized (this) {
            if (!this.f8686N) {
                this.f8686N = true;
                zzq.zzku().zzvd();
            }
        }
    }

    /* renamed from: i */
    private final void m4685i() {
        synchronized (this) {
            if (this.f8692T != null) {
                for (zzbcn zzbcnVar : this.f8692T.values()) {
                    zzbcnVar.release();
                }
            }
            this.f8692T = null;
        }
    }

    /* renamed from: j */
    private final void m4684j() {
        zzaae zzqp;
        zzaab zzaabVar = this.f8683K;
        if (zzaabVar != null && (zzqp = zzaabVar.zzqp()) != null && zzq.zzku().zzuz() != null) {
            zzq.zzku().zzuz().zza(zzqp);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbdi
    public final void destroy() {
        synchronized (this) {
            m4684j();
            this.f8687O.zzxh();
            if (this.f8707m != null) {
                this.f8707m.close();
                this.f8707m.onDestroy();
                this.f8707m = null;
            }
            this.f8708n = null;
            this.f8706l.reset();
            if (!this.f8712r) {
                zzq.zzlm();
                zzbck.zzc(this);
                m4685i();
                this.f8712r = true;
                zzavs.zzed("Initiating WebView self destruct sequence in 3...");
                zzavs.zzed("Loading blank page in WebView, 2...");
                m4694b("about:blank");
            }
        }
    }

    @Override // android.webkit.WebView
    public final void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        synchronized (this) {
            if (isDestroyed()) {
                zzavs.zzfb("#004 The webview is destroyed. Ignoring action.");
                if (valueCallback != null) {
                    valueCallback.onReceiveValue(null);
                }
                return;
            }
            super.evaluateJavascript(str, valueCallback);
        }
    }

    protected final void finalize() {
        try {
            synchronized (this) {
                if (!this.f8712r) {
                    this.f8706l.reset();
                    zzq.zzlm();
                    zzbck.zzc(this);
                    m4685i();
                    m4686h();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbes
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final WebView getWebView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean isDestroyed() {
        boolean z;
        synchronized (this) {
            z = this.f8712r;
        }
        return z;
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbdi
    public final void loadData(String str, String str2, String str3) {
        synchronized (this) {
            if (!isDestroyed()) {
                super.loadData(str, str2, str3);
            } else {
                zzavs.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbdi
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            if (!isDestroyed()) {
                super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            } else {
                zzavs.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbdi
    public final void loadUrl(String str) {
        synchronized (this) {
            if (!isDestroyed()) {
                try {
                    super.loadUrl(str);
                } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError e) {
                    zzq.zzku().zza(e, "AdWebViewImpl.loadUrl");
                    zzavs.zzd("Could not call loadUrl. ", e);
                }
            } else {
                zzavs.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        synchronized (this) {
            super.onAttachedToWindow();
            if (!isDestroyed()) {
                this.f8687O.onAttachedToWindow();
            }
            boolean z = this.f8673A;
            boolean z2 = z;
            if (this.f8706l != null) {
                z2 = z;
                if (this.f8706l.zzaau()) {
                    if (!this.f8674B) {
                        this.f8706l.zzaaw();
                        this.f8706l.zzaax();
                        this.f8674B = true;
                    }
                    m4704a();
                    z2 = true;
                }
            }
            m4698a(z2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        synchronized (this) {
            if (!isDestroyed()) {
                this.f8687O.onDetachedFromWindow();
            }
            super.onDetachedFromWindow();
            if (this.f8674B && this.f8706l != null && this.f8706l.zzaau() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.f8706l.zzaaw();
                this.f8706l.zzaax();
                this.f8674B = false;
            }
        }
        m4698a(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            zzq.zzkq();
            zzawb.zza(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(str4).length());
            sb.append("Couldn't find an Activity to view url/mimetype: ");
            sb.append(str);
            sb.append(" / ");
            sb.append(str4);
            zzavs.zzea(sb.toString());
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected final void onDraw(Canvas canvas) {
        if (!isDestroyed()) {
            if (Build.VERSION.SDK_INT != 21 || !canvas.isHardwareAccelerated() || isAttachedToWindow()) {
                super.onDraw(canvas);
            }
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
        boolean a = m4704a();
        zzc zzzw = zzzw();
        if (zzzw != null && a) {
            zzzw.zztq();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x0267, code lost:
        if (r6 == false) goto L_0x026a;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0270 A[Catch: all -> 0x0366, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0012, B:11:0x0019, B:13:0x0020, B:16:0x002d, B:18:0x0037, B:21:0x0040, B:23:0x004a, B:25:0x005e, B:28:0x0067, B:30:0x0070, B:34:0x0083, B:37:0x008c, B:48:0x0100, B:51:0x0114, B:53:0x011e, B:55:0x0132, B:58:0x013b, B:60:0x016a, B:61:0x0177, B:63:0x017d, B:66:0x0186, B:69:0x018f, B:71:0x0199, B:74:0x01ae, B:86:0x01f9, B:88:0x0204, B:93:0x021a, B:95:0x022e, B:97:0x0246, B:107:0x0270, B:109:0x0300, B:111:0x0306, B:113:0x0312, B:116:0x0324, B:118:0x032d, B:120:0x0333, B:122:0x0339, B:124:0x0349, B:128:0x035d), top: B:135:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0324 A[Catch: all -> 0x0366, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0012, B:11:0x0019, B:13:0x0020, B:16:0x002d, B:18:0x0037, B:21:0x0040, B:23:0x004a, B:25:0x005e, B:28:0x0067, B:30:0x0070, B:34:0x0083, B:37:0x008c, B:48:0x0100, B:51:0x0114, B:53:0x011e, B:55:0x0132, B:58:0x013b, B:60:0x016a, B:61:0x0177, B:63:0x017d, B:66:0x0186, B:69:0x018f, B:71:0x0199, B:74:0x01ae, B:86:0x01f9, B:88:0x0204, B:93:0x021a, B:95:0x022e, B:97:0x0246, B:107:0x0270, B:109:0x0300, B:111:0x0306, B:113:0x0312, B:116:0x0324, B:118:0x032d, B:120:0x0333, B:122:0x0339, B:124:0x0349, B:128:0x035d), top: B:135:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x022e A[Catch: all -> 0x0366, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0012, B:11:0x0019, B:13:0x0020, B:16:0x002d, B:18:0x0037, B:21:0x0040, B:23:0x004a, B:25:0x005e, B:28:0x0067, B:30:0x0070, B:34:0x0083, B:37:0x008c, B:48:0x0100, B:51:0x0114, B:53:0x011e, B:55:0x0132, B:58:0x013b, B:60:0x016a, B:61:0x0177, B:63:0x017d, B:66:0x0186, B:69:0x018f, B:71:0x0199, B:74:0x01ae, B:86:0x01f9, B:88:0x0204, B:93:0x021a, B:95:0x022e, B:97:0x0246, B:107:0x0270, B:109:0x0300, B:111:0x0306, B:113:0x0312, B:116:0x0324, B:118:0x032d, B:120:0x0333, B:122:0x0339, B:124:0x0349, B:128:0x035d), top: B:135:0x0002 }] */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 875
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ViewTreeObserver$OnGlobalLayoutListenerC1972jb.onMeasure(int, int):void");
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbdi
    public final void onPause() {
        if (!isDestroyed()) {
            try {
                super.onPause();
            } catch (Exception e) {
                zzavs.zzc("Could not pause webview.", e);
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbdi
    public final void onResume() {
        if (!isDestroyed()) {
            try {
                super.onResume();
            } catch (Exception e) {
                zzavs.zzc("Could not resume webview.", e);
            }
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f8706l.zzaau() || this.f8706l.zzaav()) {
            zzdq zzdqVar = this.f8696b;
            if (zzdqVar != null) {
                zzdqVar.zza(motionEvent);
            }
        } else {
            synchronized (this) {
                if (this.f8675C != null) {
                    this.f8675C.zzc(motionEvent);
                }
            }
        }
        if (isDestroyed()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzbdi
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f8684L = new WeakReference<>(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void setRequestedOrientation(int i) {
        synchronized (this) {
            this.f8716v = i;
            if (this.f8707m != null) {
                this.f8707m.setRequestedOrientation(this.f8716v);
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbdi
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzbdl) {
            this.f8706l = (zzbdl) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (!isDestroyed()) {
            try {
                super.stopLoading();
            } catch (Exception e) {
                zzavs.zzc("Could not stop loading webview.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(ViewGroup viewGroup, Activity activity, String str, String str2) {
        if (!zzaar()) {
            zzavs.zzed("AR ad is not enabled or the ad from the server is not an AR ad.");
            return;
        }
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).removeView(this);
        }
        zzavs.zzed("Initializing ArWebView object.");
        this.f8702h.zza(activity, this);
        this.f8702h.zzc(str, str2);
        if (viewGroup != null) {
            viewGroup.addView(this.f8702h.getView());
        } else {
            zzavs.zzex("The FrameLayout object cannot be null.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(zzc zzcVar) {
        synchronized (this) {
            this.f8707m = zzcVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbep
    public final void zza(zzd zzdVar) {
        this.f8706l.zza(zzdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(zzabr zzabrVar) {
        synchronized (this) {
            this.f8676D = zzabrVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(zzabw zzabwVar) {
        synchronized (this) {
            this.f8675C = zzabwVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz
    public final void zza(zzbed zzbedVar) {
        synchronized (this) {
            if (this.f8720z != null) {
                zzavs.zzex("Attempt to create multiple AdWebViewVideoControllers.");
            } else {
                this.f8720z = zzbedVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(zzbey zzbeyVar) {
        synchronized (this) {
            this.f8709o = zzbeyVar;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzps
    public final void zza(zzpt zzptVar) {
        synchronized (this) {
            this.f8673A = zzptVar.zzbnq;
        }
        m4698a(zzptVar.zzbnq);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(zzra zzraVar) {
        synchronized (this) {
            this.f8677E = zzraVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(String str, Predicate<zzafn<? super zzbdi>> predicate) {
        zzbdl zzbdlVar = this.f8706l;
        if (zzbdlVar != null) {
            zzbdlVar.zza(str, predicate);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(String str, zzafn<? super zzbdi> zzafnVar) {
        zzbdl zzbdlVar = this.f8706l;
        if (zzbdlVar != null) {
            zzbdlVar.zza(str, zzafnVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz
    public final void zza(String str, zzbcn zzbcnVar) {
        synchronized (this) {
            if (this.f8692T == null) {
                this.f8692T = new HashMap();
            }
            this.f8692T.put(str, zzbcnVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahs
    public final void zza(String str, Map<String, ?> map) {
        try {
            zzb(str, zzq.zzkq().zzi(map));
        } catch (JSONException e) {
            zzavs.zzez("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void zza(String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        String jSONObject3 = jSONObject2.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(jSONObject3).length());
        sb.append(str);
        sb.append("(");
        sb.append(jSONObject3);
        sb.append(");");
        m4690d(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbep
    public final void zza(boolean z, int i, String str) {
        this.f8706l.zza(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbep
    public final void zza(boolean z, int i, String str, String str2) {
        this.f8706l.zza(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final void zza(boolean z, long j) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("success", z ? "1" : "0");
        hashMap.put("duration", Long.toString(j));
        zza("onCacheAccessComplete", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final /* synthetic */ zzbev zzaaa() {
        return this.f8706l;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final WebViewClient zzaab() {
        return this.f8706l;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean zzaac() {
        boolean z;
        synchronized (this) {
            z = this.f8711q;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbeq
    public final zzdq zzaad() {
        return this.f8696b;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final IObjectWrapper zzaae() {
        IObjectWrapper iObjectWrapper;
        synchronized (this) {
            iObjectWrapper = this.f8708n;
        }
        return iObjectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbel
    public final boolean zzaaf() {
        boolean z;
        synchronized (this) {
            z = this.f8713s;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzaag() {
        synchronized (this) {
            zzavs.zzed("Destroying WebView!");
            m4686h();
            zzawb.zzdsr.post(new RunnableC1973jc(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean zzaah() {
        boolean z;
        synchronized (this) {
            z = this.f8717w;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean zzaai() {
        boolean z;
        synchronized (this) {
            z = this.f8678F > 0;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzaaj() {
        this.f8687O.zzxg();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzaak() {
        if (this.f8682J == null) {
            this.f8682J = zzzv.zzb(this.f8683K.zzqp());
            this.f8683K.zza("native:view_load", this.f8682J);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final zzabw zzaal() {
        zzabw zzabwVar;
        synchronized (this) {
            zzabwVar = this.f8675C;
        }
        return zzabwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzaam() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzaan() {
        zzavs.zzed("Cannot add text view to inner AdWebView");
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final zzra zzaao() {
        zzra zzraVar;
        synchronized (this) {
            zzraVar = this.f8677E;
        }
        return zzraVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean zzaap() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final zzro zzaaq() {
        return this.f8702h;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean zzaar() {
        return ((Boolean) zzve.zzoy().zzd(zzzn.zzcqj)).booleanValue() && this.f8702h != null && this.f8703i;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzal(boolean z) {
        synchronized (this) {
            if (this.f8707m != null) {
                this.f8707m.zza(this.f8706l.zzaat(), z);
            } else {
                this.f8711q = z;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzan(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            this.f8708n = iObjectWrapper;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final void zzav(boolean z) {
        this.f8706l.zzav(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzax(boolean z) {
        synchronized (this) {
            boolean z2 = z != this.f8713s;
            this.f8713s = z;
            m4689e();
            if (z2) {
                if (!((Boolean) zzve.zzoy().zzd(zzzn.zzchp)).booleanValue() || !this.f8709o.zzabt()) {
                    new zzaoo(this).zzdu(z ? "expanded" : "default");
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzay(boolean z) {
        synchronized (this) {
            this.f8717w = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzaz(boolean z) {
        synchronized (this) {
            this.f8678F += z ? 1 : -1;
            if (this.f8678F <= 0 && this.f8707m != null) {
                this.f8707m.zztt();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzb(zzc zzcVar) {
        synchronized (this) {
            this.f8685M = zzcVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzb(String str, zzafn<? super zzbdi> zzafnVar) {
        zzbdl zzbdlVar = this.f8706l;
        if (zzbdlVar != null) {
            zzbdlVar.zzb(str, zzafnVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzb(String str, String str2, String str3) {
        synchronized (this) {
            if (!isDestroyed()) {
                super.loadDataWithBaseURL(str, zzbeo.zzf(str2, zzbeo.zzabp()), "text/html", "UTF-8", str3);
            } else {
                zzavs.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahs
    public final void zzb(String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        String jSONObject3 = jSONObject2.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("'");
        sb.append(",");
        sb.append(jSONObject3);
        sb.append(");");
        String valueOf = String.valueOf(sb.toString());
        zzavs.zzea(valueOf.length() != 0 ? "Dispatching AFMA event: ".concat(valueOf) : new String("Dispatching AFMA event: "));
        m4690d(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean zzb(final boolean z, final int i) {
        destroy();
        this.f8694V.zza(new zzsp(z, i) { // from class: com.google.android.gms.internal.ads.ja

            /* renamed from: a */
            private final boolean f8671a;

            /* renamed from: b */
            private final int f8672b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8671a = z;
                this.f8672b = i;
            }

            @Override // com.google.android.gms.internal.ads.zzsp
            public final void zza(zztu zztuVar) {
                ViewTreeObserver$OnGlobalLayoutListenerC1972jb.m4697a(this.f8671a, this.f8672b, zztuVar);
            }
        });
        this.f8694V.zza(zzso.zza.EnumC3503zza.ANDROID_WEBVIEW_CRASH);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzba(boolean z) {
        this.f8706l.zzba(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzbr(Context context) {
        this.f8695a.setBaseContext(context);
        this.f8687O.zzh(this.f8695a.zzyn());
    }

    @Override // com.google.android.gms.internal.ads.zzbep
    public final void zzc(boolean z, int i) {
        this.f8706l.zzc(z, i);
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void zzcy(String str) {
        m4690d(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzde(int i) {
        if (i == 0) {
            zzzv.zza(this.f8683K.zzqp(), this.f8681I, "aebb2");
        }
        m4691d();
        if (this.f8683K.zzqp() != null) {
            this.f8683K.zzqp().zzh("close_type", String.valueOf(i));
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.f8697c.zzbma);
        zza("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final zzbcn zzfe(String str) {
        synchronized (this) {
            if (this.f8692T == null) {
                return null;
            }
            return this.f8692T.get(str);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzi
    public final void zzjv() {
        synchronized (this) {
            this.f8718x = true;
            if (this.f8698d != null) {
                this.f8698d.zzjv();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzi
    public final void zzjw() {
        synchronized (this) {
            this.f8718x = false;
            if (this.f8698d != null) {
                this.f8698d.zzjw();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zztr() {
        if (this.f8680H == null) {
            zzzv.zza(this.f8683K.zzqp(), this.f8681I, "aes2");
            this.f8680H = zzzv.zzb(this.f8683K.zzqp());
            this.f8683K.zza("native:view_show", this.f8680H);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f8697c.zzbma);
        zza("onshow", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final void zzts() {
        zzc zzzw = zzzw();
        if (zzzw != null) {
            zzzw.zzts();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final zzbao zzyk() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz
    public final zzbed zzyl() {
        zzbed zzbedVar;
        synchronized (this) {
            zzbedVar = this.f8720z;
        }
        return zzbedVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final zzaac zzym() {
        return this.f8681I;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz, com.google.android.gms.internal.ads.zzbei
    public final Activity zzyn() {
        return this.f8695a.zzyn();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz
    public final zza zzyo() {
        return this.f8699e;
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final String zzyp() {
        String str;
        synchronized (this) {
            str = this.f8719y;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz
    public final zzaab zzyq() {
        return this.f8683K;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz, com.google.android.gms.internal.ads.zzbet
    public final zzazb zzyr() {
        return this.f8697c;
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final int zzys() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final int zzyt() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final void zzyu() {
        synchronized (this) {
            if (this.f8676D != null) {
                this.f8676D.zzrb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzzt() {
        m4691d();
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f8697c.zzbma);
        zza("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzzu() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(zzq.zzkv().zzpf()));
        hashMap.put("app_volume", String.valueOf(zzq.zzkv().zzpe()));
        hashMap.put("device_volume", String.valueOf(zzawq.zzbe(getContext())));
        zza("volume", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final Context zzzv() {
        return this.f8695a.zzzv();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final zzc zzzw() {
        zzc zzcVar;
        synchronized (this) {
            zzcVar = this.f8707m;
        }
        return zzcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final zzc zzzx() {
        zzc zzcVar;
        synchronized (this) {
            zzcVar = this.f8685M;
        }
        return zzcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzber
    public final zzbey zzzy() {
        zzbey zzbeyVar;
        synchronized (this) {
            zzbeyVar = this.f8709o;
        }
        return zzbeyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final String zzzz() {
        String str;
        synchronized (this) {
            str = this.f8710p;
        }
        return str;
    }
}
