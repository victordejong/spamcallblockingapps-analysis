package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbin.class */
public final class zzbin implements zzdxg<zzbio> {

    /* renamed from: a */
    private final zzdxp<zzavu> f11920a;

    private zzbin(zzdxp<zzavu> zzdxpVar) {
        this.f11920a = zzdxpVar;
    }

    public static zzbin zza(zzdxp<zzavu> zzdxpVar) {
        return new zzbin(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbio(this.f11920a.get());
    }
}
