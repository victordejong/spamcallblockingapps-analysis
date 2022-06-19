package com.appsflyer.internal;

import android.content.ContentResolver;
import android.os.Build;
import android.provider.Settings;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.internal.C0695y;
/* renamed from: com.appsflyer.internal.x */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/x.class */
public final class C0693x {

    /* renamed from: com.appsflyer.internal.x$a */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/x$a.class */
    static final class C0694a extends IllegalStateException {
        C0694a(String str) {
            super(str);
        }
    }

    C0693x() {
    }

    /* renamed from: ɩ */
    public static C0695y m4013(ContentResolver contentResolver) {
        String str;
        if (contentResolver == null) {
            return null;
        }
        C0695y c0695y = null;
        if (AppsFlyerProperties.getInstance().getString("amazon_aid") == null) {
            c0695y = null;
            if ("Amazon".equals(Build.MANUFACTURER)) {
                int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking", 2);
                if (i == 0) {
                    String string = Settings.Secure.getString(contentResolver, "advertising_id");
                    C0695y.EnumC0696d enumC0696d = C0695y.EnumC0696d.AMAZON;
                    c0695y = new C0695y(string, false);
                } else if (i == 2) {
                    c0695y = null;
                } else {
                    try {
                        str = Settings.Secure.getString(contentResolver, "advertising_id");
                    } catch (Throwable th) {
                        AFLogger.afErrorLog("Couldn't fetch Amazon Advertising ID (Ad-Tracking is limited!)", th);
                        str = "";
                    }
                    C0695y.EnumC0696d enumC0696d2 = C0695y.EnumC0696d.AMAZON;
                    c0695y = new C0695y(str, true);
                }
            }
        }
        return c0695y;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0078, code lost:
        if (r0.length() == 0) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01bf  */
    /* renamed from: ɩ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m4012(android.content.Context r4, java.util.Map<java.lang.String, java.lang.Object> r5) {
        /*
            Method dump skipped, instructions count: 554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C0693x.m4012(android.content.Context, java.util.Map):void");
    }
}
