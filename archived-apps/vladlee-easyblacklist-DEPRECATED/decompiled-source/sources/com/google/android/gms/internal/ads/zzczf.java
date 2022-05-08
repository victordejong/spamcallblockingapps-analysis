package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczf.class */
public final class zzczf extends zzark {

    /* renamed from: a */
    private final zzcyt f14077a;

    /* renamed from: b */
    private final zzcxz f14078b;

    /* renamed from: c */
    private final zzczs f14079c;

    /* renamed from: d */
    private zzcbb f14080d;

    /* renamed from: e */
    private boolean f14081e = false;

    public zzczf(zzcyt zzcytVar, zzcxz zzcxzVar, zzczs zzczsVar) {
        this.f14077a = zzcytVar;
        this.f14078b = zzcxzVar;
        this.f14079c = zzczsVar;
    }

    /* renamed from: a */
    private final boolean m3651a() {
        boolean z;
        synchronized (this) {
            if (this.f14080d != null) {
                if (!this.f14080d.isClosed()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void destroy() {
        zzl(null);
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final Bundle getAdMetadata() {
        Preconditions.checkMainThread("getAdMetadata can only be called from the UI thread.");
        zzcbb zzcbbVar = this.f14080d;
        return zzcbbVar != null ? zzcbbVar.getAdMetadata() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final String getMediationAdapterClassName() {
        synchronized (this) {
            if (this.f14080d == null || this.f14080d.zzags() == null) {
                return null;
            }
            return this.f14080d.zzags().getMediationAdapterClassName();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final boolean isLoaded() {
        Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
        return m3651a();
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void pause() {
        zzj(null);
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void resume() {
        zzk(null);
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void setAppPackageName(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void setCustomData(String str) {
        synchronized (this) {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcja)).booleanValue()) {
                Preconditions.checkMainThread("#008 Must be called on the main UI thread.: setCustomData");
                this.f14079c.zzdnw = str;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void setImmersiveMode(boolean z) {
        synchronized (this) {
            Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
            this.f14081e = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void setUserId(String str) {
        synchronized (this) {
            Preconditions.checkMainThread("setUserId must be called on the main UI thread.");
            this.f14079c.zzdnv = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void show() {
        synchronized (this) {
            zzi(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zza(zzarj zzarjVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.f14078b.zzb(zzarjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zza(zzaro zzaroVar) {
        Preconditions.checkMainThread("setRewardedVideoAdListener can only be called from the UI thread.");
        this.f14078b.zzb(zzaroVar);
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zza(zzaru zzaruVar) {
        synchronized (this) {
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            if (!zzzp.zzcp(zzaruVar.zzbqz)) {
                if (m3651a()) {
                    if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcor)).booleanValue()) {
                        return;
                    }
                }
                zzcyq zzcyqVar = new zzcyq(null);
                this.f14080d = null;
                this.f14077a.zza(zzaruVar.zzdio, zzaruVar.zzbqz, zzcyqVar, new C2419zq(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zza(zzvx zzvxVar) {
        Preconditions.checkMainThread("setAdMetadataListener can only be called from the UI thread.");
        if (zzvxVar == null) {
            this.f14078b.zza((AdMetadataListener) null);
        } else {
            this.f14078b.zza(new C2420zr(this, zzvxVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zzi(IObjectWrapper iObjectWrapper) {
        Activity activity;
        synchronized (this) {
            Preconditions.checkMainThread("showAd must be called on the main UI thread.");
            if (this.f14080d != null) {
                if (iObjectWrapper != null) {
                    Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
                    if (unwrap instanceof Activity) {
                        activity = (Activity) unwrap;
                        this.f14080d.zzb(this.f14081e, activity);
                    }
                }
                activity = null;
                this.f14080d.zzb(this.f14081e, activity);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zzj(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Preconditions.checkMainThread("pause must be called on the main UI thread.");
            if (this.f14080d != null) {
                this.f14080d.zzagr().zzbv(iObjectWrapper == null ? null : (Context) ObjectWrapper.unwrap(iObjectWrapper));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zzk(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Preconditions.checkMainThread("resume must be called on the main UI thread.");
            if (this.f14080d != null) {
                this.f14080d.zzagr().zzbw(iObjectWrapper == null ? null : (Context) ObjectWrapper.unwrap(iObjectWrapper));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final zzxa zzkb() {
        synchronized (this) {
            if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcrf)).booleanValue()) {
                return null;
            }
            if (this.f14080d == null) {
                return null;
            }
            return this.f14080d.zzags();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zzl(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Preconditions.checkMainThread("destroy must be called on the main UI thread.");
            Context context = null;
            this.f14078b.zza((AdMetadataListener) null);
            if (this.f14080d != null) {
                if (iObjectWrapper != null) {
                    context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
                }
                this.f14080d.zzagr().zzbx(context);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final boolean zzqa() {
        zzcbb zzcbbVar = this.f14080d;
        return zzcbbVar != null && zzcbbVar.zzqa();
    }
}
