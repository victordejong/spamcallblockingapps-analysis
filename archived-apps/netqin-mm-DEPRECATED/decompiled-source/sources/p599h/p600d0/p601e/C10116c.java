package p599h.p600d0.p601e;

import java.util.Date;
import p599h.C10091a0;
import p599h.C10234r;
import p599h.C10250y;
import p599h.p600d0.p603g.C10139d;
import p599h.p600d0.p603g.C10141e;
/* renamed from: h.d0.e.c */
/* loaded from: classes2-dex2jar.jar:h/d0/e/c.class */
public final class C10116c {

    /* renamed from: a */
    public final C10250y f37338a;

    /* renamed from: b */
    public final C10091a0 f37339b;

    /* renamed from: h.d0.e.c$a */
    /* loaded from: classes2-dex2jar.jar:h/d0/e/c$a.class */
    public static class C10117a {

        /* renamed from: a */
        public final long f37340a;

        /* renamed from: b */
        public final C10250y f37341b;

        /* renamed from: c */
        public final C10091a0 f37342c;

        /* renamed from: d */
        public Date f37343d;

        /* renamed from: e */
        public String f37344e;

        /* renamed from: f */
        public Date f37345f;

        /* renamed from: g */
        public String f37346g;

        /* renamed from: h */
        public Date f37347h;

        /* renamed from: i */
        public long f37348i;

        /* renamed from: j */
        public long f37349j;

        /* renamed from: k */
        public String f37350k;

        /* renamed from: l */
        public int f37351l;

        public C10117a(long j, C10250y yVar, C10091a0 a0Var) {
            this.f37351l = -1;
            this.f37340a = j;
            this.f37341b = yVar;
            this.f37342c = a0Var;
            if (a0Var != null) {
                this.f37348i = a0Var.m1527p();
                this.f37349j = a0Var.m1529m();
                C10234r f = a0Var.m1536f();
                int b = f.m967b();
                for (int i = 0; i < b; i++) {
                    String a = f.m972a(i);
                    String b2 = f.m966b(i);
                    if ("Date".equalsIgnoreCase(a)) {
                        this.f37343d = C10139d.m1330a(b2);
                        this.f37344e = b2;
                    } else if ("Expires".equalsIgnoreCase(a)) {
                        this.f37347h = C10139d.m1330a(b2);
                    } else if ("Last-Modified".equalsIgnoreCase(a)) {
                        this.f37345f = C10139d.m1330a(b2);
                        this.f37346g = b2;
                    } else if ("ETag".equalsIgnoreCase(a)) {
                        this.f37350k = b2;
                    } else if ("Age".equalsIgnoreCase(a)) {
                        this.f37351l = C10141e.m1322a(b2, -1);
                    }
                }
            }
        }

