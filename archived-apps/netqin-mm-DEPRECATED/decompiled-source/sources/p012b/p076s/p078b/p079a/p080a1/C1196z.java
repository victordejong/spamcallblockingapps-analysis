package p012b.p076s.p078b.p079a.p080a1;
/* renamed from: b.s.b.a.a1.z */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/z.class */
public final class C1196z {

    /* renamed from: a */
    public long f4769a;

    /* renamed from: b */
    public long f4770b;

    /* renamed from: c */
    public volatile long f4771c = -9223372036854775807L;

    public C1196z(long j) {
        m34290c(j);
    }

    /* renamed from: d */
    public static long m34288d(long j) {
        return (j * 1000000) / 90000;
    }

    /* renamed from: e */
    public static long m34286e(long j) {
        return (j * 90000) / 1000000;
    }

    /* renamed from: a */
    public long m34295a() {
        return this.f4769a;
    }

    /* renamed from: a */
    public long m34294a(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (this.f4771c != -9223372036854775807L) {
            this.f4771c = j;
        } else {
            long j2 = this.f4769a;
            if (j2 != Long.MAX_VALUE) {
                this.f4770b = j2 - j;
            }
            synchronized (this) {
                this.f4771c = j;
                notifyAll();
            }
        }
        return j + this.f4770b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m34293b() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f4771c
            r6 = r0
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r8 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0020
            r0 = r5
            long r0 = r0.f4771c
            r8 = r0
            r0 = r5
            long r0 = r0.f4770b
            r1 = r8
            long r0 = r0 + r1
            r8 = r0
            goto L_0x002f
        L_0x0020:
            r0 = r5
            long r0 = r0.f4769a
            r6 = r0
            r0 = r6
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x002f
            r0 = r6
            r8 = r0
        L_0x002f:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p080a1.C1196z.m34293b():long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m34292b(long r8) {
        /*
            r7 = this;
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000c
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            return r0
        L_0x000c:
            r0 = r8
            r10 = r0
            r0 = r7
            long r0 = r0.f4771c
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0058
            r0 = r7
            long r0 = r0.f4771c
            long r0 = m34286e(r0)
            r12 = r0
            r0 = 4294967296(0x100000000, double:2.121995791E-314)
            r1 = r12
            long r0 = r0 + r1
            r1 = 8589934592(0x200000000, double:4.243991582E-314)
            long r0 = r0 / r1
            r10 = r0
            r0 = r10
            r1 = 1
            long r0 = r0 - r1
            r1 = 8589934592(0x200000000, double:4.243991582E-314)
            long r0 = r0 * r1
            r1 = r8
            long r0 = r0 + r1
            r14 = r0
            r0 = r8
            r1 = r10
            r2 = 8589934592(0x200000000, double:4.243991582E-314)
            long r1 = r1 * r2
            long r0 = r0 + r1
            r8 = r0
            r0 = r8
            r10 = r0
            r0 = r14
            r1 = r12
            long r0 = r0 - r1
            long r0 = java.lang.Math.abs(r0)
            r1 = r8
            r2 = r12
            long r1 = r1 - r2
            long r1 = java.lang.Math.abs(r1)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0058
            r0 = r14
            r10 = r0
        L_0x0058:
            r0 = r7
            r1 = r10
            long r1 = m34288d(r1)
            long r0 = r0.m34294a(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p080a1.C1196z.m34292b(long):long");
    }

    /* renamed from: c */
    public long m34291c() {
        long j = -9223372036854775807L;
        if (this.f4769a == Long.MAX_VALUE) {
            j = 0;
        } else if (this.f4771c != -9223372036854775807L) {
            j = this.f4770b;
        }
        return j;
    }

    /* renamed from: c */
    public void m34290c(long j) {
        synchronized (this) {
            C1160a.m34518b(this.f4771c == -9223372036854775807L);
            this.f4769a = j;
        }
    }

    /* renamed from: d */
    public void m34289d() {
        this.f4771c = -9223372036854775807L;
    }

    /* renamed from: e */
    public void m34287e() throws InterruptedException {
        synchronized (this) {
            while (this.f4771c == -9223372036854775807L) {
                wait();
            }
        }
    }
}
