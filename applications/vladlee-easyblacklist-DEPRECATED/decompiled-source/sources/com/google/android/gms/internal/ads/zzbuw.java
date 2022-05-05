package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbuw.class */
public final class zzbuw implements zzdxg<zzcio<zzbtu>> {

    /* renamed from: a */
    private final zzdxp<zzdcr> f12425a;

    /* renamed from: b */
    private final zzdxp<zzdhd> f12426b;

    /* renamed from: c */
    private final zzdxp<zzckl> f12427c;

    /* renamed from: d */
    private final zzdxp<zzcmy> f12428d;

    public zzbuw(zzdxp<zzdcr> zzdxpVar, zzdxp<zzdhd> zzdxpVar2, zzdxp<zzckl> zzdxpVar3, zzdxp<zzcmy> zzdxpVar4) {
        this.f12425a = zzdxpVar;
        this.f12426b = zzdxpVar2;
        this.f12427c = zzdxpVar3;
        this.f12428d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzcio) zzdxm.zza(new zzcna(this.f12425a.get(), this.f12426b.get(), this.f12428d.get(), this.f12427c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
