package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclg.class */
public final class zzclg implements zzdxg<zzclb> {

    /* renamed from: a */
    private final zzdxp<Context> f13292a;

    /* renamed from: b */
    private final zzdxp<zzbvm> f13293b;

    public zzclg(zzdxp<Context> zzdxpVar, zzdxp<zzbvm> zzdxpVar2) {
        this.f13292a = zzdxpVar;
        this.f13293b = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzclb(this.f13292a.get(), this.f13293b.get());
    }
}
