package com.google.android.gms.common;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import com.google.android.gms.common.internal.C0907d1;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.common.p026n.C0950c;
import com.google.android.gms.common.util.C0968j;
import com.google.android.gms.common.util.C0971m;
import com.google.android.gms.common.util.C0974p;
import com.google.android.gms.common.util.C0980t;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.gms.common.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/h.class */
public class C0893h {
    @Deprecated

    /* renamed from: a */
    public static final int f3474a = 12451000;

    /* renamed from: b */
    private static boolean f3475b = false;

    /* renamed from: c */
    private static boolean f3476c = false;

    /* renamed from: d */
    static final AtomicBoolean f3477d = new AtomicBoolean();

    /* renamed from: e */
    private static final AtomicBoolean f3478e = new AtomicBoolean();

    @Deprecated
    /* renamed from: a */
    public static void m3474a(Context context) {
        if (f3477d.getAndSet(true)) {
            return;
        }
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager == null) {
                return;
            }
            notificationManager.cancel(10436);
        } catch (SecurityException e) {
        }
    }

    @Deprecated
    /* renamed from: b */
    public static void m3473b(Context context, int i) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        int m3480j = C0892f.m3482h().m3480j(context, i);
        if (m3480j != 0) {
            Intent m3486d = C0892f.m3482h().m3486d(context, m3480j, "e");
            StringBuilder sb = new StringBuilder(57);
            sb.append("GooglePlayServices not available due to error ");
            sb.append(m3480j);
            Log.e("GooglePlayServicesUtil", sb.toString());
            if (m3486d != null) {
                throw new GooglePlayServicesRepairableException(m3480j, "Google Play Services not available", m3486d);
            }
            throw new GooglePlayServicesNotAvailableException(m3480j);
        }
    }

    @Deprecated
    /* renamed from: c */
    public static int m3472c(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    @Deprecated
    /* renamed from: d */
    public static String m3471d(int i) {
        return b.D1(i);
    }

    /* renamed from: e */
    public static Context m3470e(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: f */
    public static Resources m3469f(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: g */
    public static boolean m3468g(Context context) {
        try {
            if (!f3476c) {
                try {
                    PackageInfo m3205e = C0950c.m3200a(context).m3205e("com.google.android.gms", 64);
                    C0894i.m3460a(context);
                    if (m3205e == null || C0894i.m3455f(m3205e, false) || !C0894i.m3455f(m3205e, true)) {
                        f3475b = false;
                    } else {
                        f3475b = true;
                    }
                    f3476c = true;
                } catch (PackageManager.NameNotFoundException e) {
                    Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e);
                    f3476c = true;
                }
            }
            return f3475b || !C0968j.m3157c();
        } catch (Throwable th) {
            f3476c = true;
            throw th;
        }
    }

    @Deprecated
    /* renamed from: h */
    public static int m3467h(Context context, int i) {
        try {
            context.getResources().getString(C0944j.f3569a);
        } catch (Throwable th) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !f3478e.get()) {
            int m3369a = C0907d1.m3369a(context);
            if (m3369a == 0) {
                throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            }
            int i2 = f3474a;
            if (m3369a != i2) {
                StringBuilder sb = new StringBuilder(320);
                sb.append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected ");
                sb.append(i2);
                sb.append(" but found ");
                sb.append(m3369a);
                sb.append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
                throw new IllegalStateException(sb.toString());
            }
        }
        return m3462m(context, !C0968j.m3154f(context) && !C0968j.m3153g(context), i);
    }

    @Deprecated
    /* renamed from: i */
    public static boolean m3466i(Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        return m3461n(context, "com.google.android.gms");
    }

    /* renamed from: j */
    public static boolean m3465j(Context context) {
        Bundle applicationRestrictions;
        return C0971m.m3144d() && (applicationRestrictions = ((UserManager) context.getSystemService("user")).getApplicationRestrictions(context.getPackageName())) != null && "true".equals(applicationRestrictions.getString("restricted_profile"));
    }

    @Deprecated
    /* renamed from: k */
    public static boolean m3464k(int i) {
        return i == 1 || i == 2 || i == 3 || i == 9;
    }

    @Deprecated
    /* renamed from: l */
    public static boolean m3463l(Context context, int i, String str) {
        return C0974p.m3129b(context, i, str);
    }

    /* renamed from: m */
    private static int m3462m(Context context, boolean z, int i) {
        C0931r.m3318a(i >= 0);
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        PackageInfo packageInfo = null;
        if (z) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException e) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires the Google Play Store, but it is missing."));
                return 9;
            }
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            C0894i.m3460a(context);
            if (!C0894i.m3455f(packageInfo2, true)) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but their signature is invalid."));
                return 9;
            }
            if (z) {
                C0931r.m3308k(packageInfo);
                if (!C0894i.m3455f(packageInfo, true) || !packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                    Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature is invalid."));
                    return 9;
                }
            }
            if (C0980t.m3112a(packageInfo2.versionCode) >= C0980t.m3112a(i)) {
                ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
                ApplicationInfo applicationInfo2 = applicationInfo;
                if (applicationInfo == null) {
                    try {
                        applicationInfo2 = packageManager.getApplicationInfo("com.google.android.gms", 0);
                    } catch (PackageManager.NameNotFoundException e2) {
                        Log.wtf("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they're missing when getting application info."), e2);
                        return 1;
                    }
                }
                return !applicationInfo2.enabled ? 3 : 0;
            }
            int i2 = packageInfo2.versionCode;
            StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 82);
            sb.append("Google Play services out of date for ");
            sb.append(packageName);
            sb.append(".  Requires ");
            sb.append(i);
            sb.append(" but found ");
            sb.append(i2);
            Log.w("GooglePlayServicesUtil", sb.toString());
            return 2;
        } catch (PackageManager.NameNotFoundException e3) {
            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they are missing."));
            return 1;
        }
    }

    /* renamed from: n */
    public static boolean m3461n(Context context, String str) {
        boolean equals = str.equals("com.google.android.gms");
        if (C0971m.m3141g()) {
            try {
                for (PackageInstaller.SessionInfo sessionInfo : context.getPackageManager().getPackageInstaller().getAllSessions()) {
                    if (str.equals(sessionInfo.getAppPackageName())) {
                        return true;
                    }
                }
            } catch (Exception e) {
                return false;
            }
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
            return equals ? applicationInfo.enabled : applicationInfo.enabled && !m3465j(context);
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }
}
