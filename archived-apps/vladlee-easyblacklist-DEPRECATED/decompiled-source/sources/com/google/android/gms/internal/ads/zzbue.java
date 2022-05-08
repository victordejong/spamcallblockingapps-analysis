package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbue.class */
public final class zzbue implements zzdxg<zzbsu<zzbqb>> {

    /* renamed from: a */
    private final zzbtv f12403a;

    /* renamed from: b */
    private final zzdxp<zzbuy> f12404b;

    private zzbue(zzbtv zzbtvVar, zzdxp<zzbuy> zzdxpVar) {
        this.f12403a = zzbtvVar;
        this.f12404b = zzdxpVar;
    }

    public static zzbue zzc(zzbtv zzbtvVar, zzdxp<zzbuy> zzdxpVar) {
        return new zzbue(zzbtvVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12404b.get(), zzazd.zzdwi), "Cannot return null from a non-@Nullable @Provides method");
    }
}
