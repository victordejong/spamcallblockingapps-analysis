package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqf.class */
public final class zzcqf implements zzdxg<zzcqa> {

    /* renamed from: a */
    private final zzdxp<zzdhe<String>> f13729a;

    /* renamed from: b */
    private final zzdxp<Executor> f13730b;

    private zzcqf(zzdxp<zzdhe<String>> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f13729a = zzdxpVar;
        this.f13730b = zzdxpVar2;
    }

    public static zzcqf zzak(zzdxp<zzdhe<String>> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzcqf(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcqa(this.f13729a.get(), this.f13730b.get());
    }
}
