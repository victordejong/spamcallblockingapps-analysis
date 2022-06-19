package p067i.p094b;
/* renamed from: i.b.c */
/* loaded from: classes2-dex2jar.jar:i/b/c.class */
public final class C2128c {

    /* renamed from: a */
    private static final C2126a f5832a;

    /* JADX WARN: Removed duplicated region for block: B:17:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0026 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    static {
        /*
            java.util.logging.Level r0 = java.util.logging.Level.WARNING
            r6 = r0
            r0 = 0
            r7 = r0
            java.lang.String r0 = "io.perfmark.impl.SecretPerfMarkImpl$PerfMarkImpl"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Throwable -> L11 java.lang.ClassNotFoundException -> L15
            r8 = r0
            r0 = 0
            r9 = r0
            goto L1c
        L11:
            r9 = move-exception
            goto L1a
        L15:
            r9 = move-exception
            java.util.logging.Level r0 = java.util.logging.Level.FINE
            r6 = r0
        L1a:
            r0 = 0
            r8 = r0
        L1c:
            r0 = r7
            r10 = r0
            r0 = r9
            r11 = r0
            r0 = r8
            if (r0 == 0) goto L55
            r0 = r8
            java.lang.Class<i.b.a> r1 = p067i.p094b.C2126a.class
            java.lang.Class r0 = r0.asSubclass(r1)     // Catch: java.lang.Throwable -> L50
            r1 = 1
            java.lang.Class[] r1 = new java.lang.Class[r1]     // Catch: java.lang.Throwable -> L50
            r2 = r1
            r3 = 0
            java.lang.Class<i.b.d> r4 = p067i.p094b.C2129d.class
            r2[r3] = r4     // Catch: java.lang.Throwable -> L50
            java.lang.reflect.Constructor r0 = r0.getConstructor(r1)     // Catch: java.lang.Throwable -> L50
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L50
            r2 = r1
            r3 = 0
            i.b.d r4 = p067i.p094b.C2126a.f5830a     // Catch: java.lang.Throwable -> L50
            r2[r3] = r4     // Catch: java.lang.Throwable -> L50
            java.lang.Object r0 = r0.newInstance(r1)     // Catch: java.lang.Throwable -> L50
            i.b.a r0 = (p067i.p094b.C2126a) r0     // Catch: java.lang.Throwable -> L50
            r10 = r0
            r0 = r9
            r11 = r0
            goto L55
        L50:
            r11 = move-exception
            r0 = r7
            r10 = r0
        L55:
            r0 = r10
            if (r0 == 0) goto L62
            r0 = r10
            p067i.p094b.C2128c.f5832a = r0
            goto L6f
        L62:
            i.b.a r0 = new i.b.a
            r1 = r0
            i.b.d r2 = p067i.p094b.C2126a.f5830a
            r1.<init>(r2)
            p067i.p094b.C2128c.f5832a = r0
        L6f:
            r0 = r11
            if (r0 == 0) goto L84
            java.lang.Class<i.b.c> r0 = p067i.p094b.C2128c.class
            java.lang.String r0 = r0.getName()
            java.util.logging.Logger r0 = java.util.logging.Logger.getLogger(r0)
            r1 = r6
            java.lang.String r2 = "Error during PerfMark.<clinit>"
            r3 = r11
            r0.log(r1, r2, r3)
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p067i.p094b.C2128c.m7601clinit():void");
    }

    private C2128c() {
    }

    /* renamed from: a */
    public static C2129d m136a(String str) {
        return f5832a.m144a(str, Long.MIN_VALUE);
    }

    /* renamed from: b */
    public static C2129d m135b(String str, long j) {
        return f5832a.m144a(str, j);
    }

    /* renamed from: c */
    public static void m134c(String str, C2129d c2129d) {
        f5832a.m143b(str, c2129d);
    }

    /* renamed from: d */
    public static void m133d(C2127b c2127b) {
        f5832a.m142c(c2127b);
    }

    /* renamed from: e */
    public static C2127b m132e() {
        return f5832a.m141d();
    }

    /* renamed from: f */
    public static void m131f(String str) {
        f5832a.m140e(str);
    }

    /* renamed from: g */
    public static void m130g(String str, C2129d c2129d) {
        f5832a.m139f(str, c2129d);
    }

    /* renamed from: h */
    public static void m129h(String str) {
        f5832a.m138g(str);
    }

    /* renamed from: i */
    public static void m128i(String str, C2129d c2129d) {
        f5832a.m137h(str, c2129d);
    }
}
