package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvf.class */
public final class zzcvf implements zzdxg<zzcvd> {

    /* renamed from: a */
    private final zzdxp<zzsa> f13947a;

    /* renamed from: b */
    private final zzdxp<zzdhd> f13948b;

    /* renamed from: c */
    private final zzdxp<Context> f13949c;

    public zzcvf(zzdxp<zzsa> zzdxpVar, zzdxp<zzdhd> zzdxpVar2, zzdxp<Context> zzdxpVar3) {
        this.f13947a = zzdxpVar;
        this.f13948b = zzdxpVar2;
        this.f13949c = zzdxpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcvd(this.f13947a.get(), this.f13948b.get(), this.f13949c.get());
    }
}
