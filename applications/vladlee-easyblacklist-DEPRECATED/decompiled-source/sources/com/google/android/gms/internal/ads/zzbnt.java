package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnt.class */
public final class zzbnt implements zzdxg<zzbsu<zzo>> {

    /* renamed from: a */
    private final zzbnu f12203a;

    /* renamed from: b */
    private final zzdxp<zzbmx> f12204b;

    private zzbnt(zzbnu zzbnuVar, zzdxp<zzbmx> zzdxpVar) {
        this.f12203a = zzbnuVar;
        this.f12204b = zzdxpVar;
    }

    public static zzbnt zza(zzbnu zzbnuVar, zzdxp<zzbmx> zzdxpVar) {
        return new zzbnt(zzbnuVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12204b.get(), zzazd.zzdwj), "Cannot return null from a non-@Nullable @Provides method");
    }
}
