package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbge.class */
public final class zzbge implements zzdxg<zzcis<zzdac, zzcjy>> {

    /* renamed from: a */
    private final zzbga f11827a;

    /* renamed from: b */
    private final zzdxp<zzcka> f11828b;

    public zzbge(zzbga zzbgaVar, zzdxp<zzcka> zzdxpVar) {
        this.f11827a = zzbgaVar;
        this.f11828b = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzcis) zzdxm.zza(new zzcks(this.f11828b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
