package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrl.class */
public final class zzcrl implements zzdxg<zzcrj> {

    /* renamed from: a */
    private final zzdxp<zzdhd> f13789a;

    /* renamed from: b */
    private final zzdxp<Context> f13790b;

    public zzcrl(zzdxp<zzdhd> zzdxpVar, zzdxp<Context> zzdxpVar2) {
        this.f13789a = zzdxpVar;
        this.f13790b = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcrj(this.f13789a.get(), this.f13790b.get());
    }
}
