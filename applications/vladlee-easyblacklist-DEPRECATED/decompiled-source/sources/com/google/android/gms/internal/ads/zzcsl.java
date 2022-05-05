package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsl.class */
public final class zzcsl implements zzdxg<zzcsj> {

    /* renamed from: a */
    private final zzdxp<zzdhd> f13815a;

    /* renamed from: b */
    private final zzdxp<zzczj> f13816b;

    private zzcsl(zzdxp<zzdhd> zzdxpVar, zzdxp<zzczj> zzdxpVar2) {
        this.f13815a = zzdxpVar;
        this.f13816b = zzdxpVar2;
    }

    public static zzcsl zzaq(zzdxp<zzdhd> zzdxpVar, zzdxp<zzczj> zzdxpVar2) {
        return new zzcsl(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcsj(this.f13815a.get(), this.f13816b.get());
    }
}
