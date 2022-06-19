package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import com.appsflyer.AFLogger;
import com.appsflyer.AndroidUtils;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.FirebaseMessagingServiceListener;
import com.appsflyer.internal.C0649a;
/* renamed from: com.appsflyer.internal.ae */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ae.class */
public final class C0654ae {
    C0654ae() {
    }

    /* renamed from: ǃ */
    public static void m4076(Context context, String str) {
        String str2;
        if (str != null) {
            AFLogger.afInfoLog("updateServerUninstallToken called with: ".concat(String.valueOf(str)));
            C0649a.C0650b.C0651b m4092 = C0649a.C0650b.C0651b.m4092(AppsFlyerProperties.getInstance().getString("afUninstallToken"));
            SharedPreferences sharedPreferences = AppsFlyerLibCore.getSharedPreferences(context);
            if (sharedPreferences.getBoolean("sentRegisterRequestToAF", false) && (str2 = m4092.f2960) != null && str2.equals(str)) {
                return;
            }
            AppsFlyerProperties.getInstance().set("afUninstallToken", str);
            if (!AppsFlyerLibCore.Ι(sharedPreferences)) {
                return;
            }
            AppsFlyerLibCore.getInstance().ɩ(context, str);
        }
    }

    /* renamed from: ǃ */
    public static boolean m4077(Context context) {
        if (AppsFlyerLib.getInstance().isStopped()) {
            return false;
        }
        try {
            Class.forName("com.google.firebase.messaging.FirebaseMessagingService");
            if (AndroidUtils.m4114(context, new Intent("com.google.firebase.MESSAGING_EVENT", null, context, FirebaseMessagingServiceListener.class))) {
                return true;
            }
            AFLogger.afWarnLog("Cannot verify existence of our InstanceID Listener Service in the manifest. Please refer to documentation.");
            return false;
        } catch (ClassNotFoundException e) {
            return false;
        } catch (Throwable th) {
            AFLogger.afErrorLog("An error occurred while trying to verify manifest declarations: ", th);
            return false;
        }
    }
}
