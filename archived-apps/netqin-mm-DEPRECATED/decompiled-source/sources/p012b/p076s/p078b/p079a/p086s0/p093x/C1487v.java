package p012b.p076s.p078b.p079a.p086s0.p093x;

import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p080a1.C1196z;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1337a;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
/* renamed from: b.s.b.a.s0.x.v */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/v.class */
public final class C1487v extends AbstractC1337a {

    /* renamed from: b.s.b.a.s0.x.v$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/v$b.class */
    public static final class C1489b implements AbstractC1337a.AbstractC1344g {

        /* renamed from: a */
        public final C1196z f6112a;

        /* renamed from: b */
        public final C1184p f6113b;

        public C1489b(C1196z zVar) {
            this.f6112a = zVar;
            this.f6113b = new C1184p();
        }

        /* renamed from: a */
        public static void m33147a(C1184p pVar) {
            int b;
            int d = pVar.m34361d();
            if (pVar.m34372a() < 10) {
                pVar.m34358e(d);
                return;
            }
            pVar.m34356f(9);
            int r = pVar.m34344r() & 7;
            if (pVar.m34372a() < r) {
                pVar.m34358e(d);
                return;
            }
            pVar.m34356f(r);
            if (pVar.m34372a() < 4) {
                pVar.m34358e(d);
                return;
            }
            if (C1487v.m33149b(pVar.f4738a, pVar.m34363c()) == 443) {
                pVar.m34356f(4);
                int x = pVar.m34338x();
                if (pVar.m34372a() < x) {
                    pVar.m34358e(d);
                    return;
                }
                pVar.m34356f(x);
            }
            while (pVar.m34372a() >= 4 && (b = C1487v.m33149b(pVar.f4738a, pVar.m34363c())) != 442 && b != 441 && (b >>> 8) == 1) {
                pVar.m34356f(4);
                if (pVar.m34372a() < 2) {
                    pVar.m34358e(d);
                    return;
                }
                pVar.m34358e(Math.min(pVar.m34361d(), pVar.m34363c() + pVar.m34338x()));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v1, types: [long] */
        /* JADX WARN: Type inference failed for: r14v2 */
        /* JADX WARN: Type inference failed for: r14v3 */
        /* JADX WARN: Type inference failed for: r20v0 */
        /* JADX WARN: Type inference failed for: r20v3 */
        /* JADX WARN: Unknown variable types count: 1 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final p012b.p076s.p078b.p079a.p086s0.AbstractC1337a.C1343f m33146a(p012b.p076s.p078b.p079a.p080a1.C1184p r8, long r9, long r11) {
            /*
                r7 = this;
                r0 = -1
                r13 = r0
                r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                r14 = r0
                r0 = -1
                r16 = r0
            L_0x000b:
                r0 = r8
                int r0 = r0.m34372a()
                r1 = 4
                if (r0 < r1) goto L_0x00a7
                r0 = r8
                byte[] r0 = r0.f4738a
                r1 = r8
                int r1 = r1.m34363c()
                int r0 = p012b.p076s.p078b.p079a.p086s0.p093x.C1487v.m33150a(r0, r1)
                r1 = 442(0x1ba, float:6.2E-43)
                if (r0 == r1) goto L_0x002c
                r0 = r8
                r1 = 1
                r0.m34356f(r1)
                goto L_0x000b
            L_0x002c:
                r0 = r8
                r1 = 4
                r0.m34356f(r1)
                r0 = r8
                long r0 = p012b.p076s.p078b.p079a.p086s0.p093x.C1490w.m33133c(r0)
                r17 = r0
                r0 = r16
                r19 = r0
                r0 = r14
                r20 = r0
                r0 = r17
                r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0092
                r0 = r7
                b.s.b.a.a1.z r0 = r0.f6112a
                r1 = r17
                long r0 = r0.m34292b(r1)
                r20 = r0
                r0 = r20
                r1 = r9
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0075
                r0 = r14
                r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x006b
                r0 = r20
                r1 = r11
                b.s.b.a.s0.a$f r0 = p012b.p076s.p078b.p079a.p086s0.AbstractC1337a.C1343f.m33639a(r0, r1)
                return r0
            L_0x006b:
                r0 = r11
                r1 = r16
                long r1 = (long) r1
                long r0 = r0 + r1
                b.s.b.a.s0.a$f r0 = p012b.p076s.p078b.p079a.p086s0.AbstractC1337a.C1343f.m33640a(r0)
                return r0
            L_0x0075:
                r0 = 100000(0x186a0, double:4.94066E-319)
                r1 = r20
                long r0 = r0 + r1
                r1 = r9
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x008c
                r0 = r11
                r1 = r8
                int r1 = r1.m34363c()
                long r1 = (long) r1
                long r0 = r0 + r1
                b.s.b.a.s0.a$f r0 = p012b.p076s.p078b.p079a.p086s0.AbstractC1337a.C1343f.m33640a(r0)
                return r0
            L_0x008c:
                r0 = r8
                int r0 = r0.m34363c()
                r19 = r0
            L_0x0092:
                r0 = r8
                m33147a(r0)
                r0 = r8
                int r0 = r0.m34363c()
                r13 = r0
                r0 = r19
                r16 = r0
                r0 = r20
                r14 = r0
                goto L_0x000b
            L_0x00a7:
                r0 = r14
                r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x00bc
                r0 = r14
                r1 = r11
                r2 = r13
                long r2 = (long) r2
                long r1 = r1 + r2
                b.s.b.a.s0.a$f r0 = p012b.p076s.p078b.p079a.p086s0.AbstractC1337a.C1343f.m33637b(r0, r1)
                return r0
            L_0x00bc:
                b.s.b.a.s0.a$f r0 = p012b.p076s.p078b.p079a.p086s0.AbstractC1337a.C1343f.f5304d
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p093x.C1487v.C1489b.m33146a(b.s.b.a.a1.p, long, long):b.s.b.a.s0.a$f");
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1337a.AbstractC1344g
        /* renamed from: a */
        public AbstractC1337a.C1343f mo33145a(AbstractC1351h hVar, long j, AbstractC1337a.C1340c cVar) throws IOException, InterruptedException {
            long position = hVar.getPosition();
            int min = (int) Math.min(20000L, hVar.mo33622a() - position);
            this.f6113b.m34362c(min);
            hVar.mo33619a(this.f6113b.f4738a, 0, min);
            return m33146a(this.f6113b, j, position);
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1337a.AbstractC1344g
        /* renamed from: a */
        public void mo33148a() {
            this.f6113b.m34368a(C1167d0.f4693f);
        }
    }

    public C1487v(C1196z zVar, long j, long j2) {
        super(new AbstractC1337a.C1339b(), new C1489b(zVar), j, 0L, j + 1, 0L, j2, 188L, 1000);
    }

    /* renamed from: b */
    public static int m33149b(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
