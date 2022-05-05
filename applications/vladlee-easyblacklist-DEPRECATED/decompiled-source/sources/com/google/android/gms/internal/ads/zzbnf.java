package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnf.class */
public final class zzbnf implements zzdxg<zzbsu<zzbqb>> {

    /* renamed from: a */
    private final zzbnb f12173a;

    /* renamed from: b */
    private final zzdxp<zzbnk> f12174b;

    private zzbnf(zzbnb zzbnbVar, zzdxp<zzbnk> zzdxpVar) {
        this.f12173a = zzbnbVar;
        this.f12174b = zzdxpVar;
    }

    public static zzbnf zzc(zzbnb zzbnbVar, zzdxp<zzbnk> zzdxpVar) {
        return new zzbnf(zzbnbVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12174b.get(), zzazd.zzdwj), "Cannot return null from a non-@Nullable @Provides method");
    }
}
