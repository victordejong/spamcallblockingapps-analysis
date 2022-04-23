package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsd.class */
public final class zzcsd implements zzdxg<zzcsb> {

    /* renamed from: a */
    private final zzdxp<zzdhd> f13809a;

    private zzcsd(zzdxp<zzdhd> zzdxpVar) {
        this.f13809a = zzdxpVar;
    }

    public static zzcsd zzaj(zzdxp<zzdhd> zzdxpVar) {
        return new zzcsd(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcsb(this.f13809a.get());
    }
}
