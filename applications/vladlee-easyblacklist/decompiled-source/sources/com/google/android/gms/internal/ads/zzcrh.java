package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrh.class */
public final class zzcrh implements zzdxg<zzcrf> {

    /* renamed from: a */
    private final zzdxp<zzdhd> f13781a;

    /* renamed from: b */
    private final zzdxp<Context> f13782b;

    private zzcrh(zzdxp<zzdhd> zzdxpVar, zzdxp<Context> zzdxpVar2) {
        this.f13781a = zzdxpVar;
        this.f13782b = zzdxpVar2;
    }

    public static zzcrh zzan(zzdxp<zzdhd> zzdxpVar, zzdxp<Context> zzdxpVar2) {
        return new zzcrh(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcrf(this.f13781a.get(), this.f13782b.get());
    }
}
