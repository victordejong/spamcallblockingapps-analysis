package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrz.class */
public final class zzcrz implements zzdxg<zzcrx> {

    /* renamed from: a */
    private final zzdxp<Context> f13805a;

    /* renamed from: b */
    private final zzdxp<zzdhd> f13806b;

    private zzcrz(zzdxp<Context> zzdxpVar, zzdxp<zzdhd> zzdxpVar2) {
        this.f13805a = zzdxpVar;
        this.f13806b = zzdxpVar2;
    }

    public static zzcrz zzap(zzdxp<Context> zzdxpVar, zzdxp<zzdhd> zzdxpVar2) {
        return new zzcrz(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcrx(this.f13805a.get(), this.f13806b.get());
    }
}
