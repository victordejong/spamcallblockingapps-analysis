package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbkw.class */
public final class zzbkw implements zzdxg<zzbkk> {

    /* renamed from: a */
    private final zzbkn f12067a;

    /* renamed from: b */
    private final zzdxp<C2025la> f12068b;

    public zzbkw(zzbkn zzbknVar, zzdxp<C2025la> zzdxpVar) {
        this.f12067a = zzbknVar;
        this.f12068b = zzdxpVar;
    }

    public static zzbkk zza(zzbkn zzbknVar, Object obj) {
        return (zzbkk) zzdxm.zza((C2025la) obj, "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zza(this.f12067a, this.f12068b.get());
    }
}
