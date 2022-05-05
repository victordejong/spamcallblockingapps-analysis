package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcw.class */
public final class zzdcw implements zzdxg<zzdcr> {

    /* renamed from: a */
    private final zzdxp<zzdhd> f14193a;

    /* renamed from: b */
    private final zzdxp<ScheduledExecutorService> f14194b;

    /* renamed from: c */
    private final zzdxp<aaj> f14195c;

    private zzdcw(zzdxp<zzdhd> zzdxpVar, zzdxp<ScheduledExecutorService> zzdxpVar2, zzdxp<aaj> zzdxpVar3) {
        this.f14193a = zzdxpVar;
        this.f14194b = zzdxpVar2;
        this.f14195c = zzdxpVar3;
    }

    public static zzdcw zzr(zzdxp<zzdhd> zzdxpVar, zzdxp<ScheduledExecutorService> zzdxpVar2, zzdxp<aaj> zzdxpVar3) {
        return new zzdcw(zzdxpVar, zzdxpVar2, zzdxpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzdcr(this.f14193a.get(), this.f14194b.get(), this.f14195c.get());
    }
}
