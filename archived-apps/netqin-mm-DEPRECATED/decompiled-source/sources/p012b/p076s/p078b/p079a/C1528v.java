package p012b.p076s.p078b.p079a;

import java.util.HashSet;
/* renamed from: b.s.b.a.v */
/* loaded from: classes-dex2jar.jar:b/s/b/a/v.class */
public final class C1528v {

    /* renamed from: a */
    public static final HashSet<String> f6239a = new HashSet<>();

    /* renamed from: b */
    public static String f6240b = "goog.exo.core";

    /* renamed from: a */
    public static String m32963a() {
        String str;
        synchronized (C1528v.class) {
            try {
                str = f6240b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    /* renamed from: a */
    public static void m32962a(String str) {
        synchronized (C1528v.class) {
            try {
                if (f6239a.add(str)) {
                    String str2 = f6240b;
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 2 + String.valueOf(str).length());
                    sb.append(str2);
                    sb.append(", ");
                    sb.append(str);
                    f6240b = sb.toString();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
