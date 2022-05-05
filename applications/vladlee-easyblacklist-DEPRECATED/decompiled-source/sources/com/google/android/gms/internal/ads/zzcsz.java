package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsz.class */
public final class zzcsz implements zzcty<Bundle>, zzcub<zzcty<Bundle>> {

    /* renamed from: a */
    private final ApplicationInfo f13837a;

    /* renamed from: b */
    private final PackageInfo f13838b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcsz(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        this.f13837a = applicationInfo;
        this.f13838b = packageInfo;
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcty<Bundle>> zzanc() {
        return zzdgs.zzaj(this);
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        String str = this.f13837a.packageName;
        PackageInfo packageInfo = this.f13838b;
        Integer valueOf = packageInfo == null ? null : Integer.valueOf(packageInfo.versionCode);
        bundle2.putString("pn", str);
        if (valueOf != null) {
            bundle2.putInt("vc", valueOf.intValue());
        }
    }
}
