package com.google.android.gms.common;

import android.annotation.TargetApi;
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
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.zzp;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.util.zzb;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.concurrent.atomic.AtomicBoolean;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GooglePlayServicesUtilLight.class */
public class GooglePlayServicesUtilLight {
    @KeepForSdk
    @Deprecated

    /* renamed from: a */
    public static final int f6984a = 12451000;

    /* renamed from: b */
    private static boolean f6985b = false;
    @VisibleForTesting

    /* renamed from: c */
    private static boolean f6986c = false;
    @VisibleForTesting
    @KeepForSdk

    /* renamed from: d */
    static final AtomicBoolean f6987d = new AtomicBoolean();

    /* renamed from: e */
    private static final AtomicBoolean f6988e = new AtomicBoolean();

    @KeepForSdk
    @Deprecated
    /* renamed from: a */
    public static void m15054a(Context context) {
        if (!f6987d.getAndSet(true)) {
            try {
                NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
                if (notificationManager != null) {
                    notificationManager.cancel(10436);
                }
            } catch (SecurityException e) {
            }
        }
    }

    @KeepForSdk
    @Deprecated
    /* renamed from: b */
    public static void m15053b(Context context, int i) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        int j = GoogleApiAvailabilityLight.m15064h().mo15062j(context, i);
        if (j != 0) {
            Intent d = GoogleApiAvailabilityLight.m15064h().mo15068d(context, j, "e");
            StringBuilder sb = new StringBuilder(57);
            sb.append("GooglePlayServices not available due to error ");
            sb.append(j);
            Log.e("GooglePlayServicesUtil", sb.toString());
            if (d == null) {
                throw new GooglePlayServicesNotAvailableException(j);
            }
            throw new GooglePlayServicesRepairableException(j, "Google Play Services not available", d);
        }
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    /* renamed from: c */
    public static int m15052c(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    @VisibleForTesting
    @KeepForSdk
    @Deprecated
    /* renamed from: d */
    public static String m15051d(int i) {
        return ConnectionResult.m15089j0(i);
    }

    @KeepForSdk
    /* renamed from: e */
    public static Context m15050e(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    @KeepForSdk
    /* renamed from: f */
    public static Resources m15049f(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    @ShowFirstParty
    @KeepForSdk
    /* renamed from: g */
    public static boolean m15048g(Context context) {
        try {
            if (!f6986c) {
                try {
                    PackageInfo e = Wrappers.m14278a(context).m14283e("com.google.android.gms", 64);
                    GoogleSignatureVerifier.m15040a(context);
                    if (e == null || GoogleSignatureVerifier.m15035f(e, false) || !GoogleSignatureVerifier.m15035f(e, true)) {
                        f6985b = false;
                    } else {
                        f6985b = true;
                    }
                    f6986c = true;
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e2);
                    f6986c = true;
                }
            }
            return f6985b || !DeviceProperties.m14331b();
        } catch (Throwable th) {
            f6986c = true;
            throw th;
        }
    }

    @KeepForSdk
    @Deprecated
    /* renamed from: h */
    public static int m15047h(Context context, int i) {
        try {
            context.getResources().getString(C1017R.string.common_google_play_services_unknown_issue);
        } catch (Throwable th) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !f6988e.get()) {
            int b = zzp.m14400b(context);
            if (b == 0) {
                throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            } else if (b != f6984a) {
                int i2 = f6984a;
                StringBuilder sb = new StringBuilder(320);
                sb.append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected ");
                sb.append(i2);
                sb.append(" but found ");
                sb.append(b);
                sb.append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
                throw new IllegalStateException(sb.toString());
            }
        }
        return m15041n(context, !DeviceProperties.m14329d(context) && !DeviceProperties.m14328e(context), i);
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    /* renamed from: i */
    public static boolean m15046i(Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i == 1) {
            return m15044k(context, "com.google.android.gms");
        }
        return false;
    }

    @KeepForSdk
    @TargetApi(18)
    /* renamed from: j */
    public static boolean m15045j(Context context) {
        Bundle applicationRestrictions;
        return PlatformVersion.m14319d() && (applicationRestrictions = ((UserManager) context.getSystemService("user")).getApplicationRestrictions(context.getPackageName())) != null && "true".equals(applicationRestrictions.getString("restricted_profile"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(21)
    /* renamed from: k */
    public static boolean m15044k(Context context, String str) {
        boolean equals = str.equals("com.google.android.gms");
        if (PlatformVersion.m14316g()) {
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
            return equals ? applicationInfo.enabled : applicationInfo.enabled && !m15045j(context);
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }

    @KeepForSdk
    @Deprecated
    /* renamed from: l */
    public static boolean m15043l(int i) {
        return i == 1 || i == 2 || i == 3 || i == 9;
    }

    @KeepForSdk
    @Deprecated
    @TargetApi(19)
    /* renamed from: m */
    public static boolean m15042m(Context context, int i, String str) {
        return UidVerifier.m14307b(context, i, str);
    }

    @VisibleForTesting
    /* renamed from: n */
    private static int m15041n(Context context, boolean z, int i) {
        Preconditions.m14533a(i >= 0);
        PackageManager packageManager = context.getPackageManager();
        PackageInfo packageInfo = null;
        if (z) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException e) {
                Log.w("GooglePlayServicesUtil", "Google Play Store is missing.");
                return 9;
            }
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            GoogleSignatureVerifier.m15040a(context);
            if (!GoogleSignatureVerifier.m15035f(packageInfo2, true)) {
                Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
                return 9;
            } else if (z && (!GoogleSignatureVerifier.m15035f(packageInfo, true) || !packageInfo.signatures[0].equals(packageInfo2.signatures[0]))) {
                Log.w("GooglePlayServicesUtil", "Google Play Store signature invalid.");
                return 9;
            } else if (zzb.m14290a(packageInfo2.versionCode) < zzb.m14290a(i)) {
                int i2 = packageInfo2.versionCode;
                StringBuilder sb = new StringBuilder(77);
                sb.append("Google Play services out of date.  Requires ");
                sb.append(i);
                sb.append(" but found ");
                sb.append(i2);
                Log.w("GooglePlayServicesUtil", sb.toString());
                return 2;
            } else {
                ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
                ApplicationInfo applicationInfo2 = applicationInfo;
                if (applicationInfo == null) {
                    try {
                        applicationInfo2 = packageManager.getApplicationInfo("com.google.android.gms", 0);
                    } catch (PackageManager.NameNotFoundException e2) {
                        Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.", e2);
                        return 1;
                    }
                }
                return !applicationInfo2.enabled ? 3 : 0;
            }
        } catch (PackageManager.NameNotFoundException e3) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 1;
        }
    }
}
