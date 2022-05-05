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
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.jm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jm.class */
final class ViewTreeObserver$OnGlobalLayoutListenerC1983jm extends zzbfm implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, zzaia, zzbdi {

    /* renamed from: A */
    private int f8742A;

    /* renamed from: B */
    private int f8743B;

    /* renamed from: C */
    private zzaac f8744C;

    /* renamed from: D */
    private zzaac f8745D;

    /* renamed from: E */
    private zzaac f8746E;

    /* renamed from: F */
    private zzaab f8747F;

    /* renamed from: G */
    private WeakReference<View.OnClickListener> f8748G;

    /* renamed from: H */
    private zzc f8749H;

    /* renamed from: I */
    private zzayl f8750I;

    /* renamed from: O */
    private Map<String, zzbcn> f8756O;

    /* renamed from: a */
    private final zzbez f8758a;

    /* renamed from: b */
    private final zzbfb f8759b;

    /* renamed from: c */
    private final zzdq f8760c;

    /* renamed from: d */
    private final zzazb f8761d;

    /* renamed from: e */
    private final zzi f8762e;

    /* renamed from: f */
    private final zza f8763f;

    /* renamed from: h */
    private final zzsm f8765h;

    /* renamed from: i */
    private final zzro f8766i;

    /* renamed from: j */
    private final boolean f8767j;

    /* renamed from: k */
    private zzc f8768k;

    /* renamed from: l */
    private zzbey f8769l;

    /* renamed from: m */
    private String f8770m;

    /* renamed from: n */
    private boolean f8771n;

    /* renamed from: o */
    private boolean f8772o;

    /* renamed from: p */
    private boolean f8773p;

    /* renamed from: u */
    private zzbed f8778u;

    /* renamed from: v */
    private boolean f8779v;

    /* renamed from: w */
    private boolean f8780w;

    /* renamed from: x */
    private zzabw f8781x;

    /* renamed from: y */
    private zzabr f8782y;

    /* renamed from: z */
    private zzra f8783z;

    /* renamed from: r */
    private boolean f8775r = true;

    /* renamed from: s */
    private boolean f8776s = false;

    /* renamed from: t */
    private String f8777t = "";

    /* renamed from: J */
    private final AtomicReference<IObjectWrapper> f8751J = new AtomicReference<>();

    /* renamed from: K */
    private int f8752K = -1;

    /* renamed from: L */
    private int f8753L = -1;

    /* renamed from: M */
    private int f8754M = -1;

    /* renamed from: N */
    private int f8755N = -1;

    /* renamed from: q */
    private int f8774q = -1;

    /* renamed from: P */
    private final WindowManager f8757P = (WindowManager) getContext().getSystemService("window");

