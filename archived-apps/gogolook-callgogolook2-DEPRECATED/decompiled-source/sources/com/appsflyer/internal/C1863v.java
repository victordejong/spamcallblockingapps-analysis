package com.appsflyer.internal;

import android.content.ContentResolver;
import android.os.Build;
import android.provider.Settings;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.internal.C1865w;
/* renamed from: com.appsflyer.internal.v */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/v.class */
public final class C1863v {

    /* renamed from: com.appsflyer.internal.v$a */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/v$a.class */
    public static final class C1864a extends IllegalStateException {
        public C1864a(String str) {
            super(str);
        }
    }

    /* renamed from: Ι */
    public static C1865w m36108(ContentResolver contentResolver) {
        String str;
        if (contentResolver == null) {
            return null;
        }
        C1865w wVar = null;
        if (AppsFlyerProperties.getInstance().getString("amazon_aid") == null) {
            wVar = null;
            if ("Amazon".equals(Build.MANUFACTURER)) {
                int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking", 2);
                if (i == 0) {
                    String string = Settings.Secure.getString(contentResolver, "advertising_id");
                    C1865w.EnumC1866e eVar = C1865w.EnumC1866e.AMAZON;
                    wVar = new C1865w(string, false);
                } else if (i == 2) {
                    wVar = null;
                } else {
                    try {
                        str = Settings.Secure.getString(contentResolver, "advertising_id");
                    } catch (Throwable th) {
                        AFLogger.afErrorLog("Couldn't fetch Amazon Advertising ID (Ad-Tracking is limited!)", th);
                        str = "";
                    }
                    C1865w.EnumC1866e eVar2 = C1865w.EnumC1866e.AMAZON;
                    wVar = new C1865w(str, true);
                }
            }
        }
        return wVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0066, code lost:
        if (r8.length() == 0) goto L_0x0069;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0119, code lost:
        if (r0.length() == 0) goto L_0x011c;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00e0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* renamed from: ι */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m36107(android.content.Context r4, java.util.Map<java.lang.String, java.lang.Object> r5) {
        /*
            Method dump skipped, instructions count: 545
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C1863v.m36107(android.content.Context, java.util.Map):void");
    }
}
