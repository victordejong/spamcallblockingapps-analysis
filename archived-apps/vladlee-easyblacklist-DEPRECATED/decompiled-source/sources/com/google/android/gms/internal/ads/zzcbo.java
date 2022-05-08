package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbo.class */
public final class zzcbo implements zzdxg<zzcio<zzcbb>> {

    /* renamed from: a */
    private final zzdxp<zzdcr> f12884a;

    /* renamed from: b */
    private final zzdxp<zzdhd> f12885b;

    /* renamed from: c */
    private final zzdxp<zzcma> f12886c;

    /* renamed from: d */
    private final zzdxp<zzcmy> f12887d;

    public zzcbo(zzdxp<zzdcr> zzdxpVar, zzdxp<zzdhd> zzdxpVar2, zzdxp<zzcma> zzdxpVar3, zzdxp<zzcmy> zzdxpVar4) {
        this.f12884a = zzdxpVar;
        this.f12885b = zzdxpVar2;
        this.f12886c = zzdxpVar3;
        this.f12887d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzcio) zzdxm.zza(new zzcna(this.f12884a.get(), this.f12885b.get(), this.f12887d.get(), this.f12886c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
