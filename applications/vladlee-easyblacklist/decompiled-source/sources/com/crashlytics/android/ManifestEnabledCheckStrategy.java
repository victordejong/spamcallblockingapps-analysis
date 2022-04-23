package com.crashlytics.android;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.crashlytics.android.CrashlyticsInitProvider;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/ManifestEnabledCheckStrategy.class */
class ManifestEnabledCheckStrategy implements CrashlyticsInitProvider.EnabledCheckStrategy {
    @Override // com.crashlytics.android.CrashlyticsInitProvider.EnabledCheckStrategy
    public boolean isCrashlyticsEnabled(Context context) {
        boolean z;
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            z = true;
            if (bundle != null) {
                z = bundle.getBoolean("firebase_crashlytics_collection_enabled", true);
            }
        } catch (PackageManager.NameNotFoundException e) {
            z = true;
        }
        return z;
    }
}
