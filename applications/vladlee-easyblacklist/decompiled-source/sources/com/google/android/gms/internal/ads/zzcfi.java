package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.wrappers.Wrappers;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfi.class */
public final class zzcfi {
    public static PackageInfo zza(Context context, ApplicationInfo applicationInfo) {
        PackageInfo packageInfo;
        try {
            packageInfo = Wrappers.packageManager(context).getPackageInfo(applicationInfo.packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        return packageInfo;
    }
}
