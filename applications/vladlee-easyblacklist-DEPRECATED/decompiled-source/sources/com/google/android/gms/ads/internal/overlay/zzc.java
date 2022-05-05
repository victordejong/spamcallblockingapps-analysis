package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaoo;
import com.google.android.gms.internal.ads.zzaos;
import com.google.android.gms.internal.ads.zzavs;
import com.google.android.gms.internal.ads.zzawb;
import com.google.android.gms.internal.ads.zzawh;
import com.google.android.gms.internal.ads.zzbdi;
import com.google.android.gms.internal.ads.zzve;
import com.google.android.gms.internal.ads.zzzn;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzc.class */
public class zzc extends zzaos implements zzy {

    /* renamed from: e */
    private static final int f5917e = Color.argb(0, 0, 0, 0);

    /* renamed from: a */
    protected final Activity f5918a;

    /* renamed from: b */
    AdOverlayInfoParcel f5919b;

    /* renamed from: c */
    zzbdi f5920c;

    /* renamed from: f */
    private zzi f5922f;

    /* renamed from: g */
    private zzq f5923g;

    /* renamed from: i */
    private FrameLayout f5925i;

    /* renamed from: j */
    private WebChromeClient.CustomViewCallback f5926j;

    /* renamed from: m */
    private C1552d f5929m;

    /* renamed from: p */
    private Runnable f5932p;

    /* renamed from: q */
    private boolean f5933q;

    /* renamed from: r */
    private boolean f5934r;

    /* renamed from: h */
    private boolean f5924h = false;

    /* renamed from: k */
    private boolean f5927k = false;

    /* renamed from: l */
    private boolean f5928l = false;

    /* renamed from: n */
    private boolean f5930n = false;

    /* renamed from: d */
    int f5921d = 0;

    /* renamed from: o */
    private final Object f5931o = new Object();

    /* renamed from: s */
    private boolean f5935s = false;

    /* renamed from: t */
    private boolean f5936t = false;

    /* renamed from: u */
    private boolean f5937u = true;

    public zzc(Activity activity) {
        this.f5918a = activity;
    }

