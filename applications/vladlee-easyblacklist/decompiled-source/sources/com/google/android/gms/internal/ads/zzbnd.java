package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnd.class */
public final class zzbnd implements zzdxg<zzbsu<zzbov>> {

    /* renamed from: a */
    private final zzbnb f12169a;

    /* renamed from: b */
    private final zzdxp<zzbnk> f12170b;

    private zzbnd(zzbnb zzbnbVar, zzdxp<zzbnk> zzdxpVar) {
        this.f12169a = zzbnbVar;
        this.f12170b = zzdxpVar;
    }

    public static zzbnd zza(zzbnb zzbnbVar, zzdxp<zzbnk> zzdxpVar) {
        return new zzbnd(zzbnbVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12170b.get(), zzazd.zzdwj), "Cannot return null from a non-@Nullable @Provides method");
    }
}
