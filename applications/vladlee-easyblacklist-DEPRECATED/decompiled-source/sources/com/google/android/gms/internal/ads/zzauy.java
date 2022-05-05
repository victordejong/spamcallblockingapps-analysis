package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauy.class */
public final class zzauy implements zzava {
    @Override // com.google.android.gms.internal.ads.zzava
    public final zzdhe<String> zza(String str, PackageInfo packageInfo) {
        return zzdgs.zzaj(str);
    }

    @Override // com.google.android.gms.internal.ads.zzava
    public final zzdhe<AdvertisingIdClient.Info> zzak(Context context) {
        zzazl zzazlVar = new zzazl();
        zzve.zzou();
        if (zzayk.zzbk(context)) {
            zzazd.zzdwe.execute(new RunnableC1845ej(context, zzazlVar));
        }
        return zzazlVar;
    }
}
