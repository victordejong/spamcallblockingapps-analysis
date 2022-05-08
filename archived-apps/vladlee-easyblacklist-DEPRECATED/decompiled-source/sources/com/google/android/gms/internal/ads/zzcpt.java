package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpt.class */
public final class zzcpt implements zzdxg<zzcpr> {

    /* renamed from: a */
    private final zzdxp<Executor> f13703a;

    /* renamed from: b */
    private final zzdxp<zzcgm> f13704b;

    public zzcpt(zzdxp<Executor> zzdxpVar, zzdxp<zzcgm> zzdxpVar2) {
        this.f13703a = zzdxpVar;
        this.f13704b = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcpr(this.f13703a.get(), this.f13704b.get());
    }
}
