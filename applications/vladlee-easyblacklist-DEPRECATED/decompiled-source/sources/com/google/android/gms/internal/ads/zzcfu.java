package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfu.class */
public final class zzcfu implements zzdxg<PackageInfo> {

    /* renamed from: a */
    private final zzdxp<Context> f13097a;

    /* renamed from: b */
    private final zzdxp<ApplicationInfo> f13098b;

    private zzcfu(zzdxp<Context> zzdxpVar, zzdxp<ApplicationInfo> zzdxpVar2) {
        this.f13097a = zzdxpVar;
        this.f13098b = zzdxpVar2;
    }

    public static zzcfu zzae(zzdxp<Context> zzdxpVar, zzdxp<ApplicationInfo> zzdxpVar2) {
        return new zzcfu(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzcfi.zza(this.f13097a.get(), this.f13098b.get());
    }
}
