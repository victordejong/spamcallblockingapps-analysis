package p033i.p063b;

import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: i.b.c */
/* loaded from: classes2-dex2jar.jar:i/b/c.class */
public final class C0440c {

    /* renamed from: a */
    private static final C0438a f1028a;

    static {
        Level level = Level.WARNING;
        C0438a aVar = null;
        Class<?> cls = Class.forName("io.perfmark.impl.SecretPerfMarkImpl$PerfMarkImpl");
        if (cls != null) {
            aVar = (C0438a) cls.asSubclass(C0438a.class).getConstructor(C0441d.class).newInstance(C0438a.f1026a);
        }
        if (aVar != null) {
            f1028a = aVar;
        } else {
            f1028a = new C0438a(C0438a.f1026a);
        }
        if (0 != 0) {
            Logger.getLogger(C0440c.class.getName()).log(level, "Error during PerfMark.<clinit>", (Throwable) null);
        }
    }

    private C0440c() {
    }

    /* renamed from: a */
    public static C0441d m136a(String str) {
        return f1028a.m144a(str, Long.MIN_VALUE);
    }

    /* renamed from: b */
    public static C0441d m135b(String str, long j) {
        return f1028a.m144a(str, j);
    }

    /* renamed from: c */
    public static void m134c(String str, C0441d dVar) {
        f1028a.m143b(str, dVar);
    }

    /* renamed from: d */
    public static void m133d(C0439b bVar) {
        f1028a.m142c(bVar);
    }

    /* renamed from: e */
    public static C0439b m132e() {
        return f1028a.m141d();
    }

    /* renamed from: f */
    public static void m131f(String str) {
        f1028a.m140e(str);
    }

    /* renamed from: g */
    public static void m130g(String str, C0441d dVar) {
        f1028a.m139f(str, dVar);
    }

    /* renamed from: h */
    public static void m129h(String str) {
        f1028a.m138g(str);
    }

    /* renamed from: i */
    public static void m128i(String str, C0441d dVar) {
        f1028a.m137h(str, dVar);
    }
}
