package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbna.class */
public final class zzbna implements zzdxg<zzbmx> {

    /* renamed from: a */
    private final zzdxp<zzbpm> f12168a;

    private zzbna(zzdxp<zzbpm> zzdxpVar) {
        this.f12168a = zzdxpVar;
    }

    public static zzbna zze(zzdxp<zzbpm> zzdxpVar) {
        return new zzbna(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbmx(this.f12168a.get());
    }
}
