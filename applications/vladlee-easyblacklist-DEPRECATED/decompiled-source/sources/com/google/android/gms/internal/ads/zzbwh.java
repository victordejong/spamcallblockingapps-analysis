package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwh.class */
public final class zzbwh implements zzdxg<zzbwi> {

    /* renamed from: a */
    private final zzdxp<zzbws> f12538a;

    private zzbwh(zzdxp<zzbws> zzdxpVar) {
        this.f12538a = zzdxpVar;
    }

    public static zzbwh zzw(zzdxp<zzbws> zzdxpVar) {
        return new zzbwh(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbwi(this.f12538a.get());
    }
}
