package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdar.class */
public final class zzdar implements zzdxg<zzdam> {

    /* renamed from: a */
    private final zzdxp<Context> f14122a;

    /* renamed from: b */
    private final zzdxp<zzazb> f14123b;

    /* renamed from: c */
    private final zzdxp<zzave> f14124c;

    public zzdar(zzdxp<Context> zzdxpVar, zzdxp<zzazb> zzdxpVar2, zzdxp<zzave> zzdxpVar3) {
        this.f14122a = zzdxpVar;
        this.f14123b = zzdxpVar2;
        this.f14124c = zzdxpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzdam(this.f14122a.get(), this.f14123b.get(), this.f14124c.get());
    }
}
