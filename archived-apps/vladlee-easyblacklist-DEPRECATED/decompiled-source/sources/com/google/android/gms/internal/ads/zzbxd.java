package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxd.class */
public final class zzbxd implements zzdxg<zzats> {

    /* renamed from: a */
    private final zzbxe f12622a;

    /* renamed from: b */
    private final zzdxp<Context> f12623b;

    /* renamed from: c */
    private final zzdxp<zzczu> f12624c;

    private zzbxd(zzbxe zzbxeVar, zzdxp<Context> zzdxpVar, zzdxp<zzczu> zzdxpVar2) {
        this.f12622a = zzbxeVar;
        this.f12623b = zzdxpVar;
        this.f12624c = zzdxpVar2;
    }

    public static zzbxd zza(zzbxe zzbxeVar, zzdxp<Context> zzdxpVar, zzdxp<zzczu> zzdxpVar2) {
        return new zzbxd(zzbxeVar, zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzats) zzdxm.zza(new zzats(this.f12623b.get(), this.f12624c.get().zzgmm), "Cannot return null from a non-@Nullable @Provides method");
    }
}
