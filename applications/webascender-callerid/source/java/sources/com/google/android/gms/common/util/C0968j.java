package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
/* renamed from: com.google.android.gms.common.util.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/j.class */
public final class C0968j {

    /* renamed from: a */
    private static Boolean f3592a;

    /* renamed from: b */
    private static Boolean f3593b;

    /* renamed from: c */
    private static Boolean f3594c;

    /* renamed from: d */
    private static Boolean f3595d;

    /* renamed from: a */
    public static boolean m3159a(Context context) {
        return m3158b(context.getPackageManager());
    }

    /* renamed from: b */
    public static boolean m3158b(PackageManager packageManager) {
        if (f3595d == null) {
            f3595d = Boolean.valueOf(C0971m.m3139i() && packageManager.hasSystemFeature("android.hardware.type.automotive"));
        }
        return f3595d.booleanValue();
    }

    /* renamed from: c */
    public static boolean m3157c() {
        return "user".equals(Build.TYPE);
    }

    /* renamed from: d */
    public static boolean m3156d(Context context) {
        return m3155e(context.getPackageManager());
    }

    /* renamed from: e */
    public static boolean m3155e(PackageManager packageManager) {
        if (f3592a == null) {
            f3592a = Boolean.valueOf(C0971m.m3142f() && packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        return f3592a.booleanValue();
    }

    /* renamed from: f */
    public static boolean m3154f(Context context) {
        if (m3156d(context)) {
            if (!C0971m.m3140h()) {
                return true;
            }
            return m3152h(context) && !C0971m.m3139i();
        }
        return false;
    }

    /* renamed from: g */
    public static boolean m3153g(Context context) {
        if (f3594c == null) {
            f3594c = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
        }
        return f3594c.booleanValue();
    }

    /* renamed from: h */
    private static boolean m3152h(Context context) {
        if (f3593b == null) {
            f3593b = Boolean.valueOf(C0971m.m3141g() && context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return f3593b.booleanValue();
    }
}
