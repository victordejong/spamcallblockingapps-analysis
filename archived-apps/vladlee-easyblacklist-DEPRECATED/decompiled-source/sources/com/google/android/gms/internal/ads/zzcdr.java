package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdr.class */
public final class zzcdr implements zzdxg<zzcds> {

    /* renamed from: a */
    private final zzdxp<zzcdv> f12986a;

    private zzcdr(zzdxp<zzcdv> zzdxpVar) {
        this.f12986a = zzdxpVar;
    }

    public static zzcdr zzz(zzdxp<zzcdv> zzdxpVar) {
        return new zzcdr(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcds(this.f12986a.get());
    }
}
