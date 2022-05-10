package p131c.p161d.p170b.p188c.p203g1;
/* renamed from: c.d.b.c.g1.f0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/f0.class */
public final class C2881f0 {

    /* renamed from: a */
    public long f10470a;

    /* renamed from: b */
    public long f10471b;

    /* renamed from: c */
    public volatile long f10472c = -9223372036854775807L;

    public C2881f0(long j) {
        m28709c(j);
    }

    /* renamed from: d */
    public static long m28707d(long j) {
        return (j * 1000000) / 90000;
    }

    /* renamed from: e */
    public static long m28706e(long j) {
        return (j * 90000) / 1000000;
    }

    /* renamed from: a */
    public long m28714a() {
        return this.f10470a;
    }

    /* renamed from: a */
    public long m28713a(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (this.f10472c != -9223372036854775807L) {
            this.f10472c = j;
        } else {
            long j2 = this.f10470a;
            if (j2 != Long.MAX_VALUE) {
                this.f10471b = j2 - j;
            }
            synchronized (this) {
                this.f10472c = j;
                notifyAll();
            }
        }
        return j + this.f10471b;
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
    public long m28712b() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f10472c
            r6 = r0
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r8 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0020
            r0 = r5
            long r0 = r0.f10472c
            r8 = r0
            r0 = r5
            long r0 = r0.f10471b
            r1 = r8
            long r0 = r0 + r1
            r8 = r0
            goto L_0x002f
        L_0x0020:
            r0 = r5
            long r0 = r0.f10470a
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
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p203g1.C2881f0.m28712b():long");
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
    public long m28711b(long r8) {
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
            long r0 = r0.f10472c
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0058
            r0 = r7
            long r0 = r0.f10472c
            long r0 = m28706e(r0)
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
            long r1 = m28707d(r1)
            long r0 = r0.m28713a(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p203g1.C2881f0.m28711b(long):long");
    }

    /* renamed from: c */
    public long m28710c() {
        long j = -9223372036854775807L;
        if (this.f10470a == Long.MAX_VALUE) {
            j = 0;
        } else if (this.f10472c != -9223372036854775807L) {
            j = this.f10471b;
        }
        return j;
    }

    /* renamed from: c */
    public void m28709c(long j) {
        synchronized (this) {
            C2877e.m28731b(this.f10472c == -9223372036854775807L);
            this.f10470a = j;
        }
    }

    /* renamed from: d */
    public void m28708d() {
        this.f10472c = -9223372036854775807L;
    }
}
