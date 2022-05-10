package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.wrappers.Wrappers;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/ClientLibraryUtils.class */
public class ClientLibraryUtils {
    @KeepForSdk
    /* renamed from: a */
    public static int m17106a(Context context, String str) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        PackageInfo c = m17104c(context, str);
        if (c == null || (applicationInfo = c.applicationInfo) == null || (bundle = applicationInfo.metaData) == null) {
            return -1;
        }
        return bundle.getInt("com.google.android.gms.version", -1);
    }

    @KeepForSdk
    /* renamed from: a */
    public static boolean m17107a() {
        return false;
    }

    /* renamed from: b */
    public static boolean m17105b(Context context, String str) {
        "com.google.android.gms".equals(str);
        try {
            return (Wrappers.m17026b(context).m17032a(str, 0).flags & 2097152) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* renamed from: c */
    public static PackageInfo m17104c(Context context, String str) {
        try {
            return Wrappers.m17026b(context).m17028b(str, 128);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }
}
