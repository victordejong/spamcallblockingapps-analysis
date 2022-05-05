package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckp.class */
public final class zzckp implements zzdxg<zzckl> {

    /* renamed from: a */
    private final zzdxp<Context> f13274a;

    /* renamed from: b */
    private final zzdxp<zzbup> f13275b;

    public zzckp(zzdxp<Context> zzdxpVar, zzdxp<zzbup> zzdxpVar2) {
        this.f13274a = zzdxpVar;
        this.f13275b = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzckl(this.f13274a.get(), this.f13275b.get());
    }
}
