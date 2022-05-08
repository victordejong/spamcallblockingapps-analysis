package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccf.class */
public final class zzccf implements zzdxg<zzccg> {

    /* renamed from: a */
    private final zzdxp<zzbdi> f12926a;

    private zzccf(zzdxp<zzbdi> zzdxpVar) {
        this.f12926a = zzdxpVar;
    }

    public static zzccf zzy(zzdxp<zzbdi> zzdxpVar) {
        return new zzccf(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzccg(this.f12926a.get());
    }
}
