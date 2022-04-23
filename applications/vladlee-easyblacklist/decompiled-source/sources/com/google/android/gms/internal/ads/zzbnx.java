package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnx.class */
public final class zzbnx implements zzdxg<zzbsu<zzbqx>> {

    /* renamed from: a */
    private final zzbny f12215a;

    /* renamed from: b */
    private final zzdxp<zzbnw> f12216b;

    private zzbnx(zzbny zzbnyVar, zzdxp<zzbnw> zzdxpVar) {
        this.f12215a = zzbnyVar;
        this.f12216b = zzdxpVar;
    }

    public static zzbnx zza(zzbny zzbnyVar, zzdxp<zzbnw> zzdxpVar) {
        return new zzbnx(zzbnyVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12216b.get(), zzazd.zzdwj), "Cannot return null from a non-@Nullable @Provides method");
    }
}
