package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxs.class */
public final class zzbxs implements zzdxg<zzbxq> {

    /* renamed from: a */
    private final zzdxp<zzcaj> f12678a;

    /* renamed from: b */
    private final zzdxp<Clock> f12679b;

    public zzbxs(zzdxp<zzcaj> zzdxpVar, zzdxp<Clock> zzdxpVar2) {
        this.f12678a = zzdxpVar;
        this.f12679b = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbxq(this.f12678a.get(), this.f12679b.get());
    }
}