    /* renamed from: a */
    private final void m6055a(Configuration configuration) {
        boolean z;
        boolean z2;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f5919b;
        boolean z3 = (adOverlayInfoParcel == null || adOverlayInfoParcel.zzdhx == null || !this.f5919b.zzdhx.zzbky) ? false : true;
        boolean zza = zzq.zzks().zza(this.f5918a, configuration);
        if ((!this.f5928l || z3) && !zza) {
            z2 = true;
            z = false;
            if (Build.VERSION.SDK_INT >= 19) {
                AdOverlayInfoParcel adOverlayInfoParcel2 = this.f5919b;
                z2 = true;
                z = false;
                if (adOverlayInfoParcel2 != null) {
                    z2 = true;
                    z = false;
                    if (adOverlayInfoParcel2.zzdhx != null) {
                        z2 = true;
                        z = false;
                        if (this.f5919b.zzdhx.zzbld) {
                            z = true;
                            z2 = true;
                        }
                    }
                }
            }
        } else {
            z2 = false;
            z = false;
        }
        Window window = this.f5918a.getWindow();
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcjj)).booleanValue() && Build.VERSION.SDK_INT >= 19) {
            View decorView = window.getDecorView();
            int i = 256;
            if (z2) {
                i = 5380;
                if (z) {
                    i = 5894;
                }
            }
            decorView.setSystemUiVisibility(i);
        } else if (z2) {
            window.addFlags(1024);
            window.clearFlags(2048);
            if (Build.VERSION.SDK_INT >= 19 && z) {
                window.getDecorView().setSystemUiVisibility(4098);
            }
        } else {
            window.addFlags(2048);
            window.clearFlags(1024);
        }
    }

    /* renamed from: a */
    private static void m6054a(IObjectWrapper iObjectWrapper, View view) {
        if (iObjectWrapper != null && view != null) {
            zzq.zzlf().zza(iObjectWrapper, view);
        }
    }

    /* renamed from: a */
    private final void m6053a(boolean z) {
        int intValue = ((Integer) zzve.zzoy().zzd(zzzn.zzcnv)).intValue();
        zzp zzpVar = new zzp();
        zzpVar.size = 50;
        zzpVar.paddingLeft = z ? intValue : 0;
        zzpVar.paddingRight = z ? 0 : intValue;
        zzpVar.paddingTop = 0;
        zzpVar.paddingBottom = intValue;
        this.f5923g = new zzq(this.f5918a, zzpVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(z ? 11 : 9);
        zza(z, this.f5919b.zzdhs);
        this.f5929m.addView(this.f5923g, layoutParams);
    }

    /* renamed from: b */
    private final void m6052b() {
        if (this.f5918a.isFinishing() && !this.f5935s) {
            this.f5935s = true;
            zzbdi zzbdiVar = this.f5920c;
            if (zzbdiVar != null) {
                zzbdiVar.zzde(this.f5921d);
                synchronized (this.f5931o) {
                    if (!this.f5933q && this.f5920c.zzaai()) {
                        this.f5932p = new Runnable(this) { // from class: com.google.android.gms.ads.internal.overlay.a

                            /* renamed from: a */
                            private final zzc f5910a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f5910a = this;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f5910a.m6056a();
                            }
                        };
                        zzawb.zzdsr.postDelayed(this.f5932p, ((Long) zzve.zzoy().zzd(zzzn.zzcjg)).longValue());
                        return;
                    }
                }
            }
            m6056a();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x007d, code lost:
        if (r15.f5918a.getResources().getConfiguration().orientation == 1) goto L_0x0080;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0080, code lost:
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0083, code lost:
        r15.f5930n = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ae, code lost:
        if (r15.f5918a.getResources().getConfiguration().orientation == 2) goto L_0x0080;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m6051b(boolean r16) {
        /*
            Method dump skipped, instructions count: 886
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzc.m6051b(boolean):void");
    }

    /* renamed from: c */
    private final void m6050c() {
        this.f5920c.zztr();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6056a() {
        if (!this.f5936t) {
            this.f5936t = true;
            zzbdi zzbdiVar = this.f5920c;
            if (zzbdiVar != null) {
                this.f5929m.removeView(zzbdiVar.getView());
                zzi zziVar = this.f5922f;
                if (zziVar != null) {
                    this.f5920c.zzbr(zziVar.zzup);
                    this.f5920c.zzax(false);
                    this.f5922f.parent.addView(this.f5920c.getView(), this.f5922f.index, this.f5922f.zzdhj);
                    this.f5922f = null;
                } else if (this.f5918a.getApplicationContext() != null) {
                    this.f5920c.zzbr(this.f5918a.getApplicationContext());
                }
                this.f5920c = null;
            }
            AdOverlayInfoParcel adOverlayInfoParcel = this.f5919b;
            if (!(adOverlayInfoParcel == null || adOverlayInfoParcel.zzdhq == null)) {
                this.f5919b.zzdhq.zzte();
            }
            AdOverlayInfoParcel adOverlayInfoParcel2 = this.f5919b;
            if (adOverlayInfoParcel2 != null && adOverlayInfoParcel2.zzcza != null) {
                m6054a(this.f5919b.zzcza.zzaae(), this.f5919b.zzcza.getView());
            }
        }
    }

    public final void close() {
        this.f5921d = 2;
        this.f5918a.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onActivityResult(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onBackPressed() {
        this.f5921d = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public void onCreate(Bundle bundle) {
        this.f5918a.requestWindowFeature(1);
        this.f5927k = bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
        try {
            this.f5919b = AdOverlayInfoParcel.zzc(this.f5918a.getIntent());
            if (this.f5919b != null) {
                if (this.f5919b.zzbll.zzdwa > 7500000) {
                    this.f5921d = 3;
                }
                if (this.f5918a.getIntent() != null) {
                    this.f5937u = this.f5918a.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
                }
                if (this.f5919b.zzdhx != null) {
                    this.f5928l = this.f5919b.zzdhx.zzbkx;
                } else {
                    this.f5928l = false;
                }
                if (this.f5928l && this.f5919b.zzdhx.zzblc != -1) {
                    new C1554f(this, (byte) 0).zzvr();
                }
                if (bundle == null) {
                    if (this.f5919b.zzdhq != null && this.f5937u) {
                        this.f5919b.zzdhq.zztf();
                    }
                    if (!(this.f5919b.zzdhv == 1 || this.f5919b.zzcbt == null)) {
                        this.f5919b.zzcbt.onAdClicked();
                    }
                }
                this.f5929m = new C1552d(this.f5918a, this.f5919b.zzdhw, this.f5919b.zzbll.zzbma);
                this.f5929m.setId(1000);
                zzq.zzks().zzg(this.f5918a);
                int i = this.f5919b.zzdhv;
                if (i == 1) {
                    m6051b(false);
                } else if (i == 2) {
                    this.f5922f = new zzi(this.f5919b.zzcza);
                    m6051b(false);
                } else if (i == 3) {
                    m6051b(true);
                } else {
                    throw new C1551c("Could not determine ad overlay type.");
                }
            } else {
                throw new C1551c("Could not get info for ad overlay.");
            }
        } catch (C1551c e) {
            zzavs.zzez(e.getMessage());
            this.f5921d = 3;
            this.f5918a.finish();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onDestroy() {
        zzbdi zzbdiVar = this.f5920c;
        if (zzbdiVar != null) {
            try {
                this.f5929m.removeView(zzbdiVar.getView());
            } catch (NullPointerException e) {
            }
        }
        m6052b();
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onPause() {
        zztk();
        if (this.f5919b.zzdhq != null) {
            this.f5919b.zzdhq.onPause();
        }
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcnt)).booleanValue() && this.f5920c != null && (!this.f5918a.isFinishing() || this.f5922f == null)) {
            zzq.zzks();
            zzawh.zza(this.f5920c);
        }
        m6052b();
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onRestart() {
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onResume() {
        if (this.f5919b.zzdhq != null) {
            this.f5919b.zzdhq.onResume();
        }
        m6055a(this.f5918a.getResources().getConfiguration());
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcnt)).booleanValue()) {
            zzbdi zzbdiVar = this.f5920c;
            if (zzbdiVar == null || zzbdiVar.isDestroyed()) {
                zzavs.zzez("The webview does not exist. Ignoring action.");
                return;
            }
            zzq.zzks();
            zzawh.zzb(this.f5920c);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f5927k);
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onStart() {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcnt)).booleanValue()) {
            zzbdi zzbdiVar = this.f5920c;
            if (zzbdiVar == null || zzbdiVar.isDestroyed()) {
                zzavs.zzez("The webview does not exist. Ignoring action.");
                return;
            }
            zzq.zzks();
            zzawh.zzb(this.f5920c);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onStop() {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcnt)).booleanValue() && this.f5920c != null && (!this.f5918a.isFinishing() || this.f5922f == null)) {
            zzq.zzks();
            zzawh.zza(this.f5920c);
        }
        m6052b();
    }

    public final void setRequestedOrientation(int i) {
        if (this.f5918a.getApplicationInfo().targetSdkVersion >= ((Integer) zzve.zzoy().zzd(zzzn.zzcpr)).intValue()) {
            if (this.f5918a.getApplicationInfo().targetSdkVersion <= ((Integer) zzve.zzoy().zzd(zzzn.zzcps)).intValue()) {
                if (Build.VERSION.SDK_INT >= ((Integer) zzve.zzoy().zzd(zzzn.zzcpt)).intValue()) {
                    if (Build.VERSION.SDK_INT <= ((Integer) zzve.zzoy().zzd(zzzn.zzcpu)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            this.f5918a.setRequestedOrientation(i);
        } catch (Throwable th) {
            zzq.zzku().zzb(th, "AdOverlay.setRequestedOrientation");
        }
    }

    public final void zza(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        this.f5925i = new FrameLayout(this.f5918a);
        this.f5925i.setBackgroundColor(-16777216);
        this.f5925i.addView(view, -1, -1);
        this.f5918a.setContentView(this.f5925i);
        this.f5934r = true;
        this.f5926j = customViewCallback;
        this.f5924h = true;
    }

    public final void zza(boolean z, boolean z2) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        boolean z3 = ((Boolean) zzve.zzoy().zzd(zzzn.zzcjh)).booleanValue() && (adOverlayInfoParcel2 = this.f5919b) != null && adOverlayInfoParcel2.zzdhx != null && this.f5919b.zzdhx.zzble;
        boolean z4 = ((Boolean) zzve.zzoy().zzd(zzzn.zzcji)).booleanValue() && (adOverlayInfoParcel = this.f5919b) != null && adOverlayInfoParcel.zzdhx != null && this.f5919b.zzdhx.zzblf;
        if (z && z2 && z3 && !z4) {
            new zzaoo(this.f5920c, "useCustomClose").zzds("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        zzq zzqVar = this.f5923g;
        if (zzqVar != null) {
            boolean z5 = true;
            if (!z4) {
                z5 = z2 && !z3;
            }
            zzqVar.zzal(z5);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void zzad(IObjectWrapper iObjectWrapper) {
        m6055a((Configuration) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void zzdf() {
        this.f5934r = true;
    }

    public final void zztk() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.f5919b;
        if (adOverlayInfoParcel != null && this.f5924h) {
            setRequestedOrientation(adOverlayInfoParcel.orientation);
        }
        if (this.f5925i != null) {
            this.f5918a.setContentView(this.f5929m);
            this.f5934r = true;
            this.f5925i.removeAllViews();
            this.f5925i = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.f5926j;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.f5926j = null;
        }
        this.f5924h = false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzy
    public final void zztl() {
        this.f5921d = 1;
        this.f5918a.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final boolean zztm() {
        this.f5921d = 0;
        zzbdi zzbdiVar = this.f5920c;
        if (zzbdiVar == null) {
            return true;
        }
        boolean zzaah = zzbdiVar.zzaah();
        if (!zzaah) {
            this.f5920c.zza("onbackblocked", Collections.emptyMap());
        }
        return zzaah;
    }

    public final void zztn() {
        this.f5929m.removeView(this.f5923g);
        m6053a(true);
    }

    public final void zztq() {
        if (this.f5930n) {
            this.f5930n = false;
            m6050c();
        }
    }

    public final void zzts() {
        this.f5929m.f5912a = true;
    }

    public final void zztt() {
        synchronized (this.f5931o) {
            this.f5933q = true;
            if (this.f5932p != null) {
                zzawb.zzdsr.removeCallbacks(this.f5932p);
                zzawb.zzdsr.post(this.f5932p);
            }
        }
    }
}
