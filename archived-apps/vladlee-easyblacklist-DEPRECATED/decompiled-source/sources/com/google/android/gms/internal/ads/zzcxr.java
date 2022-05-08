package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbob;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxr.class */
public final class zzcxr<RequestComponentT extends zzbob<AdT>, AdT> implements zzcxt<RequestComponentT, AdT> {

    /* renamed from: a */
    private RequestComponentT f14037a;

    @Override // com.google.android.gms.internal.ads.zzcxt
    public final zzdhe<AdT> zza(zzcxs zzcxsVar, zzcxv<RequestComponentT> zzcxvVar) {
        this.f14037a = zzcxvVar.zzc(zzcxsVar).zzadg();
        return this.f14037a.zzadc().zzaha();
    }

    @Override // com.google.android.gms.internal.ads.zzcxt
    public final /* synthetic */ Object zzaog() {
        return this.f14037a;
    }
}
