package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzboc.class */
public final class zzboc implements zzdxg<zzbqp> {

    /* renamed from: a */
    private final zzdxp<zzbqp> f12220a;

    private zzboc(zzdxp<zzbqp> zzdxpVar) {
        this.f12220a = zzdxpVar;
    }

    public static zzboc zzf(zzdxp<zzbqp> zzdxpVar) {
        return new zzboc(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbqp) zzdxm.zza(this.f12220a.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
