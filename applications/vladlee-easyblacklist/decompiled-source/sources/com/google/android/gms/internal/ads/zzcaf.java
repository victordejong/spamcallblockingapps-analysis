package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcaf.class */
public final class zzcaf implements zzdxg<zzcad> {

    /* renamed from: a */
    private final zzdxp<Context> f12807a;

    /* renamed from: b */
    private final zzdxp<zzbws> f12808b;

    /* renamed from: c */
    private final zzdxp<zzbxj> f12809c;

    /* renamed from: d */
    private final zzdxp<zzbwk> f12810d;

    private zzcaf(zzdxp<Context> zzdxpVar, zzdxp<zzbws> zzdxpVar2, zzdxp<zzbxj> zzdxpVar3, zzdxp<zzbwk> zzdxpVar4) {
        this.f12807a = zzdxpVar;
        this.f12808b = zzdxpVar2;
        this.f12809c = zzdxpVar3;
        this.f12810d = zzdxpVar4;
    }

    public static zzcaf zzb(zzdxp<Context> zzdxpVar, zzdxp<zzbws> zzdxpVar2, zzdxp<zzbxj> zzdxpVar3, zzdxp<zzbwk> zzdxpVar4) {
        return new zzcaf(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcad(this.f12807a.get(), this.f12808b.get(), this.f12809c.get(), this.f12810d.get());
    }
}
