package com.crashlytics.android.core;

import android.content.Context;
import android.content.pm.PackageInfo;
import p000a.p001a.p002a.p003a.p004a.p006b.C0043x;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/AppData.class */
public class AppData {
    public final String apiKey;
    public final String buildId;
    public final String installerPackageName;
    public final String packageName;
    public final String versionCode;
    public final String versionName;

    AppData(String str, String str2, String str3, String str4, String str5, String str6) {
        this.apiKey = str;
        this.buildId = str2;
        this.installerPackageName = str3;
        this.packageName = str4;
        this.versionCode = str5;
        this.versionName = str6;
    }

    public static AppData create(Context context, C0043x xVar, String str, String str2) {
        String packageName = context.getPackageName();
        String h = xVar.m10287h();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        return new AppData(str, str2, h, packageName, Integer.toString(packageInfo.versionCode), packageInfo.versionName == null ? "0.0" : packageInfo.versionName);
    }
}
