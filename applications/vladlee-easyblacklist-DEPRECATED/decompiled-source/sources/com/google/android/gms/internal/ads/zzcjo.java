package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjo.class */
public final class zzcjo implements zzdxg<zzcjk> {

    /* renamed from: a */
    private final zzdxp<Context> f13229a;

    /* renamed from: b */
    private final zzdxp<zzblg> f13230b;

    public zzcjo(zzdxp<Context> zzdxpVar, zzdxp<zzblg> zzdxpVar2) {
        this.f13229a = zzdxpVar;
        this.f13230b = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcjk(this.f13229a.get(), this.f13230b.get());
    }
}
