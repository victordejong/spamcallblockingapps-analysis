package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcro.class */
public final class zzcro implements zzdxg<zzczj> {

    /* renamed from: a */
    private final zzdxp<Clock> f13793a;

    public zzcro(zzdxp<Clock> zzdxpVar) {
        this.f13793a = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzczj) zzdxm.zza(new zzczj(this.f13793a.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
