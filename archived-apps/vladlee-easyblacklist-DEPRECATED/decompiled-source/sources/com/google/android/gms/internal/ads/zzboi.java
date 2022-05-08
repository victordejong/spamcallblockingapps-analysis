package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzboi.class */
public final class zzboi implements zzdxg<String> {

    /* renamed from: a */
    private final zzbod f12234a;

    /* renamed from: b */
    private final zzdxp<zzbnk> f12235b;

    private zzboi(zzbod zzbodVar, zzdxp<zzbnk> zzdxpVar) {
        this.f12234a = zzbodVar;
        this.f12235b = zzdxpVar;
    }

    public static zzboi zzb(zzbod zzbodVar, zzdxp<zzbnk> zzdxpVar) {
        return new zzboi(zzbodVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (String) zzdxm.zza(this.f12235b.get().zzuy(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
