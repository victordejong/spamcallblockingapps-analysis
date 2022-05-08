package io.fabric.sdk.android.services.common;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Logger;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/common/ApiKey.class */
public class ApiKey {
    static final String CRASHLYTICS_API_KEY = "com.crashlytics.ApiKey";
    static final String FABRIC_API_KEY = "io.fabric.ApiKey";
    static final String STRING_TWITTER_CONSUMER_SECRET = "@string/twitter_consumer_secret";

    @Deprecated
    public static String getApiKey(Context context) {
        Fabric.getLogger().mo280w(Fabric.TAG, "getApiKey(context) is deprecated, please upgrade kit(s) to the latest version.");
        return new ApiKey().getValue(context);
    }

    @Deprecated
    public static String getApiKey(Context context, boolean z) {
        Fabric.getLogger().mo280w(Fabric.TAG, "getApiKey(context, debug) is deprecated, please upgrade kit(s) to the latest version.");
        return new ApiKey().getValue(context);
    }

    protected String buildApiKeyInstructions() {
        return "Fabric could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"io.fabric.ApiKey\" android:value=\"YOUR_API_KEY\"/>";
    }

    protected String getApiKeyFromFirebaseAppId(Context context) {
        return new FirebaseInfo().getApiKeyFromFirebaseAppId(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getApiKeyFromManifest(Context context) {
        Exception e;
        String str = null;
        str = null;
        String str2 = null;
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle != null) {
                str = bundle.getString(FABRIC_API_KEY);
                try {
                    if (STRING_TWITTER_CONSUMER_SECRET.equals(str)) {
                        Fabric.getLogger().mo288d(Fabric.TAG, "Ignoring bad default value for Fabric ApiKey set by FirebaseUI-Auth");
                    } else {
                        str2 = str;
                    }
                    str = str2;
                    if (str2 == null) {
                        Fabric.getLogger().mo288d(Fabric.TAG, "Falling back to Crashlytics key lookup from Manifest");
                        str = str2;
                        str = bundle.getString(CRASHLYTICS_API_KEY);
                    }
                } catch (Exception e2) {
                    e = e2;
                    Logger logger = Fabric.getLogger();
                    logger.mo288d(Fabric.TAG, "Caught non-fatal exception while retrieving apiKey: " + e);
                    return str;
                }
            }
        } catch (Exception e3) {
            e = e3;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getApiKeyFromStrings(Context context) {
        int resourcesIdentifier = CommonUtils.getResourcesIdentifier(context, FABRIC_API_KEY, "string");
        int i = resourcesIdentifier;
        if (resourcesIdentifier == 0) {
            Fabric.getLogger().mo288d(Fabric.TAG, "Falling back to Crashlytics key lookup from Strings");
            i = CommonUtils.getResourcesIdentifier(context, CRASHLYTICS_API_KEY, "string");
        }
        return i != 0 ? context.getResources().getString(i) : null;
    }

    public String getValue(Context context) {
        String apiKeyFromManifest = getApiKeyFromManifest(context);
        String str = apiKeyFromManifest;
        if (TextUtils.isEmpty(apiKeyFromManifest)) {
            str = getApiKeyFromStrings(context);
        }
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = getApiKeyFromFirebaseAppId(context);
        }
        if (TextUtils.isEmpty(str2)) {
            logErrorOrThrowException(context);
        }
        return str2;
    }

    protected void logErrorOrThrowException(Context context) {
        if (Fabric.isDebuggable() || CommonUtils.isAppDebuggable(context)) {
            throw new IllegalArgumentException(buildApiKeyInstructions());
        }
        Fabric.getLogger().mo286e(Fabric.TAG, buildApiKeyInstructions());
    }
}
