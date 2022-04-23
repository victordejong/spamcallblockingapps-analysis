package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbod;
import com.google.android.gms.internal.ads.zzbrm;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcor.class */
public final class zzcor extends zzvt {

    /* renamed from: a */
    private final zzbfx f13471a;

    /* renamed from: b */
    private final Context f13472b;

    /* renamed from: c */
    private final Executor f13473c;

    /* renamed from: h */
    private zzaak f13478h;

    /* renamed from: i */
    private zzbtu f13479i;

    /* renamed from: j */
    private zzdhe<zzbtu> f13480j;

    /* renamed from: d */
    private final zzcop f13474d = new zzcop();

    /* renamed from: e */
    private final zzcos f13475e = new zzcos();

    /* renamed from: f */
    private final zzcxz f13476f = new zzcxz(new zzdax());

    /* renamed from: g */
    private final zzczw f13477g = new zzczw();

    /* renamed from: k */
    private boolean f13481k = false;

    public zzcor(zzbfx zzbfxVar, Context context, zzuj zzujVar, String str) {
        this.f13471a = zzbfxVar;
        this.f13477g.zzd(zzujVar).zzgk(str);
        this.f13473c = zzbfxVar.zzaca();
        this.f13472b = context;
    }

    /* renamed from: a */
    private final boolean m3714a() {
        boolean z;
        synchronized (this) {
            if (this.f13479i != null) {
                if (!this.f13479i.isClosed()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void destroy() {
        synchronized (this) {
            Preconditions.checkMainThread("destroy must be called on the main UI thread.");
            if (this.f13479i != null) {
                this.f13479i.zzagr().zzbx(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final Bundle getAdMetadata() {
        Preconditions.checkMainThread("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String getAdUnitId() {
        String zzaor;
        synchronized (this) {
            zzaor = this.f13477g.zzaor();
        }
        return zzaor;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String getMediationAdapterClassName() {
        synchronized (this) {
            if (this.f13479i == null || this.f13479i.zzags() == null) {
                return null;
            }
            return this.f13479i.zzags().getMediationAdapterClassName();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzxb getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean isLoading() {
        boolean z;
        synchronized (this) {
            if (this.f13480j != null) {
                if (!this.f13480j.isDone()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean isReady() {
        boolean a;
        synchronized (this) {
            Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
            a = m3714a();
        }
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void pause() {
        synchronized (this) {
            Preconditions.checkMainThread("pause must be called on the main UI thread.");
            if (this.f13479i != null) {
                this.f13479i.zzagr().zzbv(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void resume() {
        synchronized (this) {
            Preconditions.checkMainThread("resume must be called on the main UI thread.");
            if (this.f13479i != null) {
                this.f13479i.zzagr().zzbw(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setImmersiveMode(boolean z) {
        synchronized (this) {
            Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
            this.f13481k = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setManualImpressionsEnabled(boolean z) {
        synchronized (this) {
            Preconditions.checkMainThread("setManualImpressionsEnabled must be called from the main thread.");
            this.f13477g.zzbm(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void showInterstitial() {
        synchronized (this) {
            Preconditions.checkMainThread("showInterstitial must be called on the main UI thread.");
            if (this.f13479i != null) {
                if (this.f13479i.zzaid()) {
                    this.f13479i.zzbg(this.f13481k);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzaak zzaakVar) {
        synchronized (this) {
            Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
            this.f13478h = zzaakVar;
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
        this.f13476f.zzb(zzaroVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzrg zzrgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzuj zzujVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzuo zzuoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzvg zzvgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzvh zzvhVar) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.f13474d.zzc(zzvhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzvx zzvxVar) {
        Preconditions.checkMainThread("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzwc zzwcVar) {
        Preconditions.checkMainThread("setAppEventListener must be called on the main UI thread.");
        this.f13475e.zzb(zzwcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzwi zzwiVar) {
        synchronized (this) {
            Preconditions.checkMainThread("setCorrelationIdProvider must be called on the main UI thread");
            this.f13477g.zzc(zzwiVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzxh zzxhVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzyw zzywVar) {
        synchronized (this) {
            this.f13477g.zzc(zzywVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean zza(zzug zzugVar) {
        boolean z;
        synchronized (this) {
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            if (this.f13480j == null && !m3714a()) {
                zzdad.zze(this.f13472b, zzugVar.zzccb);
                this.f13479i = null;
                zzczu zzaos = this.f13477g.zzg(zzugVar).zzaos();
                zzbrm.zza zzaVar = new zzbrm.zza();
                if (this.f13476f != null) {
                    zzaVar.zza((zzbov) this.f13476f, this.f13471a.zzaca()).zza((zzbqb) this.f13476f, this.f13471a.zzaca()).zza((zzbow) this.f13476f, this.f13471a.zzaca());
                }
                zzbup zzaek = this.f13471a.zzack().zzd(new zzbod.zza().zzbz(this.f13472b).zza(zzaos).zzahh()).zzd(zzaVar.zza((zzbov) this.f13474d, this.f13471a.zzaca()).zza((zzbqb) this.f13474d, this.f13471a.zzaca()).zza((zzbow) this.f13474d, this.f13471a.zzaca()).zza((zzty) this.f13474d, this.f13471a.zzaca()).zza(this.f13475e, this.f13471a.zzaca()).zzahw()).zzb(new zzcns(this.f13478h)).zzaek();
                this.f13480j = zzaek.zzadc().zzaha();
                zzdgs.zza(this.f13480j, new C2298vd(this, zzaek), this.f13473c);
                z = true;
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzbr(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final IObjectWrapper zzjx() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzjy() {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzuj zzjz() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String zzka() {
        synchronized (this) {
            if (this.f13479i == null || this.f13479i.zzags() == null) {
                return null;
            }
            return this.f13479i.zzags().getMediationAdapterClassName();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzxa zzkb() {
        synchronized (this) {
            if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcrf)).booleanValue()) {
                return null;
            }
            if (this.f13479i == null) {
                return null;
            }
            return this.f13479i.zzags();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzwc zzkc() {
        return this.f13475e.zzamq();
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzvh zzkd() {
        return this.f13474d.zzamo();
    }
}
