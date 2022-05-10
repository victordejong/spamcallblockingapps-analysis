package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfn.class */
public final class zzdfn implements zzeoy<zzdfk> {

    /* renamed from: a */
    public final zzeph<ApplicationInfo> f27243a;

    /* renamed from: b */
    public final zzeph<PackageInfo> f27244b;

    public zzdfn(zzeph<ApplicationInfo> zzephVar, zzeph<PackageInfo> zzephVar2) {
        this.f27243a = zzephVar;
        this.f27244b = zzephVar2;
    }

    /* renamed from: a */
    public static zzdfk m13623a(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        return new zzdfk(applicationInfo, packageInfo);
    }

    /* renamed from: a */
    public static zzdfn m13622a(zzeph<ApplicationInfo> zzephVar, zzeph<PackageInfo> zzephVar2) {
        return new zzdfn(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m13623a(this.f27243a.get(), this.f27244b.get());
    }
}
