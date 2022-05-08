package com.privacystar.core.application;

import android.util.Log;
import com.crashlytics.android.Crashlytics;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/application/CrashLibrary.class */
public class CrashLibrary {
    private static int minimumLogLevel = 5;

    private CrashLibrary() {
        throw new AssertionError("No instances.");
    }

    public static int getMinimumLogLevel() {
        return minimumLogLevel;
    }

    public static void log(int i, String str, String str2) {
        if (i >= minimumLogLevel) {
            Log.d(Crashlytics.TAG, "Logging: " + str2);
        }
    }

    public static void logDeviceIdentifier(String str) {
        Timber.m37d("Setting user identifier in Crashlytics: [%s]", str);
    }

    public static void logException(Throwable th) {
        Log.w(Crashlytics.TAG, "Logging exception: " + th.getMessage());
    }

    public static void setMinimumLogLevel(int i) {
        minimumLogLevel = i;
    }
}