    /* renamed from: g */
    private final DisplayMetrics f8764g = zzawb.zza(this.f8757P);

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewTreeObserver$OnGlobalLayoutListenerC1983jm(zzbez zzbezVar, zzbfb zzbfbVar, zzbey zzbeyVar, String str, boolean z, zzdq zzdqVar, zzazb zzazbVar, zzaae zzaaeVar, zzi zziVar, zza zzaVar, zzsm zzsmVar, zzro zzroVar, boolean z2) {
        super(zzbezVar, zzbfbVar);
        this.f8758a = zzbezVar;
        this.f8759b = zzbfbVar;
        this.f8769l = zzbeyVar;
        this.f8770m = str;
        this.f8772o = z;
        this.f8760c = zzdqVar;
        this.f8761d = zzazbVar;
        this.f8762e = zziVar;
        this.f8763f = zzaVar;
        zzq.zzkq();
        this.f8765h = zzsmVar;
        this.f8766i = zzroVar;
        this.f8767j = z2;
        this.f8750I = new zzayl(this.f8758a.zzyn(), this, this, null);
        zzq.zzkq().zza(zzbezVar, zzazbVar.zzbma, getSettings());
        setDownloadListener(this);
        m4677d();
        if (PlatformVersion.isAtLeastJellyBeanMR1()) {
            addJavascriptInterface(zzbee.zzc(this), "googleAdsJsInterface");
        }
        m4673h();
        this.f8747F = new zzaab(new zzaae(true, "make_wv", this.f8770m));
        this.f8747F.zzqp().zzc(zzaaeVar);
        this.f8745D = zzzv.zzb(this.f8747F.zzqp());
        this.f8747F.zza("native:view_create", this.f8745D);
        this.f8746E = null;
        this.f8744C = null;
        zzq.zzks().zzbc(zzbezVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final /* synthetic */ void m4681a(boolean z, int i, zztu zztuVar) {
        zzsy.zzw.zza zzog = zzsy.zzw.zzog();
        if (zzog.zzof() != z) {
            zzog.zzw(z);
        }
        zztuVar.zzcba = (zzsy.zzw) ((zzdrt) zzog.zzci(i).zzbaf());
    }

    /* renamed from: b */
    private final void m4679b(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", z ? "1" : "0");
        zzahz.zza(this, "onAdVisibilityChanged", hashMap);
    }

    /* renamed from: b */
    private final boolean m4680b() {
        int i;
        int i2;
        boolean z = false;
        if (!this.f8759b.zzaat() && !this.f8759b.zzaau()) {
            return false;
        }
        zzve.zzou();
        DisplayMetrics displayMetrics = this.f8764g;
        int zzb = zzayk.zzb(displayMetrics, displayMetrics.widthPixels);
        zzve.zzou();
        DisplayMetrics displayMetrics2 = this.f8764g;
        int zzb2 = zzayk.zzb(displayMetrics2, displayMetrics2.heightPixels);
        Activity zzyn = this.f8758a.zzyn();
        if (zzyn == null || zzyn.getWindow() == null) {
            i2 = zzb;
            i = zzb2;
        } else {
            zzq.zzkq();
            int[] zzd = zzawb.zzd(zzyn);
            zzve.zzou();
            i2 = zzayk.zzb(this.f8764g, zzd[0]);
            zzve.zzou();
            i = zzayk.zzb(this.f8764g, zzd[1]);
        }
        if (this.f8753L == zzb && this.f8752K == zzb2 && this.f8754M == i2 && this.f8755N == i) {
            return false;
        }
        if (!(this.f8753L == zzb && this.f8752K == zzb2)) {
            z = true;
        }
        this.f8753L = zzb;
        this.f8752K = zzb2;
        this.f8754M = i2;
        this.f8755N = i;
        new zzaoo(this).zza(zzb, zzb2, i2, i, this.f8764g.density, this.f8757P.getDefaultDisplay().getRotation());
        return z;
    }

    /* renamed from: c */
    private final void m4678c() {
        zzzv.zza(this.f8747F.zzqp(), this.f8745D, "aeh2");
    }

    /* renamed from: d */
    private final void m4677d() {
        synchronized (this) {
            if (!this.f8772o && !this.f8769l.zzabt()) {
                if (Build.VERSION.SDK_INT < 18) {
                    zzavs.zzea("Disabling hardware acceleration on an AdView.");
                    m4676e();
                    return;
                }
                zzavs.zzea("Enabling hardware acceleration on an AdView.");
                m4675f();
                return;
            }
            zzavs.zzea("Enabling hardware acceleration on an overlay.");
            m4675f();
        }
    }

    /* renamed from: e */
    private final void m4676e() {
        synchronized (this) {
            if (!this.f8773p) {
                zzq.zzks();
                setLayerType(1, null);
            }
            this.f8773p = true;
        }
    }

    /* renamed from: f */
    private final void m4675f() {
        synchronized (this) {
            if (this.f8773p) {
                zzq.zzks();
                setLayerType(0, null);
            }
            this.f8773p = false;
        }
    }

    /* renamed from: g */
    private final void m4674g() {
        synchronized (this) {
            if (this.f8756O != null) {
                for (zzbcn zzbcnVar : this.f8756O.values()) {
                    zzbcnVar.release();
                }
            }
            this.f8756O = null;
        }
    }

    /* renamed from: h */
    private final void m4673h() {
        zzaae zzqp;
        zzaab zzaabVar = this.f8747F;
        if (zzaabVar != null && (zzqp = zzaabVar.zzqp()) != null && zzq.zzku().zzuz() != null) {
            zzq.zzku().zzuz().zza(zzqp);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfm
    /* renamed from: a */
    protected final void mo4093a(boolean z) {
        synchronized (this) {
            if (!z) {
                m4673h();
                this.f8750I.zzxh();
                if (this.f8768k != null) {
                    this.f8768k.close();
                    this.f8768k.onDestroy();
                    this.f8768k = null;
                }
            }
            this.f8751J.set(null);
            this.f8759b.destroy();
            zzq.zzlm();
            zzbck.zzc(this);
            m4674g();
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

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        synchronized (this) {
            super.onAttachedToWindow();
            if (!isDestroyed()) {
                this.f8750I.onAttachedToWindow();
            }
            boolean z = this.f8779v;
            boolean z2 = z;
            if (this.f8759b != null) {
                z2 = z;
                if (this.f8759b.zzaau()) {
                    if (!this.f8780w) {
                        this.f8759b.zzaaw();
                        this.f8759b.zzaax();
                        this.f8780w = true;
                    }
                    m4680b();
                    z2 = true;
                }
            }
            m4679b(z2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        synchronized (this) {
            if (!isDestroyed()) {
                this.f8750I.onDetachedFromWindow();
            }
            super.onDetachedFromWindow();
            if (this.f8780w && this.f8759b != null && this.f8759b.zzaau() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.f8759b.zzaaw();
                this.f8759b.zzaax();
                this.f8780w = false;
            }
        }
        m4679b(false);
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzbfm, android.webkit.WebView, android.view.View
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
        boolean b = m4680b();
        zzc zzzw = zzzw();
        if (zzzw != null && b) {
            zzzw.zztq();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0287 A[Catch: all -> 0x035d, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0012, B:11:0x0019, B:13:0x0020, B:16:0x002d, B:18:0x0037, B:21:0x0040, B:23:0x004a, B:25:0x005e, B:28:0x0067, B:30:0x0070, B:34:0x0083, B:37:0x008c, B:48:0x00fd, B:51:0x0112, B:53:0x011c, B:55:0x0130, B:58:0x0139, B:60:0x015f, B:61:0x0171, B:63:0x0177, B:66:0x0180, B:69:0x0189, B:71:0x0193, B:74:0x01a8, B:86:0x01f3, B:89:0x0203, B:94:0x0219, B:96:0x0220, B:98:0x0230, B:100:0x024e, B:111:0x0287, B:113:0x0323, B:115:0x0329, B:118:0x0331, B:120:0x033a, B:122:0x0340, B:125:0x0354), top: B:132:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0331 A[Catch: all -> 0x035d, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0012, B:11:0x0019, B:13:0x0020, B:16:0x002d, B:18:0x0037, B:21:0x0040, B:23:0x004a, B:25:0x005e, B:28:0x0067, B:30:0x0070, B:34:0x0083, B:37:0x008c, B:48:0x00fd, B:51:0x0112, B:53:0x011c, B:55:0x0130, B:58:0x0139, B:60:0x015f, B:61:0x0171, B:63:0x0177, B:66:0x0180, B:69:0x0189, B:71:0x0193, B:74:0x01a8, B:86:0x01f3, B:89:0x0203, B:94:0x0219, B:96:0x0220, B:98:0x0230, B:100:0x024e, B:111:0x0287, B:113:0x0323, B:115:0x0329, B:118:0x0331, B:120:0x033a, B:122:0x0340, B:125:0x0354), top: B:132:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0230 A[Catch: all -> 0x035d, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0012, B:11:0x0019, B:13:0x0020, B:16:0x002d, B:18:0x0037, B:21:0x0040, B:23:0x004a, B:25:0x005e, B:28:0x0067, B:30:0x0070, B:34:0x0083, B:37:0x008c, B:48:0x00fd, B:51:0x0112, B:53:0x011c, B:55:0x0130, B:58:0x0139, B:60:0x015f, B:61:0x0171, B:63:0x0177, B:66:0x0180, B:69:0x0189, B:71:0x0193, B:74:0x01a8, B:86:0x01f3, B:89:0x0203, B:94:0x0219, B:96:0x0220, B:98:0x0230, B:100:0x024e, B:111:0x0287, B:113:0x0323, B:115:0x0329, B:118:0x0331, B:120:0x033a, B:122:0x0340, B:125:0x0354), top: B:132:0x0002 }] */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 866
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ViewTreeObserver$OnGlobalLayoutListenerC1983jm.onMeasure(int, int):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbfm, android.webkit.WebView, com.google.android.gms.internal.ads.zzbdi
    public final void onPause() {
        try {
            super.onPause();
        } catch (Exception e) {
            zzavs.zzc("Could not pause webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfm, android.webkit.WebView, com.google.android.gms.internal.ads.zzbdi
    public final void onResume() {
        try {
            super.onResume();
        } catch (Exception e) {
            zzavs.zzc("Could not resume webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfm, android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f8759b.zzaau() || this.f8759b.zzaav()) {
            zzdq zzdqVar = this.f8760c;
            if (zzdqVar != null) {
                zzdqVar.zza(motionEvent);
            }
        } else {
            synchronized (this) {
                if (this.f8781x != null) {
                    this.f8781x.zzc(motionEvent);
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzbdi
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f8748G = new WeakReference<>(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void setRequestedOrientation(int i) {
        synchronized (this) {
            this.f8774q = i;
            if (this.f8768k != null) {
                this.f8768k.setRequestedOrientation(this.f8774q);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfm, android.webkit.WebView
    public final void stopLoading() {
        try {
            super.stopLoading();
        } catch (Exception e) {
            zzavs.zzc("Could not stop loading webview.", e);
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
        this.f8766i.zza(activity, this);
        this.f8766i.zzc(str, str2);
        if (viewGroup != null) {
            viewGroup.addView(this.f8766i.getView());
        } else {
            zzavs.zzex("The FrameLayout object cannot be null.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(zzc zzcVar) {
        synchronized (this) {
            this.f8768k = zzcVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbep
    public final void zza(zzd zzdVar) {
        this.f8759b.zza(zzdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(zzabr zzabrVar) {
        synchronized (this) {
            this.f8782y = zzabrVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(zzabw zzabwVar) {
        synchronized (this) {
            this.f8781x = zzabwVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz
    public final void zza(zzbed zzbedVar) {
        synchronized (this) {
            if (this.f8778u != null) {
                zzavs.zzex("Attempt to create multiple AdWebViewVideoControllers.");
            } else {
                this.f8778u = zzbedVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(zzbey zzbeyVar) {
        synchronized (this) {
            this.f8769l = zzbeyVar;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzps
    public final void zza(zzpt zzptVar) {
        synchronized (this) {
            this.f8779v = zzptVar.zzbnq;
        }
        m4679b(zzptVar.zzbnq);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(zzra zzraVar) {
        synchronized (this) {
            this.f8783z = zzraVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(String str, Predicate<zzafn<? super zzbdi>> predicate) {
        zzbfb zzbfbVar = this.f8759b;
        if (zzbfbVar != null) {
            zzbfbVar.zza(str, predicate);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(String str, zzafn<? super zzbdi> zzafnVar) {
        zzbfb zzbfbVar = this.f8759b;
        if (zzbfbVar != null) {
            zzbfbVar.zza(str, zzafnVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz
    public final void zza(String str, zzbcn zzbcnVar) {
        synchronized (this) {
            if (this.f8756O == null) {
                this.f8756O = new HashMap();
            }
            this.f8756O.put(str, zzbcnVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahs
    public final void zza(String str, Map map) {
        zzahz.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void zza(String str, JSONObject jSONObject) {
        zzahz.zza(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbep
    public final void zza(boolean z, int i, String str) {
        this.f8759b.zza(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbep
    public final void zza(boolean z, int i, String str, String str2) {
        this.f8759b.zza(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final void zza(boolean z, long j) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("success", z ? "1" : "0");
        hashMap.put("duration", Long.toString(j));
        zzahz.zza(this, "onCacheAccessComplete", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final /* synthetic */ zzbev zzaaa() {
        return this.f8759b;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final WebViewClient zzaab() {
        return this.f8759b;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean zzaac() {
        boolean z;
        synchronized (this) {
            z = this.f8771n;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbeq
    public final zzdq zzaad() {
        return this.f8760c;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final IObjectWrapper zzaae() {
        return this.f8751J.get();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbel
    public final boolean zzaaf() {
        boolean z;
        synchronized (this) {
            z = this.f8772o;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbfm, com.google.android.gms.internal.ads.zzbdi
    public final void zzaag() {
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean zzaah() {
        boolean z;
        synchronized (this) {
            z = this.f8775r;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean zzaai() {
        boolean z;
        synchronized (this) {
            z = this.f8742A > 0;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzaaj() {
        this.f8750I.zzxg();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzaak() {
        if (this.f8746E == null) {
            this.f8746E = zzzv.zzb(this.f8747F.zzqp());
            this.f8747F.zza("native:view_load", this.f8746E);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final zzabw zzaal() {
        zzabw zzabwVar;
        synchronized (this) {
            zzabwVar = this.f8781x;
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
            zzraVar = this.f8783z;
        }
        return zzraVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean zzaap() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final zzro zzaaq() {
        return this.f8766i;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean zzaar() {
        return ((Boolean) zzve.zzoy().zzd(zzzn.zzcqj)).booleanValue() && this.f8766i != null && this.f8767j;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzal(boolean z) {
        synchronized (this) {
            if (this.f8768k != null) {
                this.f8768k.zza(this.f8759b.zzaat(), z);
            } else {
                this.f8771n = z;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzan(IObjectWrapper iObjectWrapper) {
        this.f8751J.set(iObjectWrapper);
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final void zzav(boolean z) {
        this.f8759b.zzav(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzax(boolean z) {
        synchronized (this) {
            boolean z2 = z != this.f8772o;
            this.f8772o = z;
            m4677d();
            if (z2) {
                if (!((Boolean) zzve.zzoy().zzd(zzzn.zzchp)).booleanValue() || !this.f8769l.zzabt()) {
                    new zzaoo(this).zzdu(z ? "expanded" : "default");
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzay(boolean z) {
        synchronized (this) {
            this.f8775r = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzaz(boolean z) {
        synchronized (this) {
            this.f8742A += z ? 1 : -1;
            if (this.f8742A <= 0 && this.f8768k != null) {
                this.f8768k.zztt();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzb(zzc zzcVar) {
        synchronized (this) {
            this.f8749H = zzcVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzb(String str, zzafn<? super zzbdi> zzafnVar) {
        zzbfb zzbfbVar = this.f8759b;
        if (zzbfbVar != null) {
            zzbfbVar.zzb(str, zzafnVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzb(String str, String str2, String str3) {
        synchronized (this) {
            super.loadDataWithBaseURL(str, zzbeo.zzf(str2, zzbeo.zzabp()), "text/html", "UTF-8", str3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaia, com.google.android.gms.internal.ads.zzahs
    public final void zzb(String str, JSONObject jSONObject) {
        zzahz.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean zzb(final boolean z, final int i) {
        destroy();
        this.f8765h.zza(new zzsp(z, i) { // from class: com.google.android.gms.internal.ads.jp

            /* renamed from: a */
            private final boolean f8798a;

            /* renamed from: b */
            private final int f8799b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8798a = z;
                this.f8799b = i;
            }

            @Override // com.google.android.gms.internal.ads.zzsp
            public final void zza(zztu zztuVar) {
                ViewTreeObserver$OnGlobalLayoutListenerC1983jm.m4681a(this.f8798a, this.f8799b, zztuVar);
            }
        });
        this.f8765h.zza(zzso.zza.EnumC3503zza.ANDROID_WEBVIEW_CRASH);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzba(boolean z) {
        this.f8759b.zzba(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzbr(Context context) {
        this.f8758a.setBaseContext(context);
        this.f8750I.zzh(this.f8758a.zzyn());
    }

    @Override // com.google.android.gms.internal.ads.zzbep
    public final void zzc(boolean z, int i) {
        this.f8759b.zzc(z, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbfm, com.google.android.gms.internal.ads.C1987jq, com.google.android.gms.internal.ads.zzaia, com.google.android.gms.internal.ads.zzaip
    public final void zzcy(String str) {
        synchronized (this) {
            if (!isDestroyed()) {
                super.zzcy(str);
            } else {
                zzavs.zzez("The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzde(int i) {
        if (i == 0) {
            zzzv.zza(this.f8747F.zzqp(), this.f8745D, "aebb2");
        }
        m4678c();
        if (this.f8747F.zzqp() != null) {
            this.f8747F.zzqp().zzh("close_type", String.valueOf(i));
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.f8761d.zzbma);
        zzahz.zza(this, "onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final zzbcn zzfe(String str) {
        synchronized (this) {
            if (this.f8756O == null) {
                return null;
            }
            return this.f8756O.get(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaia
    public final void zzj(String str, String str2) {
        zzahz.zza(this, str, str2);
    }

    @Override // com.google.android.gms.ads.internal.zzi
    public final void zzjv() {
        synchronized (this) {
            this.f8776s = true;
            if (this.f8762e != null) {
                this.f8762e.zzjv();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzi
    public final void zzjw() {
        synchronized (this) {
            this.f8776s = false;
            if (this.f8762e != null) {
                this.f8762e.zzjw();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zztr() {
        if (this.f8744C == null) {
            zzzv.zza(this.f8747F.zzqp(), this.f8745D, "aes2");
            this.f8744C = zzzv.zzb(this.f8747F.zzqp());
            this.f8747F.zza("native:view_show", this.f8744C);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f8761d.zzbma);
        zzahz.zza(this, "onshow", hashMap);
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
            zzbedVar = this.f8778u;
        }
        return zzbedVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final zzaac zzym() {
        return this.f8745D;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz, com.google.android.gms.internal.ads.zzbei
    public final Activity zzyn() {
        return this.f8758a.zzyn();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz
    public final zza zzyo() {
        return this.f8763f;
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final String zzyp() {
        String str;
        synchronized (this) {
            str = this.f8777t;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz
    public final zzaab zzyq() {
        return this.f8747F;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz, com.google.android.gms.internal.ads.zzbet
    public final zzazb zzyr() {
        return this.f8761d;
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
            if (this.f8782y != null) {
                this.f8782y.zzrb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzzt() {
        m4678c();
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f8761d.zzbma);
        zzahz.zza(this, "onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzzu() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(zzq.zzkv().zzpf()));
        hashMap.put("app_volume", String.valueOf(zzq.zzkv().zzpe()));
        hashMap.put("device_volume", String.valueOf(zzawq.zzbe(getContext())));
        zzahz.zza(this, "volume", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final Context zzzv() {
        return this.f8758a.zzzv();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final zzc zzzw() {
        zzc zzcVar;
        synchronized (this) {
            zzcVar = this.f8768k;
        }
        return zzcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final zzc zzzx() {
        zzc zzcVar;
        synchronized (this) {
            zzcVar = this.f8749H;
        }
        return zzcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzber
    public final zzbey zzzy() {
        zzbey zzbeyVar;
        synchronized (this) {
            zzbeyVar = this.f8769l;
        }
        return zzbeyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final String zzzz() {
        String str;
        synchronized (this) {
            str = this.f8770m;
        }
        return str;
    }
}
