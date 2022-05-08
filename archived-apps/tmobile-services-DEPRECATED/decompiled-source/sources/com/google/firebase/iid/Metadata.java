package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.firebase.FirebaseApp;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/Metadata.class */
public class Metadata {
    @GuardedBy
    private String appVersionCode;
    @GuardedBy
    private String appVersionName;
    private final Context context;
    @GuardedBy
    private int gmsVersionCode;
    @GuardedBy
    private int iidImplementation = 0;

    public Metadata(Context context) {
        this.context = context;
    }

    public static String getDefaultSenderId(FirebaseApp firebaseApp) {
        String gcmSenderId = firebaseApp.getOptions().getGcmSenderId();
        if (gcmSenderId != null) {
            return gcmSenderId;
        }
        String applicationId = firebaseApp.getOptions().getApplicationId();
        if (!applicationId.startsWith("1:")) {
            return applicationId;
        }
        String[] split = applicationId.split(":");
        if (split.length < 2) {
            return null;
        }
        String str = split[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    private PackageInfo getPackageInfo(String str) {
        try {
            return this.context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Failed to find package ");
            sb.append(valueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            return null;
        }
    }

    private void populateAppVersionInfo() {
        synchronized (this) {
            PackageInfo packageInfo = getPackageInfo(this.context.getPackageName());
            if (packageInfo != null) {
                this.appVersionCode = Integer.toString(packageInfo.versionCode);
                this.appVersionName = packageInfo.versionName;
            }
        }
    }

    public String getAppVersionCode() {
        String str;
        synchronized (this) {
            if (this.appVersionCode == null) {
                populateAppVersionInfo();
            }
            str = this.appVersionCode;
        }
        return str;
    }

    public String getAppVersionName() {
        String str;
        synchronized (this) {
            if (this.appVersionName == null) {
                populateAppVersionInfo();
            }
            str = this.appVersionName;
        }
        return str;
    }

    public int getGmsVersionCode() {
        int i;
        PackageInfo packageInfo;
        synchronized (this) {
            if (this.gmsVersionCode == 0 && (packageInfo = getPackageInfo("com.google.android.gms")) != null) {
                this.gmsVersionCode = packageInfo.versionCode;
            }
            i = this.gmsVersionCode;
        }
        return i;
    }

    public int getIidImplementation() {
        synchronized (this) {
            if (this.iidImplementation != 0) {
                return this.iidImplementation;
            }
            PackageManager packageManager = this.context.getPackageManager();
            if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                Log.e("FirebaseInstanceId", "Google Play services missing or without correct permission.");
                return 0;
            }
            if (!PlatformVersion.m14314i()) {
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    this.iidImplementation = 1;
                    return 1;
                }
            }
            Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
            intent2.setPackage("com.google.android.gms");
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
            if (queryBroadcastReceivers == null || queryBroadcastReceivers.size() <= 0) {
                Log.w("FirebaseInstanceId", "Failed to resolve IID implementation package, falling back");
                if (PlatformVersion.m14314i()) {
                    this.iidImplementation = 2;
                } else {
                    this.iidImplementation = 1;
                }
                return this.iidImplementation;
            }
            this.iidImplementation = 2;
            return 2;
        }
    }

    @KeepForSdk
    public boolean isGmscorePresent() {
        return getIidImplementation() != 0;
    }
}
