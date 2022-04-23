package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnj.class */
public final class zzbnj implements zzdxg<zzbnk> {

    /* renamed from: a */
    private final zzdxp<Clock> f12180a;

    /* renamed from: b */
    private final zzdxp<zzavd> f12181b;

    private zzbnj(zzdxp<Clock> zzdxpVar, zzdxp<zzavd> zzdxpVar2) {
        this.f12180a = zzdxpVar;
        this.f12181b = zzdxpVar2;
    }

    public static zzbnj zzb(zzdxp<Clock> zzdxpVar, zzdxp<zzavd> zzdxpVar2) {
        return new zzbnj(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbnk(this.f12180a.get(), this.f12181b.get());
    }
}
