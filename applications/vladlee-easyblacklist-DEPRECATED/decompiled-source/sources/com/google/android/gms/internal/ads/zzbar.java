package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbar.class */
public final class zzbar extends zzbaj {
    @Override // com.google.android.gms.internal.ads.zzbaj
    public final zzbag zza(Context context, zzbaz zzbazVar, int i, boolean z, zzaae zzaaeVar, zzbaw zzbawVar) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (!(applicationInfo == null || applicationInfo.targetSdkVersion >= 11)) {
            return null;
        }
        zzbay zzbayVar = new zzbay(context, zzbazVar.zzyr(), zzbazVar.zzyp(), zzaaeVar, zzbazVar.zzym());
        boolean z2 = false;
        if (Build.VERSION.SDK_INT >= 16) {
            z2 = false;
            if (i == 2) {
                z2 = true;
            }
        }
        return z2 ? new zzbbc(context, zzbayVar, zzbazVar, z, m4176a(zzbazVar), zzbawVar) : new zzazx(context, z, m4176a(zzbazVar), zzbawVar, new zzbay(context, zzbazVar.zzyr(), zzbazVar.zzyp(), zzaaeVar, zzbazVar.zzym()));
    }
}
