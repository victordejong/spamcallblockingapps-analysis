package p530d.p541c.p543b0.p557i;

import java.util.concurrent.atomic.AtomicLong;
/* renamed from: d.c.b0.i.b */
/* loaded from: classes2-dex2jar.jar:d/c/b0/i/b.class */
public final class C9800b {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m2013a(long r5, long r7) {
        /*
            r0 = r5
            r1 = r7
            long r0 = r0 + r1
            r7 = r0
            r0 = r7
            r5 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0010
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r5 = r0
        L_0x0010:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p530d.p541c.p543b0.p557i.C9800b.m2013a(long, long):long");
    }

    /* renamed from: a */
    public static long m2012a(AtomicLong atomicLong, long j) {
        long j2;
        do {
            j2 = atomicLong.get();
            if (j2 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
        } while (!atomicLong.compareAndSet(j2, m2013a(j2, j)));
        return j2;
    }

    /* renamed from: b */
    public static long m2011b(long j, long j2) {
        long j3 = j * j2;
        if (((j | j2) >>> 31) == 0 || j3 / j == j2) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    /* renamed from: b */
    public static long m2010b(AtomicLong atomicLong, long j) {
        long j2;
        do {
            j2 = atomicLong.get();
            if (j2 == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            if (j2 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
        } while (!atomicLong.compareAndSet(j2, m2013a(j2, j)));
        return j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m2009c(java.util.concurrent.atomic.AtomicLong r6, long r7) {
        /*
        L_0x0000:
            r0 = r6
            long r0 = r0.get()
            r9 = r0
            r0 = r9
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0011
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            return r0
        L_0x0011:
            r0 = r9
            r1 = r7
            long r0 = r0 - r1
            r11 = r0
            r0 = r11
            r13 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x004c
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r15 = r0
            r0 = r15
            java.lang.String r1 = "More produced than requested: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r15
            r1 = r11
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r2 = r15
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            p530d.p541c.p560e0.C9815a.m1923b(r0)
            r0 = 0
            r13 = r0
        L_0x004c:
            r0 = r6
            r1 = r9
            r2 = r13
            boolean r0 = r0.compareAndSet(r1, r2)
            if (r0 == 0) goto L_0x0000
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p530d.p541c.p543b0.p557i.C9800b.m2009c(java.util.concurrent.atomic.AtomicLong, long):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m2008d(java.util.concurrent.atomic.AtomicLong r6, long r7) {
        /*
        L_0x0000:
            r0 = r6
            long r0 = r0.get()
            r9 = r0
            r0 = r9
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0011
            r0 = -9223372036854775808
            return r0
        L_0x0011:
            r0 = r9
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001d
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            return r0
        L_0x001d:
            r0 = r9
            r1 = r7
            long r0 = r0 - r1
            r11 = r0
            r0 = r11
            r13 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0058
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r15 = r0
            r0 = r15
            java.lang.String r1 = "More produced than requested: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r15
            r1 = r11
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r2 = r15
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            p530d.p541c.p560e0.C9815a.m1923b(r0)
            r0 = 0
            r13 = r0
        L_0x0058:
            r0 = r6
            r1 = r9
            r2 = r13
            boolean r0 = r0.compareAndSet(r1, r2)
            if (r0 == 0) goto L_0x0000
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p530d.p541c.p543b0.p557i.C9800b.m2008d(java.util.concurrent.atomic.AtomicLong, long):long");
    }
}
