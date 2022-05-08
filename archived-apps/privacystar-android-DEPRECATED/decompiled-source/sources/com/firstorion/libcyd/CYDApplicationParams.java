package com.firstorion.libcyd;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/CYDApplicationParams.class */
class CYDApplicationParams {
    private static final String CYD_APPLICATION_CONFIGURATION_KEY = "CYD_APPLICATION_CONFIGURATION";
    private static CYDApplicationParams cydApplicationParams;
    private static final Object lock = new Object();
    String appId;
    String beaconIdentifier;
    String newAppVersion;
    String newSdkVersion = CYDApplication.getSdkVersion();
    String oldAppVersion;
    String oldSdkVersion;
    String tokenType;
    boolean useCallerYDFirebaseServer;
    boolean useInternalPhoneStateReceiever;
    private boolean wasCleanInstall;

    private CYDApplicationParams() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CYDApplicationParams getInstance(Context context) {
        return load(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CYDApplicationParams load(Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        synchronized (lock) {
            if (cydApplicationParams != null) {
                return cydApplicationParams;
            }
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(CYD_APPLICATION_CONFIGURATION_KEY, 0);
            CYDApplicationParams cYDApplicationParams = new CYDApplicationParams();
            cYDApplicationParams.useCallerYDFirebaseServer = sharedPreferences.getBoolean("useCallerYDFirebaseServer", false);
            cYDApplicationParams.useInternalPhoneStateReceiever = sharedPreferences.getBoolean("useInternalPhoneStateReceiever", false);
            cYDApplicationParams.tokenType = sharedPreferences.getString("tokenType", null);
            cYDApplicationParams.appId = sharedPreferences.getString("appId", null);
            if (cYDApplicationParams.appId == null) {
                cYDApplicationParams.wasCleanInstall = true;
            }
            cYDApplicationParams.oldAppVersion = sharedPreferences.getString("appVersion", null);
            StringBuilder sb = new StringBuilder();
            sb.append("Detected previous app version: ");
            sb.append(cYDApplicationParams.oldAppVersion == null ? "<was null>" : cYDApplicationParams.oldAppVersion);
            Log.d("libcyd.app", sb.toString());
            cYDApplicationParams.oldSdkVersion = sharedPreferences.getString("sdkVersion", null);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Detected previous sdk version: ");
            sb2.append(cYDApplicationParams.oldSdkVersion == null ? "<was null>" : cYDApplicationParams.oldSdkVersion);
            Log.d("libcyd.app", sb2.toString());
            cYDApplicationParams.beaconIdentifier = sharedPreferences.getString("beaconIdentifier", null);
            if (cYDApplicationParams.beaconIdentifier == null) {
                cYDApplicationParams.beaconIdentifier = UUID.randomUUID().toString();
            }
            cydApplicationParams = cYDApplicationParams;
            return cYDApplicationParams;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isValid() {
        return (this.tokenType == null || this.appId == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void save(Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        context.getApplicationContext().getSharedPreferences(CYD_APPLICATION_CONFIGURATION_KEY, 0).edit().putBoolean("useCallerYDFirebaseServer", this.useCallerYDFirebaseServer).putBoolean("useInternalPhoneStateReceiever", this.useInternalPhoneStateReceiever).putString("tokenType", this.tokenType).putString("appId", this.appId).putString("appVersion", this.newAppVersion).putString("sdkVersion", this.newSdkVersion).putString("beaconIdentifier", this.beaconIdentifier).apply();
        StringBuilder sb = new StringBuilder();
        sb.append("Persisting app version: ");
        sb.append(this.newAppVersion == null ? "<setting to null>" : this.newAppVersion);
        Log.d("libcyd.app", sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Persisting sdk version: ");
        sb2.append(this.newSdkVersion == null ? "<setting to null>" : this.newSdkVersion);
        Log.d("libcyd.app", sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean wasAppUpgrade() {
        if (!this.wasCleanInstall && this.newAppVersion != null) {
            return this.oldAppVersion == null || !this.newAppVersion.equals(this.oldAppVersion);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean wasCleanInstall() {
        return this.wasCleanInstall;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean wasSdkUpgrade() {
        boolean z = false;
        if (this.wasCleanInstall) {
            return false;
        }
        if (this.oldSdkVersion == null || !this.oldSdkVersion.equals(this.newSdkVersion)) {
            z = true;
        }
        return z;
    }
}
