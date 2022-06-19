package com.appsflyer;

import android.util.Log;
import com.appsflyer.internal.C0655af;
import com.appsflyer.internal.Exlytics;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFLogger.class */
public class AFLogger {

    /* renamed from: Ι */
    private static final long f2864 = System.currentTimeMillis();

    /* loaded from: classes-dex2jar.jar:com/appsflyer/AFLogger$LogLevel.class */
    public enum LogLevel {
        NONE(0),
        ERROR(1),
        WARNING(2),
        INFO(3),
        DEBUG(4),
        VERBOSE(5);
        

        /* renamed from: ι */
        private int f2866;

        LogLevel(int i) {
            this.f2866 = i;
        }

        public final int getLevel() {
            return this.f2866;
        }
    }

    public static void afDebugLog(String str) {
        if (m4136(LogLevel.DEBUG)) {
            Log.d("AppsFlyer_6.0.0", m4134(str, false));
        }
        C0655af.m4065().m4072(null, "D", m4134(str, true));
    }

    public static void afErrorLog(String str, Throwable th) {
        m4139(str, th, true, false);
    }

    public static void afErrorLog(String str, Throwable th, boolean z) {
        m4139(str, th, true, z);
    }

    public static void afErrorLog(Throwable th) {
        m4139(null, th, false, false);
    }

    public static void afInfoLog(String str) {
        afInfoLog(str, true);
    }

    public static void afInfoLog(String str, boolean z) {
        if (m4136(LogLevel.INFO)) {
            Log.i("AppsFlyer_6.0.0", m4134(str, false));
        }
        if (z) {
            C0655af.m4065().m4072(null, "I", m4134(str, true));
        }
    }

    public static void afRDLog(String str) {
        if (m4136(LogLevel.VERBOSE)) {
            Log.v("AppsFlyer_6.0.0", m4134(str, false));
        }
        C0655af.m4065().m4072(null, "V", m4134(str, true));
    }

    public static void afWarnLog(String str) {
        m4135(str);
    }

    /* renamed from: ı */
    private static void m4139(String str, Throwable th, boolean z, boolean z2) {
        if (m4136(LogLevel.ERROR)) {
            String str2 = str;
            if (str == null) {
                str2 = th.getClass().getSimpleName();
            }
            String m4134 = m4134(str2, false);
            if (z2) {
                Log.e("AppsFlyer_6.0.0", m4134, th);
            } else if (z) {
                Log.d("AppsFlyer_6.0.0", m4134);
            }
        }
        C0655af m4065 = C0655af.m4065();
        Throwable cause = th.getCause();
        m4065.m4072("exception", th.getClass().getSimpleName(), C0655af.m4061(cause == null ? th.getMessage() : cause.getMessage(), cause == null ? th.getStackTrace() : cause.getStackTrace()));
        Exlytics.increment();
    }

    /* renamed from: ǃ */
    static void m4137(String str) {
        if (!m4138()) {
            Log.d("AppsFlyer_6.0.0", m4134(str, false));
        }
        C0655af.m4065().m4072(null, "F", str);
    }

    /* renamed from: ǃ */
    private static boolean m4138() {
        return AppsFlyerProperties.getInstance().isLogsDisabledCompletely();
    }

    /* renamed from: ɩ */
    private static boolean m4136(LogLevel logLevel) {
        return logLevel.getLevel() <= AppsFlyerProperties.getInstance().getInt("logLevel", LogLevel.NONE.getLevel());
    }

    /* renamed from: Ι */
    static void m4135(String str) {
        if (m4136(LogLevel.WARNING)) {
            Log.w("AppsFlyer_6.0.0", m4134(str, false));
        }
        C0655af.m4065().m4072(null, "W", m4134(str, true));
    }

    /* renamed from: ι */
    private static String m4134(String str, boolean z) {
        String str2 = str;
        if (str == null) {
            str2 = "null";
        }
        if (z || LogLevel.VERBOSE.getLevel() <= AppsFlyerProperties.getInstance().getInt("logLevel", LogLevel.NONE.getLevel())) {
            StringBuilder sb = new StringBuilder("(");
            sb.append(System.currentTimeMillis() - f2864);
            sb.append(") [");
            sb.append(Thread.currentThread().getName());
            sb.append("] ");
            sb.append(str2);
            return sb.toString();
        }
        return str2;
    }
}
