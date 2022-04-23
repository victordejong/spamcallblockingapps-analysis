package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctq.class */
public final class zzctq implements zzdxg<zzcto> {

    /* renamed from: a */
    private final zzdxp<zzatv> f13871a;

    /* renamed from: b */
    private final zzdxp<zzdhd> f13872b;

    /* renamed from: c */
    private final zzdxp<Context> f13873c;

    private zzctq(zzdxp<zzatv> zzdxpVar, zzdxp<zzdhd> zzdxpVar2, zzdxp<Context> zzdxpVar3) {
        this.f13871a = zzdxpVar;
        this.f13872b = zzdxpVar2;
        this.f13873c = zzdxpVar3;
    }

    public static zzctq zzp(zzdxp<zzatv> zzdxpVar, zzdxp<zzdhd> zzdxpVar2, zzdxp<Context> zzdxpVar3) {
        return new zzctq(zzdxpVar, zzdxpVar2, zzdxpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcto(this.f13871a.get(), this.f13872b.get(), this.f13873c.get());
    }
}
