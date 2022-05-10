package com.applovin.sdk;

import android.content.Context;
import p131c.p135b.p136a.p148e.C2328i;
/* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinPrivacySettings.class */
public class AppLovinPrivacySettings {
    public static boolean hasUserConsent(Context context) {
        Boolean a = C2328i.m30353a(context);
        if (a != null) {
            return a.booleanValue();
        }
        return false;
    }

    public static boolean isAgeRestrictedUser(Context context) {
        Boolean b = C2328i.m30349b(context);
        if (b != null) {
            return b.booleanValue();
        }
        return false;
    }

    public static boolean isDoNotSell(Context context) {
        Boolean c = C2328i.m30347c(context);
        if (c != null) {
            return c.booleanValue();
        }
        return false;
    }

    public static void setDoNotSell(boolean z, Context context) {
        if (C2328i.m30346c(z, context)) {
            AppLovinSdk.reinitializeAll(null, null, Boolean.valueOf(z));
        }
    }

    public static void setHasUserConsent(boolean z, Context context) {
        if (C2328i.m30350a(z, context)) {
            AppLovinSdk.reinitializeAll(Boolean.valueOf(z), null, null);
        }
    }

    public static void setIsAgeRestrictedUser(boolean z, Context context) {
        if (C2328i.m30348b(z, context)) {
            AppLovinSdk.reinitializeAll(null, Boolean.valueOf(z), null);
        }
    }
}
