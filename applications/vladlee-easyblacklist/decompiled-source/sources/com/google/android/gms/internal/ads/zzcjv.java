package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjv.class */
public final class zzcjv implements zzdxg<zzcjr> {

    /* renamed from: a */
    private final zzdxp<zzblg> f13240a;

    /* renamed from: b */
    private final zzdxp<zzcix> f13241b;

    /* renamed from: c */
    private final zzdxp<zzbou> f13242c;

    /* renamed from: d */
    private final zzdxp<ScheduledExecutorService> f13243d;

    /* renamed from: e */
    private final zzdxp<zzdhd> f13244e;

    public zzcjv(zzdxp<zzblg> zzdxpVar, zzdxp<zzcix> zzdxpVar2, zzdxp<zzbou> zzdxpVar3, zzdxp<ScheduledExecutorService> zzdxpVar4, zzdxp<zzdhd> zzdxpVar5) {
        this.f13240a = zzdxpVar;
        this.f13241b = zzdxpVar2;
        this.f13242c = zzdxpVar3;
        this.f13243d = zzdxpVar4;
        this.f13244e = zzdxpVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcjr(this.f13240a.get(), this.f13241b.get(), this.f13242c.get(), this.f13243d.get(), this.f13244e.get());
    }
}
