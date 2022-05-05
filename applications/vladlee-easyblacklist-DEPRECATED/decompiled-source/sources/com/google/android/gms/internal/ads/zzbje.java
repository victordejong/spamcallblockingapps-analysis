package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbje.class */
public final class zzbje implements zzdxg<zzbjb> {

    /* renamed from: a */
    private final zzdxp<Context> f11964a;

    /* renamed from: b */
    private final zzdxp<zzpn> f11965b;

    private zzbje(zzdxp<Context> zzdxpVar, zzdxp<zzpn> zzdxpVar2) {
        this.f11964a = zzdxpVar;
        this.f11965b = zzdxpVar2;
    }

    public static zzbje zza(zzdxp<Context> zzdxpVar, zzdxp<zzpn> zzdxpVar2) {
        return new zzbje(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbjb(this.f11964a.get(), this.f11965b.get());
    }
}
