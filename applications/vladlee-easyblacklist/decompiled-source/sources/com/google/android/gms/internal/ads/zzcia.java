package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcia.class */
public final class zzcia implements zzdxg<zzchx> {

    /* renamed from: a */
    private final zzdxp<zzcid> f13168a;

    private zzcia(zzdxp<zzcid> zzdxpVar) {
        this.f13168a = zzdxpVar;
    }

    public static zzcia zzad(zzdxp<zzcid> zzdxpVar) {
        return new zzcia(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzchx(this.f13168a.get());
    }
}
