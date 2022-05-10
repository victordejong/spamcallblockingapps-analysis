package p131c.p135b.p136a.p148e;

import android.util.Log;
import com.applovin.sdk.AppLovinSdk;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.e.t */
/* loaded from: classes-dex2jar.jar:c/b/a/e/t.class */
public class C2374t {

    /* renamed from: a */
    public final C2341l f9235a;

    public C2374t(C2341l lVar) {
        this.f9235a = lVar;
    }

    /* renamed from: c */
    public static void m30041c(String str, String str2, Throwable th) {
        Log.e(AppLovinSdk.TAG, "[" + str + "] " + str2, th);
    }

    /* renamed from: g */
    public static void m30037g(String str, String str2) {
        Log.d(AppLovinSdk.TAG, "[" + str + "] " + str2);
    }

    /* renamed from: h */
    public static void m30036h(String str, String str2) {
        Log.i(AppLovinSdk.TAG, "[" + str + "] " + str2);
    }

    /* renamed from: i */
    public static void m30035i(String str, String str2) {
        Log.w(AppLovinSdk.TAG, "[" + str + "] " + str2);
    }

    /* renamed from: j */
    public static void m30034j(String str, String str2) {
        m30041c(str, str2, null);
    }

    /* renamed from: a */
    public void m30049a(String str, Boolean bool, String str2) {
        m30048a(str, bool, str2, null);
    }

    /* renamed from: a */
    public void m30048a(String str, Boolean bool, String str2, Throwable th) {
        if (m30050a()) {
            String str3 = "[" + str + "] " + str2;
            Log.e(AppLovinSdk.TAG, str3, th);
            m30038f("ERROR", str3 + " : " + th);
        }
        if (bool.booleanValue() && ((Boolean) this.f9235a.m30291a(C2251d.C2256e.f8521C3)).booleanValue() && this.f9235a.m30245n() != null) {
            this.f9235a.m30245n().m30533a(str2, th);
        }
    }

    /* renamed from: a */
    public void m30047a(String str, String str2) {
        if (m30050a()) {
            m30045a(str, str2, false);
        }
    }

    /* renamed from: a */
    public void m30046a(String str, String str2, Throwable th) {
        if (m30050a()) {
            String str3 = "[" + str + "] " + str2;
            Log.w(AppLovinSdk.TAG, str3, th);
            m30038f("WARN", str3);
        }
    }

    /* renamed from: a */
    public final void m30045a(String str, String str2, boolean z) {
        int intValue;
        if (C2422o.m29851b(str2) && (intValue = ((Integer) this.f9235a.m30291a(C2251d.C2256e.f8757v)).intValue()) > 0) {
            int length = str2.length();
            int i = ((length + intValue) - 1) / intValue;
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = i2 * intValue;
                String substring = str2.substring(i3, Math.min(length, i3 + intValue));
                if (z) {
                    Log.d(str, substring);
                } else {
                    m30044b(str, substring);
                }
            }
        }
    }

    /* renamed from: a */
    public final boolean m30050a() {
        return this.f9235a.m30268c().m30583e();
    }

    /* renamed from: b */
    public void m30044b(String str, String str2) {
        if (m30050a()) {
            String str3 = "[" + str + "] " + str2;
            Log.d(AppLovinSdk.TAG, str3);
            m30038f("DEBUG", str3);
        }
    }

    /* renamed from: b */
    public void m30043b(String str, String str2, Throwable th) {
        m30048a(str, true, str2, th);
    }

    /* renamed from: c */
    public void m30042c(String str, String str2) {
        if (m30050a()) {
            String str3 = "[" + str + "] " + str2;
            Log.i(AppLovinSdk.TAG, str3);
            m30038f("INFO", str3);
        }
    }

    /* renamed from: d */
    public void m30040d(String str, String str2) {
        m30046a(str, str2, (Throwable) null);
    }

    /* renamed from: e */
    public void m30039e(String str, String str2) {
        m30043b(str, str2, null);
    }

    /* renamed from: f */
    public final void m30038f(String str, String str2) {
    }
}
