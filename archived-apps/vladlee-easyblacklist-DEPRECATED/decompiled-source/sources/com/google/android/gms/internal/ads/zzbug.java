package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbug.class */
public final class zzbug implements zzdxg<zzbsu<zzafx>> {

    /* renamed from: a */
    private final zzbtv f12408a;

    /* renamed from: b */
    private final zzdxp<zzcaz> f12409b;

    public zzbug(zzbtv zzbtvVar, zzdxp<zzcaz> zzdxpVar) {
        this.f12408a = zzbtvVar;
        this.f12409b = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12409b.get(), zzazd.zzdwj), "Cannot return null from a non-@Nullable @Provides method");
    }
}
