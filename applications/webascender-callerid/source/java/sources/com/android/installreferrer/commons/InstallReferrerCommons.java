package com.android.installreferrer.commons;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/android/installreferrer/commons/InstallReferrerCommons.class */
public final class InstallReferrerCommons {
    public static void logVerbose(String str, String str2) {
        if (Log.isLoggable(str, 2)) {
            Log.v(str, str2);
        }
    }

    public static void logWarn(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2);
        }
    }
}
