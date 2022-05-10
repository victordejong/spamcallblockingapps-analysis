package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/DeviceProperties.class */
public final class DeviceProperties {

    /* renamed from: a */
    public static Boolean f23561a;

    /* renamed from: b */
    public static Boolean f23562b;

    /* renamed from: c */
    public static Boolean f23563c;

    /* renamed from: d */
    public static Boolean f23564d;

    /* renamed from: e */
    public static Boolean f23565e;

    @KeepForSdk
    /* renamed from: a */
    public static boolean m17088a() {
        return "user".equals(Build.TYPE);
    }

    @KeepForSdk
    /* renamed from: a */
    public static boolean m17087a(Context context) {
        return m17086a(context.getPackageManager());
    }

    @KeepForSdk
    /* renamed from: a */
    public static boolean m17086a(PackageManager packageManager) {
        if (f23565e == null) {
            f23565e = Boolean.valueOf(PlatformVersion.m17057k() && packageManager.hasSystemFeature("android.hardware.type.automotive"));
        }
        return f23565e.booleanValue();
    }

    @KeepForSdk
    /* renamed from: b */
    public static boolean m17085b(Context context) {
        if (f23563c == null) {
            PackageManager packageManager = context.getPackageManager();
            f23563c = Boolean.valueOf(packageManager.hasSystemFeature("com.google.android.feature.services_updater") && packageManager.hasSystemFeature("cn.google.services"));
        }
        return f23563c.booleanValue();
    }

    @KeepForSdk
    /* renamed from: b */
    public static boolean m17084b(PackageManager packageManager) {
        if (f23561a == null) {
            f23561a = Boolean.valueOf(PlatformVersion.m17061g() && packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        return f23561a.booleanValue();
    }

    @KeepForSdk
    /* renamed from: c */
    public static boolean m17083c(Context context) {
        return m17079g(context);
    }

    @KeepForSdk
    /* renamed from: d */
    public static boolean m17082d(Context context) {
        return m17084b(context.getPackageManager());
    }

    @KeepForSdk
    /* renamed from: e */
    public static boolean m17081e(Context context) {
        if (!m17082d(context)) {
            return false;
        }
        if (PlatformVersion.m17058j()) {
            return m17079g(context) && !PlatformVersion.m17057k();
        }
        return true;
    }

    /* renamed from: f */
    public static boolean m17080f(Context context) {
        if (f23564d == null) {
            f23564d = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
        }
        return f23564d.booleanValue();
    }

    /* renamed from: g */
    public static boolean m17079g(Context context) {
        if (f23562b == null) {
            f23562b = Boolean.valueOf(PlatformVersion.m17060h() && context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return f23562b.booleanValue();
    }
}
