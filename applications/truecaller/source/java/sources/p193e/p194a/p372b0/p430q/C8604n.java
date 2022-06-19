package p193e.p194a.p372b0.p430q;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import java.util.Locale;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import w3.c.a.a.a.h;
/* renamed from: e.a.b0.q.n */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/n.class */
public final class C8604n {

    /* renamed from: a */
    public static int f26446a = -1;

    /* renamed from: b */
    public static int f26447b = -1;

    /* renamed from: a */
    public static String m28244a() {
        String str = Build.MANUFACTURER;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2.trim();
    }

    /* renamed from: b */
    public static String m28243b() {
        String str = Build.MODEL;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2.trim();
    }

    /* renamed from: c */
    public static String m28242c(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(AnalyticsConstants.PHONE);
        String networkCountryIso = telephonyManager.getNetworkCountryIso();
        String str = networkCountryIso;
        if (TextUtils.isEmpty(networkCountryIso)) {
            str = telephonyManager.getSimCountryIso();
        }
        return h.z(str, Locale.ENGLISH);
    }

    /* renamed from: d */
    public static String m28241d(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(AnalyticsConstants.PHONE);
        String simCountryIso = telephonyManager.getSimCountryIso();
        String str = simCountryIso;
        if (TextUtils.isEmpty(simCountryIso)) {
            str = telephonyManager.getNetworkCountryIso();
        }
        return h.z(str, Locale.ENGLISH);
    }

    /* renamed from: e */
    public static boolean m28240e(Context context) {
        return ((AbstractApplicationC8442a) context.getApplicationContext()).m28541V().mo12512W().mo13796a();
    }
}
