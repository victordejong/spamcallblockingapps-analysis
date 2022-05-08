package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhz.class */
public final class zzbhz implements zzdxg<zzaxk> {

    /* renamed from: a */
    private final zzdxp<Context> f11908a;

    public zzbhz(zzdxp<Context> zzdxpVar) {
        this.f11908a = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzaxk) zzdxm.zza(new zzaxk(this.f11908a.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
