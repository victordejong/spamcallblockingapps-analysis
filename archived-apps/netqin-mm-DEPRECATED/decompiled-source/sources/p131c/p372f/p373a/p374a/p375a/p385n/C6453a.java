package p131c.p372f.p373a.p374a.p375a.p385n;

import org.json.JSONObject;
/* renamed from: c.f.a.a.a.n.a */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/n/a.class */
public class C6453a {
    /* renamed from: a */
    public static String m20847a() {
        return m20846a("publishReadyEventForDeferredAdSession()");
    }

    /* renamed from: a */
    public static String m20846a(String str) {
        return "javascript: if(window.avidbridge!==undefined){avidbridge." + str + "}";
    }

    /* renamed from: a */
    public static String m20845a(String str, String str2) {
        return m20846a("publishVideoEvent(" + JSONObject.quote(str) + "," + str2 + ")");
    }

    /* renamed from: b */
    public static String m20844b(String str) {
        return "javascript: " + str;
    }

    /* renamed from: c */
    public static String m20843c(String str) {
        return m20846a("publishVideoEvent(" + JSONObject.quote(str) + ")");
    }

    /* renamed from: d */
    public static String m20842d(String str) {
        return m20846a("setAppState(" + JSONObject.quote(str) + ")");
    }

    /* renamed from: e */
    public static String m20841e(String str) {
        return m20846a("setAvidAdSessionContext(" + str + ")");
    }

    /* renamed from: f */
    public static String m20840f(String str) {
        return m20846a("setNativeViewState(" + str + ")");
    }
}
