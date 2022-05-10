package com.moat.analytics.mobile.inm;

import android.util.Log;
import android.view.View;
import com.mopub.mobileads.VastExtensionXmlManager;
/* renamed from: com.moat.analytics.mobile.inm.p */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/p.class */
public class C8571p {
    /* renamed from: a */
    public static String m5103a(View view) {
        if (view == null) {
            return "null";
        }
        return view.getClass().getSimpleName() + "@" + view.hashCode();
    }

    /* renamed from: a */
    public static String m5102a(String str) {
        return VastExtensionXmlManager.MOAT + str;
    }

    /* renamed from: a */
    public static void m5104a(int i, String str, Object obj, String str2) {
        if (C8586w.m5069a().f33357b) {
            String a = m5102a(str);
            if (obj == null) {
                Log.println(i, a, String.format("message = %s", str2));
            } else {
                Log.println(i, a, String.format("id = %s, message = %s", Integer.valueOf(obj.hashCode()), str2));
            }
        }
    }

    /* renamed from: a */
    public static void m5101a(String str, int i, String str2, Object obj, String str3) {
        m5104a(i, str2, obj, str3);
        m5099a(str, str3);
    }

    /* renamed from: a */
    public static void m5100a(String str, Object obj, String str2, Throwable th) {
        if (C8586w.m5069a().f33357b) {
            Log.e(m5102a(str), String.format("id = %s, message = %s", Integer.valueOf(obj.hashCode()), str2), th);
        }
    }

    /* renamed from: a */
    public static void m5099a(String str, String str2) {
        if (!C8586w.m5069a().f33357b && ((C8560k) MoatAnalytics.getInstance()).f33301a) {
            int i = 2;
            if (str.equals("[ERROR] ")) {
                i = 6;
            }
            Log.println(i, "MoatAnalytics", str + str2);
        }
    }

    /* renamed from: b */
    public static void m5098b(int i, String str, Object obj, String str2) {
        if (C8586w.m5069a().f33358c) {
            Log.println(i, m5102a(str), String.format("id = %s, message = %s", obj == null ? "null" : Integer.valueOf(obj.hashCode()), str2));
        }
    }
}
