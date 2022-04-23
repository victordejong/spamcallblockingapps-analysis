package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqo.class */
public final class zzcqo implements zzdxg<zzcqm> {

    /* renamed from: a */
    private final zzdxp<zzdhd> f13743a;

    /* renamed from: b */
    private final zzdxp<zzczu> f13744b;

    private zzcqo(zzdxp<zzdhd> zzdxpVar, zzdxp<zzczu> zzdxpVar2) {
        this.f13743a = zzdxpVar;
        this.f13744b = zzdxpVar2;
    }

    public static zzcqo zzal(zzdxp<zzdhd> zzdxpVar, zzdxp<zzczu> zzdxpVar2) {
        return new zzcqo(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcqm(this.f13743a.get(), this.f13744b.get());
    }
}
