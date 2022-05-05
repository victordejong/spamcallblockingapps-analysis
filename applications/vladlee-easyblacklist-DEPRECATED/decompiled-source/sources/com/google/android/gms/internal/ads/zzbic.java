package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbic.class */
public final class zzbic implements zzdxg<zzayy> {

    /* renamed from: a */
    private final zzdxp<String> f11911a;

    public zzbic(zzdxp<String> zzdxpVar) {
        this.f11911a = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzayy) zzdxm.zza(new zzayy(this.f11911a.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
