package com.google.android.gms.common.util;

import android.os.Build;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
@VisibleForTesting
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/PlatformVersion.class */
public final class PlatformVersion {

    /* renamed from: a */
    public static Boolean f23569a;

    @KeepForSdk
    /* renamed from: a */
    public static boolean m17067a() {
        return true;
    }

    @KeepForSdk
    /* renamed from: b */
    public static boolean m17066b() {
        return Build.VERSION.SDK_INT >= 15;
    }

    @KeepForSdk
    /* renamed from: c */
    public static boolean m17065c() {
        return Build.VERSION.SDK_INT >= 16;
    }

    @KeepForSdk
    /* renamed from: d */
    public static boolean m17064d() {
        return Build.VERSION.SDK_INT >= 17;
    }

    @KeepForSdk
    /* renamed from: e */
    public static boolean m17063e() {
        return Build.VERSION.SDK_INT >= 18;
    }

    @KeepForSdk
    /* renamed from: f */
    public static boolean m17062f() {
        return Build.VERSION.SDK_INT >= 19;
    }

    @KeepForSdk
    /* renamed from: g */
    public static boolean m17061g() {
        return Build.VERSION.SDK_INT >= 20;
    }

    @KeepForSdk
    /* renamed from: h */
    public static boolean m17060h() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @KeepForSdk
    /* renamed from: i */
    public static boolean m17059i() {
        return Build.VERSION.SDK_INT >= 23;
    }

    @KeepForSdk
    /* renamed from: j */
    public static boolean m17058j() {
        return Build.VERSION.SDK_INT >= 24;
    }

    @KeepForSdk
    /* renamed from: k */
    public static boolean m17057k() {
        return Build.VERSION.SDK_INT >= 26;
    }

    @KeepForSdk
    /* renamed from: l */
    public static boolean m17056l() {
        return Build.VERSION.SDK_INT >= 28;
    }

    @KeepForSdk
    /* renamed from: m */
    public static boolean m17055m() {
        return Build.VERSION.SDK_INT >= 29;
    }

    @KeepForSdk
    /* renamed from: n */
    public static boolean m17054n() {
        if (!m17055m()) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 30 && Build.VERSION.CODENAME.equals("REL")) {
            return true;
        }
        if (!(Build.VERSION.CODENAME.length() == 1 && Build.VERSION.CODENAME.charAt(0) >= 'R' && Build.VERSION.CODENAME.charAt(0) <= 'Z')) {
            return false;
        }
        Boolean bool = f23569a;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z = false;
        try {
            if ("google".equals(Build.BRAND)) {
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
            f23569a = Boolean.valueOf(z);
        } catch (NumberFormatException e) {
            f23569a = true;
        }
        if (!f23569a.booleanValue()) {
            Log.w("PlatformVersion", "Build version must be at least 6301457 to support R in gmscore");
        }
        return f23569a.booleanValue();
    }
}
