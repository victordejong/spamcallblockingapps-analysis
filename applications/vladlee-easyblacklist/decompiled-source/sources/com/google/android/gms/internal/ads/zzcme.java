package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcme.class */
public final class zzcme implements zzdxg<zzcma> {

    /* renamed from: a */
    private final zzdxp<Context> f13349a;

    /* renamed from: b */
    private final zzdxp<zzcbi> f13350b;

    public zzcme(zzdxp<Context> zzdxpVar, zzdxp<zzcbi> zzdxpVar2) {
        this.f13349a = zzdxpVar;
        this.f13350b = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcma(this.f13349a.get(), this.f13350b.get());
    }
}
