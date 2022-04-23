package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcoc.class */
public final class zzcoc implements zzdxg<zzcnz> {

    /* renamed from: a */
    private final zzdxp<zzcka> f13435a;

    private zzcoc(zzdxp<zzcka> zzdxpVar) {
        this.f13435a = zzdxpVar;
    }

    public static zzcoc zzag(zzdxp<zzcka> zzdxpVar) {
        return new zzcoc(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcnz(this.f13435a.get());
    }
}
