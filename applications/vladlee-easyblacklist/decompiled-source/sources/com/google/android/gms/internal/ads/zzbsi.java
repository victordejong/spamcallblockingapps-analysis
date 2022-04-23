package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsi.class */
public final class zzbsi implements zzdxg<zzclp> {

    /* renamed from: a */
    private final zzbrm f12362a;

    /* renamed from: b */
    private final zzdxp<Clock> f12363b;

    private zzbsi(zzbrm zzbrmVar, zzdxp<Clock> zzdxpVar) {
        this.f12362a = zzbrmVar;
        this.f12363b = zzdxpVar;
    }

    public static zzbsi zzb(zzbrm zzbrmVar, zzdxp<Clock> zzdxpVar) {
        return new zzbsi(zzbrmVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzclp) zzdxm.zza(this.f12362a.zza(this.f12363b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
