package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/DeviceProperties.class */
public final class DeviceProperties {

    /* renamed from: a */
    private static Boolean f6973a;

    /* renamed from: b */
    private static Boolean f6974b;

    /* renamed from: c */
    private static Boolean f6975c;

    /* renamed from: d */
    private static Boolean f6976d;

    /* renamed from: e */
    private static Boolean f6977e;

    /* renamed from: f */
    private static Boolean f6978f;

    /* renamed from: g */
    private static Boolean f6979g;

    /* renamed from: h */
    private static Boolean f6980h;

    private DeviceProperties() {
    }

    public static boolean isAuto(Context context) {
        if (f6979g == null) {
            f6979g = Boolean.valueOf(PlatformVersion.isAtLeastO() && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive"));
        }
        return f6979g.booleanValue();
    }

    public static boolean isLatchsky(Context context) {
        if (f6977e == null) {
            PackageManager packageManager = context.getPackageManager();
            f6977e = Boolean.valueOf(packageManager.hasSystemFeature("com.google.android.feature.services_updater") && packageManager.hasSystemFeature("cn.google.services"));
        }
        return f6977e.booleanValue();
    }

    public static boolean isSidewinder(Context context) {
        if (f6976d == null) {
            f6976d = Boolean.valueOf(PlatformVersion.isAtLeastLollipop() && context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return f6976d.booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005d, code lost:
        if (com.google.android.gms.common.util.DeviceProperties.f6974b.booleanValue() != false) goto L_0x0060;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isTablet(android.content.res.Resources r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 != 0) goto L_0x0008
            r0 = 0
            return r0
        L_0x0008:
            java.lang.Boolean r0 = com.google.android.gms.common.util.DeviceProperties.f6973a
            if (r0 != 0) goto L_0x0069
            r0 = r3
            android.content.res.Configuration r0 = r0.getConfiguration()
            int r0 = r0.screenLayout
            r1 = 15
            r0 = r0 & r1
            r1 = 3
            if (r0 <= r1) goto L_0x0021
            r0 = 1
            r5 = r0
            goto L_0x0023
        L_0x0021:
            r0 = 0
            r5 = r0
        L_0x0023:
            r0 = r5
            if (r0 != 0) goto L_0x0060
            java.lang.Boolean r0 = com.google.android.gms.common.util.DeviceProperties.f6974b
            if (r0 != 0) goto L_0x0055
            r0 = r3
            android.content.res.Configuration r0 = r0.getConfiguration()
            r3 = r0
            r0 = r3
            int r0 = r0.screenLayout
            r1 = 15
            r0 = r0 & r1
            r1 = 3
            if (r0 > r1) goto L_0x004c
            r0 = r3
            int r0 = r0.smallestScreenWidthDp
            r1 = 600(0x258, float:8.41E-43)
            if (r0 < r1) goto L_0x004c
            r0 = 1
            r6 = r0
            goto L_0x004e
        L_0x004c:
            r0 = 0
            r6 = r0
        L_0x004e:
            r0 = r6
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            com.google.android.gms.common.util.DeviceProperties.f6974b = r0
        L_0x0055:
            r0 = r4
            r6 = r0
            java.lang.Boolean r0 = com.google.android.gms.common.util.DeviceProperties.f6974b
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0062
        L_0x0060:
            r0 = 1
            r6 = r0
        L_0x0062:
            r0 = r6
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            com.google.android.gms.common.util.DeviceProperties.f6973a = r0
        L_0x0069:
            java.lang.Boolean r0 = com.google.android.gms.common.util.DeviceProperties.f6973a
            boolean r0 = r0.booleanValue()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.DeviceProperties.isTablet(android.content.res.Resources):boolean");
    }

    public static boolean isTv(Context context) {
        if (f6980h == null) {
            PackageManager packageManager = context.getPackageManager();
            f6980h = Boolean.valueOf(packageManager.hasSystemFeature("com.google.android.tv") || packageManager.hasSystemFeature("android.hardware.type.television") || packageManager.hasSystemFeature("android.software.leanback"));
        }
        return f6980h.booleanValue();
    }

    public static boolean isUserBuild() {
        return "user".equals(Build.TYPE);
    }

    public static boolean isWearable(Context context) {
        if (f6975c == null) {
            f6975c = Boolean.valueOf(PlatformVersion.isAtLeastKitKatWatch() && context.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
        }
        return f6975c.booleanValue();
    }

    public static boolean isWearableWithoutPlayStore(Context context) {
        if (!isWearable(context)) {
            return false;
        }
        if (PlatformVersion.isAtLeastN()) {
            return isSidewinder(context) && !PlatformVersion.isAtLeastO();
        }
        return true;
    }

    public static boolean zzf(Context context) {
        if (f6978f == null) {
            f6978f = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
        }
        return f6978f.booleanValue();
    }
}
