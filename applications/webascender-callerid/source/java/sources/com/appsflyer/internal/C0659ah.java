package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
/* renamed from: com.appsflyer.internal.ah */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ah.class */
public final class C0659ah {

    /* renamed from: Ι */
    private static String f2984;

    /* renamed from: ι */
    private static String f2985;

    C0659ah() {
    }

    /* renamed from: ı */
    public static void m4053(String str) {
        if (f2985 == null) {
            m4052(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY));
        }
        String str2 = f2985;
        if (str2 == null || !str.contains(str2)) {
            return;
        }
        AFLogger.afInfoLog(str.replace(f2985, f2984));
    }

    /* renamed from: Ι */
    public static void m4052(String str) {
        f2985 = str;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            if (i == 0 || i == str.length() - 1) {
                sb.append(str.charAt(i));
            } else {
                sb.append("*");
            }
        }
        f2984 = sb.toString();
    }
}
