package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqs.class */
public final class zzcqs implements zzdxg<zzcqr> {

    /* renamed from: a */
    private final zzdxp<Executor> f13747a;

    /* renamed from: b */
    private final zzdxp<zzave> f13748b;

    private zzcqs(zzdxp<Executor> zzdxpVar, zzdxp<zzave> zzdxpVar2) {
        this.f13747a = zzdxpVar;
        this.f13748b = zzdxpVar2;
    }

    public static zzcqs zzam(zzdxp<Executor> zzdxpVar, zzdxp<zzave> zzdxpVar2) {
        return new zzcqs(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcqr(this.f13747a.get(), this.f13748b.get());
    }
}
