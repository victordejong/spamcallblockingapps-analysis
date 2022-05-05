package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwb.class */
public final class zzbwb implements zzdxg<zzcaj> {

    /* renamed from: a */
    private final zzbvy f12525a;

    public zzbwb(zzbvy zzbvyVar) {
        this.f12525a = zzbvyVar;
    }

    public static zzcaj zza(zzbvy zzbvyVar) {
        return (zzcaj) zzdxm.zza(zzbvyVar.zzait(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zza(this.f12525a);
    }
}
