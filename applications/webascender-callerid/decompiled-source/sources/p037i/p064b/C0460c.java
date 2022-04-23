package p037i.p064b;
/* renamed from: i.b.c */
/* loaded from: classes2-dex2jar.jar:i/b/c.class */
public final class C0460c {

    /* renamed from: a */
    private static final C0458a f1153a;

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
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: all -> 0x0011, ClassNotFoundException -> 0x0015
            r8 = r0
            r0 = 0
            r9 = r0
            goto L_0x001c
        L_0x0011:
            r9 = move-exception
            goto L_0x001a
        L_0x0015:
            r9 = move-exception
            java.util.logging.Level r0 = java.util.logging.Level.FINE
            r6 = r0
        L_0x001a:
            r0 = 0
            r8 = r0
        L_0x001c:
            r0 = r7
            r10 = r0
            r0 = r9
            r11 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0055
            r0 = r8
            java.lang.Class<i.b.a> r1 = p037i.p064b.C0458a.class
            java.lang.Class r0 = r0.asSubclass(r1)     // Catch: all -> 0x0050
            r1 = 1
            java.lang.Class[] r1 = new java.lang.Class[r1]     // Catch: all -> 0x0050
            r2 = r1
            r3 = 0
            java.lang.Class<i.b.d> r4 = p037i.p064b.C0461d.class
            r2[r3] = r4     // Catch: all -> 0x0050
            java.lang.reflect.Constructor r0 = r0.getConstructor(r1)     // Catch: all -> 0x0050
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: all -> 0x0050
            r2 = r1
            r3 = 0
            i.b.d r4 = p037i.p064b.C0458a.f1151a     // Catch: all -> 0x0050
            r2[r3] = r4     // Catch: all -> 0x0050
            java.lang.Object r0 = r0.newInstance(r1)     // Catch: all -> 0x0050
            i.b.a r0 = (p037i.p064b.C0458a) r0     // Catch: all -> 0x0050
            r10 = r0
            r0 = r9
            r11 = r0
            goto L_0x0055
        L_0x0050:
            r11 = move-exception
            r0 = r7
            r10 = r0
        L_0x0055:
            r0 = r10
            if (r0 == 0) goto L_0x0062
            r0 = r10
            p037i.p064b.C0460c.f1153a = r0
            goto L_0x006f
        L_0x0062:
            i.b.a r0 = new i.b.a
            r1 = r0
            i.b.d r2 = p037i.p064b.C0458a.f1151a
            r1.<init>(r2)
            p037i.p064b.C0460c.f1153a = r0
        L_0x006f:
            r0 = r11
            if (r0 == 0) goto L_0x0084
            java.lang.Class<i.b.c> r0 = p037i.p064b.C0460c.class
            java.lang.String r0 = r0.getName()
            java.util.logging.Logger r0 = java.util.logging.Logger.getLogger(r0)
            r1 = r6
            java.lang.String r2 = "Error during PerfMark.<clinit>"
            r3 = r11
            r0.log(r1, r2, r3)
        L_0x0084:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p037i.p064b.C0460c.m1555clinit():void");
    }

    private C0460c() {
    }

    /* renamed from: a */
    public static C0461d m136a(String str) {
        return f1153a.m144a(str, Long.MIN_VALUE);
    }

    /* renamed from: b */
    public static C0461d m135b(String str, long j) {
        return f1153a.m144a(str, j);
    }

    /* renamed from: c */
    public static void m134c(String str, C0461d dVar) {
        f1153a.m143b(str, dVar);
    }

    /* renamed from: d */
    public static void m133d(C0459b bVar) {
        f1153a.m142c(bVar);
    }

    /* renamed from: e */
    public static C0459b m132e() {
        return f1153a.m141d();
    }

    /* renamed from: f */
    public static void m131f(String str) {
        f1153a.m140e(str);
    }

    /* renamed from: g */
    public static void m130g(String str, C0461d dVar) {
        f1153a.m139f(str, dVar);
    }

    /* renamed from: h */
    public static void m129h(String str) {
        f1153a.m138g(str);
    }

    /* renamed from: i */
    public static void m128i(String str, C0461d dVar) {
        f1153a.m137h(str, dVar);
    }
}
