package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbud.class */
public final class zzbud implements zzdxg<zzbsu<zzo>> {

    /* renamed from: a */
    private final zzbtv f12401a;

    /* renamed from: b */
    private final zzdxp<zzbuy> f12402b;

    private zzbud(zzbtv zzbtvVar, zzdxp<zzbuy> zzdxpVar) {
        this.f12401a = zzbtvVar;
        this.f12402b = zzdxpVar;
    }

    public static zzbud zzb(zzbtv zzbtvVar, zzdxp<zzbuy> zzdxpVar) {
        return new zzbud(zzbtvVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12402b.get(), zzazd.zzdwi), "Cannot return null from a non-@Nullable @Provides method");
    }
}
