package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqx.class */
public final class zzcqx implements zzdxg<zzcqv> {

    /* renamed from: a */
    private final zzdxp<String> f13758a;

    /* renamed from: b */
    private final zzdxp<String> f13759b;

    /* renamed from: c */
    private final zzdxp<zzbnk> f13760c;

    /* renamed from: d */
    private final zzdxp<zzdak> f13761d;

    /* renamed from: e */
    private final zzdxp<zzczu> f13762e;

    private zzcqx(zzdxp<String> zzdxpVar, zzdxp<String> zzdxpVar2, zzdxp<zzbnk> zzdxpVar3, zzdxp<zzdak> zzdxpVar4, zzdxp<zzczu> zzdxpVar5) {
        this.f13758a = zzdxpVar;
        this.f13759b = zzdxpVar2;
        this.f13760c = zzdxpVar3;
        this.f13761d = zzdxpVar4;
        this.f13762e = zzdxpVar5;
    }

    public static zzcqx zzf(zzdxp<String> zzdxpVar, zzdxp<String> zzdxpVar2, zzdxp<zzbnk> zzdxpVar3, zzdxp<zzdak> zzdxpVar4, zzdxp<zzczu> zzdxpVar5) {
        return new zzcqx(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4, zzdxpVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcqv(this.f13758a.get(), this.f13759b.get(), this.f13760c.get(), this.f13761d.get(), this.f13762e.get());
    }
}
