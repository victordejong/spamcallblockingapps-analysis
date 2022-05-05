package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrv.class */
public final class zzcrv implements zzdxg<zzcrr> {

    /* renamed from: a */
    private final zzdxp<Context> f13799a;

    /* renamed from: b */
    private final zzdxp<zzdhd> f13800b;

    private zzcrv(zzdxp<Context> zzdxpVar, zzdxp<zzdhd> zzdxpVar2) {
        this.f13799a = zzdxpVar;
        this.f13800b = zzdxpVar2;
    }

    public static zzcrv zzao(zzdxp<Context> zzdxpVar, zzdxp<zzdhd> zzdxpVar2) {
        return new zzcrv(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcrr(this.f13799a.get(), this.f13800b.get());
    }
}
