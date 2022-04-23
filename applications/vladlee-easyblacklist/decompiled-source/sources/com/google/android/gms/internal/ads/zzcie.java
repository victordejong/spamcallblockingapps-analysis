package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcie.class */
public final class zzcie implements zzdxg<zzcib> {

    /* renamed from: a */
    private final zzdxp<zzchz> f13178a;

    private zzcie(zzdxp<zzchz> zzdxpVar) {
        this.f13178a = zzdxpVar;
    }

    public static zzcie zzae(zzdxp<zzchz> zzdxpVar) {
        return new zzcie(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcib(this.f13178a.get());
    }
}
