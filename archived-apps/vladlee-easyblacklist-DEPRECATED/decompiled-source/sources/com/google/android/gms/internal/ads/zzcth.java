package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcth.class */
public final class zzcth implements zzdxg<zzctf> {

    /* renamed from: a */
    private final zzdxp<Context> f13847a;

    /* renamed from: b */
    private final zzdxp<String> f13848b;

    private zzcth(zzdxp<Context> zzdxpVar, zzdxp<String> zzdxpVar2) {
        this.f13847a = zzdxpVar;
        this.f13848b = zzdxpVar2;
    }

    public static zzcth zzat(zzdxp<Context> zzdxpVar, zzdxp<String> zzdxpVar2) {
        return new zzcth(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzctf(this.f13847a.get(), this.f13848b.get());
    }
}
