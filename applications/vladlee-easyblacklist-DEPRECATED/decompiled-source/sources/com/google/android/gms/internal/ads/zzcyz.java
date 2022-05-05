package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcyz.class */
public final class zzcyz extends zzasj {

    /* renamed from: a */
    private final zzcyt f14068a;

    /* renamed from: b */
    private final zzcxz f14069b;

    /* renamed from: c */
    private final String f14070c;

    /* renamed from: d */
    private final zzczs f14071d;

    /* renamed from: e */
    private zzcbb f14072e;

    public zzcyz(String str, zzcyt zzcytVar, zzcxz zzcxzVar, zzczs zzczsVar) {
        this.f14070c = str;
        this.f14068a = zzcytVar;
        this.f14069b = zzcxzVar;
        this.f14071d = zzczsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final Bundle getAdMetadata() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzcbb zzcbbVar = this.f14072e;
        return zzcbbVar != null ? zzcbbVar.getAdMetadata() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final String getMediationAdapterClassName() {
        synchronized (this) {
            if (this.f14072e == null || this.f14072e.zzags() == null) {
                return null;
            }
            return this.f14072e.zzags().getMediationAdapterClassName();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final boolean isLoaded() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzcbb zzcbbVar = this.f14072e;
        return zzcbbVar != null && !zzcbbVar.zzaks();
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zza(IObjectWrapper iObjectWrapper, boolean z) {
        synchronized (this) {
            Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
            if (this.f14072e == null) {
                zzavs.zzez("Rewarded can not be shown before loaded");
                this.f14069b.zzco(2);
                return;
            }
            this.f14072e.zzb(z, (Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zza(zzasl zzaslVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        this.f14069b.zzb(zzaslVar);
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zza(zzast zzastVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        this.f14069b.zzb(zzastVar);
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zza(zzatb zzatbVar) {
        synchronized (this) {
            Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
            zzczs zzczsVar = this.f14071d;
            zzczsVar.zzdnv = zzatbVar.zzdnv;
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcja)).booleanValue()) {
                zzczsVar.zzdnw = zzatbVar.zzdnw;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zza(zzug zzugVar, zzaso zzasoVar) {
        synchronized (this) {
            Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
            this.f14069b.zza(zzasoVar);
            if (this.f14072e == null) {
                zzcyq zzcyqVar = new zzcyq(null);
                this.f14068a.m3658a();
                this.f14068a.zza(zzugVar, this.f14070c, zzcyqVar, new C2416zn(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zza(zzwv zzwvVar) {
        if (zzwvVar == null) {
            this.f14069b.zza((AdMetadataListener) null);
        } else {
            this.f14069b.zza(new C2418zp(this, zzwvVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zzh(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            zza(iObjectWrapper, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final zzxa zzkb() {
        zzcbb zzcbbVar;
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcrf)).booleanValue() && (zzcbbVar = this.f14072e) != null) {
            return zzcbbVar.zzags();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final zzasf zzpz() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzcbb zzcbbVar = this.f14072e;
        if (zzcbbVar != null) {
            return zzcbbVar.zzpz();
        }
        return null;
    }
}
