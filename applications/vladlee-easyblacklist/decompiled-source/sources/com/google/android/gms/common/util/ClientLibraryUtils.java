package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.common.wrappers.Wrappers;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/ClientLibraryUtils.class */
public class ClientLibraryUtils {
    private ClientLibraryUtils() {
    }

    /* renamed from: a */
    private static PackageInfo m5570a(Context context, String str) {
        try {
            return Wrappers.packageManager(context).getPackageInfo(str, 128);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public static int getClientVersion(Context context, String str) {
        Bundle bundle;
        PackageInfo a = m5570a(context, str);
        if (a == null || a.applicationInfo == null || (bundle = a.applicationInfo.metaData) == null) {
            return -1;
        }
        return bundle.getInt("com.google.android.gms.version", -1);
    }

    public static boolean isPackageSide() {
        return false;
    }

    public static boolean zzc(Context context, String str) {
        "com.google.android.gms".equals(str);
        try {
            return (Wrappers.packageManager(context).getApplicationInfo(str, 0).flags & 2097152) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
}
