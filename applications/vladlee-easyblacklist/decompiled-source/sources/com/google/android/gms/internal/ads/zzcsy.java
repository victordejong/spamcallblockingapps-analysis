package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsy.class */
public final class zzcsy implements zzdxg<zzcsz> {

    /* renamed from: a */
    private final zzdxp<ApplicationInfo> f13835a;

    /* renamed from: b */
    private final zzdxp<PackageInfo> f13836b;

    private zzcsy(zzdxp<ApplicationInfo> zzdxpVar, zzdxp<PackageInfo> zzdxpVar2) {
        this.f13835a = zzdxpVar;
        this.f13836b = zzdxpVar2;
    }

    public static zzcsy zzar(zzdxp<ApplicationInfo> zzdxpVar, zzdxp<PackageInfo> zzdxpVar2) {
        return new zzcsy(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcsz(this.f13835a.get(), this.f13836b.get());
    }
}
