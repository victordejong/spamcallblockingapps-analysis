package p081h.p160h.p179e.p180a;

import android.app.Application;
import android.text.TextUtils;
import java.util.Locale;
import p081h.p160h.p179e.p180a.p183i.C6357a;
import p081h.p160h.p179e.p180a.p190p.C6432e;
import p081h.p160h.p179e.p180a.p190p.C6438i;
/* renamed from: h.h.e.a.e */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/e.class */
public class C6344e {

    /* renamed from: a */
    public static boolean f15774a = false;

    /* renamed from: b */
    public static boolean f15775b = false;

    /* renamed from: c */
    public static boolean f15776c = true;

    /* renamed from: d */
    public static boolean f15777d = false;

    /* renamed from: e */
    public static boolean f15778e = true;

    /* renamed from: f */
    public static boolean f15779f = true;

    /* renamed from: g */
    public static String f15780g;

    /* renamed from: a */
    public static void m23195a(Application application, String str, String str2, String str3, String str4, AbstractC6342c cVar) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            throw new NullPointerException();
        }
        C6334a.m23240b(application, str, true, cVar);
        f15780g = str2.toUpperCase(Locale.US);
        C6357a.m23029a(str3, str4, true);
        C6357a.m23019b(String.valueOf(C6432e.m22610a(application.getApplicationContext())), str2.toUpperCase(Locale.US));
    }

    /* renamed from: a */
    public static void m23194a(String str, String str2) {
        C6438i.m22585a(str);
        C6438i.m22580b(str2);
    }

    /* renamed from: a */
    public static void m23193a(boolean z) {
        f15777d = z;
        C6438i.m22581a(f15777d);
    }

    /* renamed from: a */
    public static boolean m23196a() {
        return f15777d;
    }

    /* renamed from: b */
    public static void m23191b(boolean z) {
        f15776c = z;
    }

    /* renamed from: b */
    public static boolean m23192b() {
        return f15778e;
    }

    /* renamed from: c */
    public static boolean m23190c() {
        return f15779f;
    }

    /* renamed from: d */
    public static boolean m23189d() {
        return f15774a;
    }

    /* renamed from: e */
    public static boolean m23188e() {
        return f15775b;
    }

    /* renamed from: f */
    public static String m23187f() {
        return f15780g;
    }

    /* renamed from: g */
    public static boolean m23186g() {
        return f15776c;
    }
}
