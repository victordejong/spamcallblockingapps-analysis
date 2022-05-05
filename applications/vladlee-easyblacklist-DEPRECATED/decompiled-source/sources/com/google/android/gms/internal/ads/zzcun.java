package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcun.class */
public final class zzcun implements zzdxg<zzcul> {

    /* renamed from: a */
    private final zzdxp<zzdhd> f13919a;

    /* renamed from: b */
    private final zzdxp<Context> f13920b;

    private zzcun(zzdxp<zzdhd> zzdxpVar, zzdxp<Context> zzdxpVar2) {
        this.f13919a = zzdxpVar;
        this.f13920b = zzdxpVar2;
    }

    public static zzcun zzav(zzdxp<zzdhd> zzdxpVar, zzdxp<Context> zzdxpVar2) {
        return new zzcun(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcul(this.f13919a.get(), this.f13920b.get());
    }
}
