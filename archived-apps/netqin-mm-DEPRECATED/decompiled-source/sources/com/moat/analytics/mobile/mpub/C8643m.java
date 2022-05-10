package com.moat.analytics.mobile.mpub;

import android.os.Build;
import android.util.Base64;
import android.util.Log;
import com.android.volley.Request;
import com.moat.analytics.mobile.mpub.C8655s;
import com.moat.analytics.mobile.mpub.C8667w;
import java.net.URLEncoder;
import java.util.Locale;
/* renamed from: com.moat.analytics.mobile.mpub.m */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/m.class */
public class C8643m extends Exception {

    /* renamed from: b */
    public static Long f33532b;

    /* renamed from: a */
    public static final Long f33531a = 60000L;

    /* renamed from: c */
    public static Exception f33533c = null;

    public C8643m(String str) {
        super(str);
    }

    /* renamed from: a */
    public static String m4878a(String str, Exception exc) {
        if (exc instanceof C8643m) {
            return str + " failed: " + exc.getMessage();
        }
        return str + " failed unexpectedly";
    }

    /* renamed from: a */
    public static void m4880a() {
        Exception exc = f33533c;
        if (exc != null) {
            m4877b(exc);
            f33533c = null;
        }
    }

    /* renamed from: a */
    public static void m4879a(Exception exc) {
        if (C8667w.m4813a().f33574b) {
            Log.e("MoatException", Log.getStackTraceString(exc));
        } else {
            m4877b(exc);
        }
    }

    /* renamed from: b */
    public static void m4877b(Exception exc) {
        String str;
        String str2;
        String str3;
        try {
            if (C8667w.m4813a().f33573a == C8667w.EnumC8675d.ON) {
                int i = C8667w.m4813a().f33577e;
                if (i != 0) {
                    if (i < 100) {
                        double d = i;
                        Double.isNaN(d);
                        if (d / 100.0d < Math.random()) {
                            return;
                        }
                    }
                    StringBuilder sb = new StringBuilder("https://px.moatads.com/pixel.gif?e=0&i=MOATSDK1&ac=1");
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("&zt=");
                    sb2.append(exc instanceof C8643m ? 1 : 0);
                    sb.append(sb2.toString());
                    sb.append("&zr=" + i);
                    try {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("&zm=");
                        sb3.append(exc.getMessage() == null ? "null" : URLEncoder.encode(Base64.encodeToString(exc.getMessage().getBytes(Request.DEFAULT_PARAMS_ENCODING), 0), Request.DEFAULT_PARAMS_ENCODING));
                        sb.append(sb3.toString());
                        sb.append("&k=" + URLEncoder.encode(Base64.encodeToString(Log.getStackTraceString(exc).getBytes(Request.DEFAULT_PARAMS_ENCODING), 0), Request.DEFAULT_PARAMS_ENCODING));
                    } catch (Exception e) {
                    }
                    try {
                        sb.append("&zMoatMMAKv=9d24c90729bf464dce5d8fd1ace14a60656dbb2d");
                        str = "2.4.5";
                        try {
                            C8655s.C8657a d2 = C8655s.m4832d();
                            sb.append("&zMoatMMAKan=" + d2.m4826a());
                            str3 = d2.m4824b();
                            try {
                                str2 = Integer.toString(Build.VERSION.SDK_INT);
                            } catch (Exception e2) {
                                str2 = "";
                            }
                        } catch (Exception e3) {
                            str3 = "";
                            str2 = "";
                        }
                    } catch (Exception e4) {
                        str = "";
                        str3 = str;
                        str2 = "";
                    }
                    sb.append("&d=Android:MPUB:" + str3 + ":-");
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("&bo=");
                    sb4.append(str);
                    sb.append(sb4.toString());
                    sb.append("&bd=" + str2);
                    Long valueOf = Long.valueOf(System.currentTimeMillis());
                    sb.append("&t=" + valueOf);
                    sb.append("&de=" + String.format(Locale.ROOT, "%.0f", Double.valueOf(Math.floor(Math.random() * Math.pow(10.0d, 12.0d)))));
                    sb.append("&cs=0");
                    if (f33532b == null || valueOf.longValue() - f33532b.longValue() > f33531a.longValue()) {
                        C8653q.m4839b(sb.toString());
                        f33532b = valueOf;
                        return;
                    }
                    return;
                }
                return;
            }
            f33533c = exc;
        } catch (Exception e5) {
        }
    }
}
