package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnp.class */
public final class zzcnp<AdT> implements zzdxg<zzcnl<AdT>> {

    /* renamed from: a */
    private final zzdxp<zzdcr> f13417a;

    /* renamed from: b */
    private final zzdxp<zzdhd> f13418b;

    /* renamed from: c */
    private final zzdxp<zzaak> f13419c;

    /* renamed from: d */
    private final zzdxp<zzcnq<AdT>> f13420d;

    public zzcnp(zzdxp<zzdcr> zzdxpVar, zzdxp<zzdhd> zzdxpVar2, zzdxp<zzaak> zzdxpVar3, zzdxp<zzcnq<AdT>> zzdxpVar4) {
        this.f13417a = zzdxpVar;
        this.f13418b = zzdxpVar2;
        this.f13419c = zzdxpVar3;
        this.f13420d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcnl(this.f13417a.get(), this.f13418b.get(), this.f13419c.get(), this.f13420d.get());
    }
}
