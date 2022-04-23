package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.internal.overlay.zzy;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwr.class */
public final class zzcwr extends zzvt implements zzy, zzbqg, zzra {

    /* renamed from: a */
    protected zzbke f14002a;

    /* renamed from: b */
    private final zzbfx f14003b;

    /* renamed from: c */
    private final Context f14004c;

    /* renamed from: d */
    private final ViewGroup f14005d;

    /* renamed from: e */
    private AtomicBoolean f14006e = new AtomicBoolean();

    /* renamed from: f */
    private final String f14007f;

    /* renamed from: g */
    private final zzcwl f14008g;

    /* renamed from: h */
    private final zzcwz f14009h;

    /* renamed from: i */
    private final zzazb f14010i;

    /* renamed from: j */
    private zzbju f14011j;

    public zzcwr(zzbfx zzbfxVar, Context context, String str, zzcwl zzcwlVar, zzcwz zzcwzVar, zzazb zzazbVar) {
        this.f14005d = new FrameLayout(context);
        this.f14003b = zzbfxVar;
        this.f14004c = context;
        this.f14007f = str;
        this.f14008g = zzcwlVar;
        this.f14009h = zzcwzVar;
        zzcwzVar.zza(this);
        this.f14010i = zzazbVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ RelativeLayout.LayoutParams m3678a(zzbke zzbkeVar) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(zzbkeVar.zzaat() ? 11 : 9);
        return layoutParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ zzq m3676a(zzcwr zzcwrVar, zzbke zzbkeVar) {
        boolean zzaat = zzbkeVar.zzaat();
        int intValue = ((Integer) zzve.zzoy().zzd(zzzn.zzcnv)).intValue();
        zzp zzpVar = new zzp();
        zzpVar.size = 50;
        zzpVar.paddingLeft = zzaat ? intValue : 0;
        zzpVar.paddingRight = zzaat ? 0 : intValue;
        zzpVar.paddingTop = 0;
        zzpVar.paddingBottom = intValue;
        return new zzq(zzcwrVar.f14004c, zzpVar, zzcwrVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public final void m3675b() {
        if (this.f14006e.compareAndSet(false, true)) {
            zzbke zzbkeVar = this.f14002a;
            if (!(zzbkeVar == null || zzbkeVar.zzagc() == null)) {
                this.f14009h.zzb(this.f14002a.zzagc());
            }
            this.f14009h.onAdClosed();
            this.f14005d.removeAllViews();
            zzbju zzbjuVar = this.f14011j;
            if (zzbjuVar != null) {
                com.google.android.gms.ads.internal.zzq.zzkt().zzb(zzbjuVar);
            }
            destroy();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3679a() {
        this.f14003b.zzaca().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ya

            /* renamed from: a */
            private final zzcwr f10709a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10709a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10709a.m3675b();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void destroy() {
        synchronized (this) {
            Preconditions.checkMainThread("destroy must be called on the main UI thread.");
            if (this.f14002a != null) {
                this.f14002a.destroy();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final Bundle getAdMetadata() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String getAdUnitId() {
        String str;
        synchronized (this) {
            str = this.f14007f;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String getMediationAdapterClassName() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzxb getVideoController() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean isLoading() {
        boolean isLoading;
        synchronized (this) {
            isLoading = this.f14008g.isLoading();
        }
        return isLoading;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void pause() {
        synchronized (this) {
            Preconditions.checkMainThread("pause must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void resume() {
        synchronized (this) {
            Preconditions.checkMainThread("resume must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setManualImpressionsEnabled(boolean z) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void showInterstitial() {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzaak zzaakVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzaoy zzaoyVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzape zzapeVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzaro zzaroVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzrg zzrgVar) {
        this.f14009h.zzb(zzrgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzuj zzujVar) {
        synchronized (this) {
            Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzuo zzuoVar) {
        this.f14008g.zza(zzuoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzvg zzvgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzvh zzvhVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzvx zzvxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzwc zzwcVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzwi zzwiVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzxh zzxhVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzyw zzywVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean zza(zzug zzugVar) {
        synchronized (this) {
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            if (isLoading()) {
                return false;
            }
            this.f14006e = new AtomicBoolean();
            return this.f14008g.zza(zzugVar, this.f14007f, new C2377yb(), new C2379yd(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final void zzahi() {
        int zzafw;
        zzbke zzbkeVar = this.f14002a;
        if (zzbkeVar != null && (zzafw = zzbkeVar.zzafw()) > 0) {
            this.f14011j = new zzbju(this.f14003b.zzacb(), com.google.android.gms.ads.internal.zzq.zzkx());
            this.f14011j.zza(zzafw, new Runnable(this) { // from class: com.google.android.gms.internal.ads.yc

                /* renamed from: a */
                private final zzcwr f10710a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10710a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f10710a.m3679a();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzbr(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final IObjectWrapper zzjx() {
        Preconditions.checkMainThread("getAdFrame must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.f14005d);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzjy() {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzuj zzjz() {
        synchronized (this) {
            Preconditions.checkMainThread("getAdSize must be called on the main UI thread.");
            if (this.f14002a == null) {
                return null;
            }
            return zzczy.zza(this.f14004c, Collections.singletonList(this.f14002a.zzafz()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String zzka() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzxa zzkb() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzwc zzkc() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzvh zzkd() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzra
    public final void zzmm() {
        m3675b();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzy
    public final void zztl() {
        m3675b();
    }
}
