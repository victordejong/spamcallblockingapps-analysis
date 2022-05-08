package com.criteo.sync.sdk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Process;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/EnvironmentChecker.class */
public class EnvironmentChecker {
    public Context context;
    public boolean hasError = false;

    public EnvironmentChecker(Context context) {
        this.context = context;
    }

    public void checkAndroidVersion() {
        if (getAndroidVersion() < 16) {
            CrtoLog.m35514e("OS Version lower than Jelly Bean (API version 16)");
            this.hasError = true;
        }
    }

    public void checkGooglePlayVersion() {
        try {
            ApplicationInfo applicationInfo = this.context.getPackageManager().getApplicationInfo(this.context.getPackageName(), 128);
            if (applicationInfo.metaData == null || applicationInfo.metaData.getInt("com.google.android.gms.version") == 0) {
                CrtoLog.m35514e("com.google.android.gms.version value not set in AndroidManifest.xml");
                this.hasError = true;
            }
        } catch (Exception e) {
            CrtoLog.m35513e("Impossible to fetch application info", e);
            this.hasError = true;
        }
    }

    public void checkHasDependency(String str, String str2) {
        if (!hasDependency(str)) {
            CrtoLog.m35514e("No " + str2 + " dependency detected");
            this.hasError = true;
        }
    }

    public void checkHasMandatoryPermission(String str) {
        if (!hasPermission(str)) {
            CrtoLog.m35514e("App does not have the " + str + " permission");
            this.hasError = true;
        }
    }

    public void checkHasOptionalPermission(String str, String str2) {
        if (!hasPermission(str)) {
            CrtoLog.m35510w(str2);
        }
    }

    public int getAndroidVersion() {
        return DeviceInfo.getAndroidVersionNumber();
    }

    public boolean hasDependency(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    public boolean hasError() {
        return this.hasError;
    }

    public boolean hasPermission(String str) {
        return this.context.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
    }
}
