package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblm.class */
public final class zzblm implements zzdxg<zzcio<zzbkk>> {

    /* renamed from: a */
    private final zzdxp<zzdcr> f12095a;

    /* renamed from: b */
    private final zzdxp<zzdhd> f12096b;

    /* renamed from: c */
    private final zzdxp<zzcjk> f12097c;

    /* renamed from: d */
    private final zzdxp<zzcmy> f12098d;

    public zzblm(zzdxp<zzdcr> zzdxpVar, zzdxp<zzdhd> zzdxpVar2, zzdxp<zzcjk> zzdxpVar3, zzdxp<zzcmy> zzdxpVar4) {
        this.f12095a = zzdxpVar;
        this.f12096b = zzdxpVar2;
        this.f12097c = zzdxpVar3;
        this.f12098d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzcio) zzdxm.zza(new zzcna(this.f12095a.get(), this.f12096b.get(), this.f12098d.get(), this.f12097c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
