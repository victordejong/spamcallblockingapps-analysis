package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbku.class */
public final class zzbku implements zzdxg<zzczk> {

    /* renamed from: a */
    private final zzbkn f12061a;

    public zzbku(zzbkn zzbknVar) {
        this.f12061a = zzbknVar;
    }

    public static zzczk zzc(zzbkn zzbknVar) {
        return (zzczk) zzdxm.zza(zzbknVar.zzagi(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzc(this.f12061a);
    }
}
