package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctu.class */
public final class zzctu implements zzdxg<zzcts> {

    /* renamed from: a */
    private final zzdxp<zzdhd> f13884a;

    /* renamed from: b */
    private final zzdxp<Context> f13885b;

    /* renamed from: c */
    private final zzdxp<zzazb> f13886c;

    private zzctu(zzdxp<zzdhd> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<zzazb> zzdxpVar3) {
        this.f13884a = zzdxpVar;
        this.f13885b = zzdxpVar2;
        this.f13886c = zzdxpVar3;
    }

    public static zzctu zzq(zzdxp<zzdhd> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<zzazb> zzdxpVar3) {
        return new zzctu(zzdxpVar, zzdxpVar2, zzdxpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcts(this.f13884a.get(), this.f13885b.get(), this.f13886c.get());
    }
}
