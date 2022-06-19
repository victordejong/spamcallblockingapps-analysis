package com.google.android.gms.common.util;

import android.os.Build;
import android.util.Log;
import com.appsflyer.internal.referrer.Payload;
/* renamed from: com.google.android.gms.common.util.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/m.class */
public final class C0971m {

    /* renamed from: a */
    private static Boolean f3598a;

    /* renamed from: a */
    public static boolean m3147a() {
        return true;
    }

    /* renamed from: b */
    public static boolean m3146b() {
        return Build.VERSION.SDK_INT >= 16;
    }

    /* renamed from: c */
    public static boolean m3145c() {
        return Build.VERSION.SDK_INT >= 17;
    }

    /* renamed from: d */
    public static boolean m3144d() {
        return Build.VERSION.SDK_INT >= 18;
    }

    /* renamed from: e */
    public static boolean m3143e() {
        return Build.VERSION.SDK_INT >= 19;
    }

    /* renamed from: f */
    public static boolean m3142f() {
        return Build.VERSION.SDK_INT >= 20;
    }

    /* renamed from: g */
    public static boolean m3141g() {
        return Build.VERSION.SDK_INT >= 21;
    }

    /* renamed from: h */
    public static boolean m3140h() {
        return Build.VERSION.SDK_INT >= 24;
    }

    /* renamed from: i */
    public static boolean m3139i() {
        return Build.VERSION.SDK_INT >= 26;
    }

    /* renamed from: j */
    public static boolean m3138j() {
        return Build.VERSION.SDK_INT >= 28;
    }

    /* renamed from: k */
    public static boolean m3137k() {
        return Build.VERSION.SDK_INT >= 29;
    }

    /* renamed from: l */
    public static boolean m3136l() {
        if (!m3137k()) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 30 && Build.VERSION.CODENAME.equals("REL")) {
            return true;
        }
        String str = Build.VERSION.CODENAME;
        if (!(str.length() == 1 && str.charAt(0) >= 'R' && str.charAt(0) <= 'Z')) {
            return false;
        }
        Boolean bool = f3598a;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z = false;
        try {
            if (Payload.SOURCE_GOOGLE.equals(Build.BRAND)) {
                z = false;
                if (!Build.ID.startsWith("RPP1")) {
                    z = false;
                    if (!Build.ID.startsWith("RPP2")) {
                        z = false;
                        if (Integer.parseInt(Build.VERSION.INCREMENTAL) >= 6301457) {
                            z = true;
                        }
                    }
                }
            }
            f3598a = Boolean.valueOf(z);
        } catch (NumberFormatException e) {
            f3598a = Boolean.TRUE;
        }
        if (!f3598a.booleanValue()) {
            Log.w("PlatformVersion", "Build version must be at least 6301457 to support R in gmscore");
        }
        return f3598a.booleanValue();
    }
}
