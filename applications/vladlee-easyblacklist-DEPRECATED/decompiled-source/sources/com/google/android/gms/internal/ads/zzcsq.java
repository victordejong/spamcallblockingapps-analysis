package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsq.class */
public final class zzcsq implements zzdxg<zzcsn> {

    /* renamed from: a */
    private final zzdxp<zzdhd> f13821a;

    /* renamed from: b */
    private final zzdxp<zzczu> f13822b;

    /* renamed from: c */
    private final zzdxp<PackageInfo> f13823c;

    /* renamed from: d */
    private final zzdxp<zzavu> f13824d;

    public zzcsq(zzdxp<zzdhd> zzdxpVar, zzdxp<zzczu> zzdxpVar2, zzdxp<PackageInfo> zzdxpVar3, zzdxp<zzavu> zzdxpVar4) {
        this.f13821a = zzdxpVar;
        this.f13822b = zzdxpVar2;
        this.f13823c = zzdxpVar3;
        this.f13824d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcsn(this.f13821a.get(), this.f13822b.get(), this.f13823c.get(), this.f13824d.get());
    }
}
