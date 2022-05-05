package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbuf.class */
public final class zzbuf implements zzdxg<zzats> {

    /* renamed from: a */
    private final zzbtv f12405a;

    /* renamed from: b */
    private final zzdxp<Context> f12406b;

    /* renamed from: c */
    private final zzdxp<zzczu> f12407c;

    private zzbuf(zzbtv zzbtvVar, zzdxp<Context> zzdxpVar, zzdxp<zzczu> zzdxpVar2) {
        this.f12405a = zzbtvVar;
        this.f12406b = zzdxpVar;
        this.f12407c = zzdxpVar2;
    }

    public static zzbuf zza(zzbtv zzbtvVar, zzdxp<Context> zzdxpVar, zzdxp<zzczu> zzdxpVar2) {
        return new zzbuf(zzbtvVar, zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzats) zzdxm.zza(new zzats(this.f12406b.get(), this.f12407c.get().zzgmm), "Cannot return null from a non-@Nullable @Provides method");
    }
}
