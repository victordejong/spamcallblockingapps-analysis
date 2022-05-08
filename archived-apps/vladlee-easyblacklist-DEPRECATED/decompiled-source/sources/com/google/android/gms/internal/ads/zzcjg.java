package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjg.class */
public final class zzcjg implements zzdxg<zzcix> {

    /* renamed from: a */
    private final zzdxp<zzblg> f13212a;

    /* renamed from: b */
    private final zzdxp<Context> f13213b;

    /* renamed from: c */
    private final zzdxp<Executor> f13214c;

    /* renamed from: d */
    private final zzdxp<zzcbn> f13215d;

    /* renamed from: e */
    private final zzdxp<zzczu> f13216e;

    /* renamed from: f */
    private final zzdxp<zzded<zzczl, zzawt>> f13217f;

    public zzcjg(zzdxp<zzblg> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<Executor> zzdxpVar3, zzdxp<zzcbn> zzdxpVar4, zzdxp<zzczu> zzdxpVar5, zzdxp<zzded<zzczl, zzawt>> zzdxpVar6) {
        this.f13212a = zzdxpVar;
        this.f13213b = zzdxpVar2;
        this.f13214c = zzdxpVar3;
        this.f13215d = zzdxpVar4;
        this.f13216e = zzdxpVar5;
        this.f13217f = zzdxpVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcix(this.f13212a.get(), this.f13213b.get(), this.f13214c.get(), this.f13215d.get(), this.f13216e.get(), this.f13217f.get());
    }
}
