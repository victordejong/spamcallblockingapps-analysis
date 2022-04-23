package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblc.class */
public final class zzblc implements zzdxg<zzats> {

    /* renamed from: a */
    private final zzbkn f12080a;

    /* renamed from: b */
    private final zzdxp<Context> f12081b;

    /* renamed from: c */
    private final zzdxp<zzczu> f12082c;

    public zzblc(zzbkn zzbknVar, zzdxp<Context> zzdxpVar, zzdxp<zzczu> zzdxpVar2) {
        this.f12080a = zzbknVar;
        this.f12081b = zzdxpVar;
        this.f12082c = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzats) zzdxm.zza(new zzats(this.f12081b.get(), this.f12082c.get().zzgmm), "Cannot return null from a non-@Nullable @Provides method");
    }
}