        /* renamed from: a */
        public static boolean m1423a(C10250y yVar) {
            return (yVar.m820a("If-Modified-Since") == null && yVar.m820a("If-None-Match") == null) ? false : true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v4 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long m1424a() {
            /*
                r7 = this;
                r0 = r7
                java.util.Date r0 = r0.f37343d
                r8 = r0
                r0 = 0
                r9 = r0
                r0 = r8
                if (r0 == 0) goto L_0x0019
                r0 = 0
                r1 = r7
                long r1 = r1.f37349j
                r2 = r8
                long r2 = r2.getTime()
                long r1 = r1 - r2
                long r0 = java.lang.Math.max(r0, r1)
                r9 = r0
            L_0x0019:
                r0 = r7
                int r0 = r0.f37351l
                r11 = r0
                r0 = r9
                r12 = r0
                r0 = r11
                r1 = -1
                if (r0 == r1) goto L_0x0037
                r0 = r9
                java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.SECONDS
                r2 = r11
                long r2 = (long) r2
                long r1 = r1.toMillis(r2)
                long r0 = java.lang.Math.max(r0, r1)
                r12 = r0
            L_0x0037:
                r0 = r7
                long r0 = r0.f37349j
                r9 = r0
                r0 = r12
                r1 = r9
                r2 = r7
                long r2 = r2.f37348i
                long r1 = r1 - r2
                long r0 = r0 + r1
                r1 = r7
                long r1 = r1.f37340a
                r2 = r9
                long r1 = r1 - r2
                long r0 = r0 + r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p599h.p600d0.p601e.C10116c.C10117a.m1424a():long");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v39, types: [long] */
        /* JADX WARN: Type inference failed for: r7v0 */
        /* JADX WARN: Type inference failed for: r7v1, types: [long] */
        /* JADX WARN: Type inference failed for: r7v2 */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v12 */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Type inference failed for: r9v4 */
        /* JADX WARN: Unknown variable types count: 3 */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long m1422b() {
            /*
                r5 = this;
                r0 = r5
                h.a0 r0 = r0.f37342c
                h.d r0 = r0.m1540b()
                r6 = r0
                r0 = r6
                int r0 = r0.m1481d()
                r1 = -1
                if (r0 == r1) goto L_0x001c
                java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS
                r1 = r6
                int r1 = r1.m1481d()
                long r1 = (long) r1
                long r0 = r0.toMillis(r1)
                return r0
            L_0x001c:
                r0 = r5
                java.util.Date r0 = r0.f37347h
                r6 = r0
                r0 = 0
                r7 = r0
                r0 = r6
                if (r0 == 0) goto L_0x0057
                r0 = r5
                java.util.Date r0 = r0.f37343d
                r6 = r0
                r0 = r6
                if (r0 == 0) goto L_0x0039
                r0 = r6
                long r0 = r0.getTime()
                r9 = r0
                goto L_0x003f
            L_0x0039:
                r0 = r5
                long r0 = r0.f37349j
                r9 = r0
            L_0x003f:
                r0 = r5
                java.util.Date r0 = r0.f37347h
                long r0 = r0.getTime()
                r1 = r9
                long r0 = r0 - r1
                r9 = r0
                r0 = r9
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0055
                r0 = r9
                r7 = r0
            L_0x0055:
                r0 = r7
                return r0
            L_0x0057:
                r0 = r7
                r9 = r0
                r0 = r5
                java.util.Date r0 = r0.f37345f
                if (r0 == 0) goto L_0x00aa
                r0 = r7
                r9 = r0
                r0 = r5
                h.a0 r0 = r0.f37342c
                h.y r0 = r0.m1528n()
                h.s r0 = r0.m813g()
                java.lang.String r0 = r0.m930k()
                if (r0 != 0) goto L_0x00aa
                r0 = r5
                java.util.Date r0 = r0.f37343d
                r6 = r0
                r0 = r6
                if (r0 == 0) goto L_0x0086
                r0 = r6
                long r0 = r0.getTime()
                r9 = r0
                goto L_0x008c
            L_0x0086:
                r0 = r5
                long r0 = r0.f37348i
                r9 = r0
            L_0x008c:
                r0 = r9
                r1 = r5
                java.util.Date r1 = r1.f37345f
                long r1 = r1.getTime()
                long r0 = r0 - r1
                r11 = r0
                r0 = r7
                r9 = r0
                r0 = r11
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x00aa
                r0 = r11
                r1 = 10
                long r0 = r0 / r1
                r9 = r0
            L_0x00aa:
                r0 = r9
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p599h.p600d0.p601e.C10116c.C10117a.m1422b():long");
        }

        /* renamed from: c */
        public C10116c m1421c() {
            C10116c d = m1420d();
            C10116c cVar = d;
            if (d.f37338a != null) {
                cVar = d;
                if (this.f37341b.m819b().m1475j()) {
                    cVar = new C10116c(null, null);
                }
            }
            return cVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v23, types: [long] */
        /* JADX WARN: Type inference failed for: r12v1 */
        /* JADX WARN: Type inference failed for: r12v2, types: [long] */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Type inference failed for: r12v5 */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v1, types: [long] */
        /* JADX WARN: Type inference failed for: r14v3 */
        /* JADX WARN: Unknown variable types count: 3 */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final p599h.p600d0.p601e.C10116c m1420d() {
            /*
                Method dump skipped, instructions count: 440
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p599h.p600d0.p601e.C10116c.C10117a.m1420d():h.d0.e.c");
        }

        /* renamed from: e */
        public final boolean m1419e() {
            return this.f37342c.m1540b().m1481d() == -1 && this.f37347h == null;
        }
    }

    public C10116c(C10250y yVar, C10091a0 a0Var) {
        this.f37338a = yVar;
        this.f37339b = a0Var;
    }

    /* renamed from: a */
    public static boolean m1425a(C10091a0 a0Var, C10250y yVar) {
        int d = a0Var.m1538d();
        if (!(d == 200 || d == 410 || d == 414 || d == 501 || d == 203 || d == 204)) {
            if (d != 307) {
                if (!(d == 308 || d == 404 || d == 405)) {
                    switch (d) {
                        case NOTICE_VALUE:
                        case 301:
                            break;
                        case 302:
                            break;
                        default:
                            return false;
                    }
                }
            }
            if (a0Var.m1542a("Expires") == null && a0Var.m1540b().m1481d() == -1 && !a0Var.m1540b().m1482c() && !a0Var.m1540b().m1483b()) {
                return false;
            }
        }
        boolean z = false;
        if (!a0Var.m1540b().m1476i()) {
            z = false;
            if (!yVar.m819b().m1476i()) {
                z = true;
            }
        }
        return z;
    }
}
