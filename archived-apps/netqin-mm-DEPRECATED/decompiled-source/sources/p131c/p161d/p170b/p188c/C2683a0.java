package p131c.p161d.p170b.p188c;

import java.util.HashSet;
/* renamed from: c.d.b.c.a0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/a0.class */
public final class C2683a0 {

    /* renamed from: a */
    public static final HashSet<String> f9816a = new HashSet<>();

    /* renamed from: b */
    public static String f9817b = "goog.exo.core";

    /* renamed from: a */
    public static String m29297a() {
        String str;
        synchronized (C2683a0.class) {
            try {
                str = f9817b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    /* renamed from: a */
    public static void m29296a(String str) {
        synchronized (C2683a0.class) {
            try {
                if (f9816a.add(str)) {
                    f9817b += ", " + str;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
