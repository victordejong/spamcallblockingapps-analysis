package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwp.class */
public final class zzbwp implements zzdxg<zzbwq> {

    /* renamed from: a */
    private final zzdxp<zzbwi> f12576a;

    private zzbwp(zzdxp<zzbwi> zzdxpVar) {
        this.f12576a = zzdxpVar;
    }

    public static zzbwp zzx(zzdxp<zzbwi> zzdxpVar) {
        return new zzbwp(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbwq(this.f12576a.get());
    }
}
