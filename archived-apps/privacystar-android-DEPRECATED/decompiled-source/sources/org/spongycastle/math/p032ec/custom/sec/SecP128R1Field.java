package org.spongycastle.math.p032ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat128;
import org.spongycastle.math.raw.Nat256;
/* renamed from: org.spongycastle.math.ec.custom.sec.SecP128R1Field */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/sec/SecP128R1Field.class */
public class SecP128R1Field {

    /* renamed from: M */
    private static final long f1568M = 4294967295L;
    private static final int P3s1 = 2147483646;
    private static final int PExt7s1 = 2147483646;

    /* renamed from: P */
    static final int[] f1569P = {-1, -1, -1, -3};
    static final int[] PExt = {1, 0, 0, 4, -2, -1, 3, -4};
    private static final int[] PExtInv = {-1, -1, -1, -5, 1, 0, -4, 3};

    public static void add(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat128.add(iArr, iArr2, iArr3) != 0 || ((iArr3[3] >>> 1) >= 2147483646 && Nat128.gte(iArr3, f1569P))) {
            addPInvTo(iArr3);
        }
    }

    public static void addExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat256.add(iArr, iArr2, iArr3) != 0 || ((iArr3[7] >>> 1) >= 2147483646 && Nat256.gte(iArr3, PExt))) {
            Nat.addTo(PExtInv.length, PExtInv, iArr3);
        }
    }

    public static void addOne(int[] iArr, int[] iArr2) {
        if (Nat.inc(4, iArr, iArr2) != 0 || ((iArr2[3] >>> 1) >= 2147483646 && Nat128.gte(iArr2, f1569P))) {
            addPInvTo(iArr2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void addPInvTo(int[] r9) {
        /*
            r0 = r9
            r1 = 0
            r0 = r0[r1]
            long r0 = (long) r0
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r1
            r1 = 1
            long r0 = r0 + r1
            r10 = r0
            r0 = r9
            r1 = 0
            r2 = r10
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r10
            r1 = 32
            long r0 = r0 >> r1
            r12 = r0
            r0 = r12
            r10 = r0
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0045
            r0 = r12
            r1 = r9
            r2 = 1
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            long r0 = r0 + r1
            r10 = r0
            r0 = r9
            r1 = 1
            r2 = r10
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r10
            r1 = 32
            long r0 = r0 >> r1
            r1 = r9
            r2 = 2
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            long r0 = r0 + r1
            r10 = r0
            r0 = r9
            r1 = 2
            r2 = r10
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r10
            r1 = 32
            long r0 = r0 >> r1
            r10 = r0
        L_0x0045:
            r0 = r9
            r1 = 3
            r2 = r10
            r3 = 4294967295(0xffffffff, double:2.1219957905E-314)
            r4 = r9
            r5 = 3
            r4 = r4[r5]
            long r4 = (long) r4
            long r3 = r3 & r4
            r4 = 2
            long r3 = r3 + r4
            long r2 = r2 + r3
            int r2 = (int) r2
            r0[r1] = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.sec.SecP128R1Field.addPInvTo(int[]):void");
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] fromBigInteger = Nat128.fromBigInteger(bigInteger);
        if ((fromBigInteger[3] >>> 1) >= 2147483646 && Nat128.gte(fromBigInteger, f1569P)) {
            Nat128.subFrom(f1569P, fromBigInteger);
        }
        return fromBigInteger;
    }

    public static void half(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            Nat.shiftDownBit(4, iArr, 0, iArr2);
        } else {
            Nat.shiftDownBit(4, iArr2, Nat128.add(iArr, f1569P, iArr2));
        }
    }

    public static void multiply(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] createExt = Nat128.createExt();
        Nat128.mul(iArr, iArr2, createExt);
        reduce(createExt, iArr3);
    }

    public static void multiplyAddToExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat128.mulAddTo(iArr, iArr2, iArr3) != 0 || ((iArr3[7] >>> 1) >= 2147483646 && Nat256.gte(iArr3, PExt))) {
            Nat.addTo(PExtInv.length, PExtInv, iArr3);
        }
    }

    public static void negate(int[] iArr, int[] iArr2) {
        if (Nat128.isZero(iArr)) {
            Nat128.zero(iArr2);
        } else {
            Nat128.sub(f1569P, iArr, iArr2);
        }
    }

    public static void reduce(int[] iArr, int[] iArr2) {
        long j = iArr[0];
        long j2 = iArr[1];
        long j3 = iArr[2];
        long j4 = iArr[3];
        long j5 = iArr[4];
        long j6 = iArr[5];
        long j7 = iArr[7] & 4294967295L;
        long j8 = (iArr[6] & 4294967295L) + (j7 << 1);
        long j9 = (j6 & 4294967295L) + (j8 << 1);
        long j10 = (j5 & 4294967295L) + (j9 << 1);
        long j11 = (j & 4294967295L) + j10;
        iArr2[0] = (int) j11;
        long j12 = (j2 & 4294967295L) + j9 + (j11 >>> 32);
        iArr2[1] = (int) j12;
        long j13 = (j3 & 4294967295L) + j8 + (j12 >>> 32);
        iArr2[2] = (int) j13;
        long j14 = (j4 & 4294967295L) + j7 + (j10 << 1) + (j13 >>> 32);
        iArr2[3] = (int) j14;
        reduce32((int) (j14 >>> 32), iArr2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v6, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void reduce32(int r8, int[] r9) {
        /*
        L_0x0000:
            r0 = r8
            if (r0 == 0) goto L_0x0080
            r0 = r8
            long r0 = (long) r0
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r1
            r10 = r0
            r0 = r9
            r1 = 0
            r0 = r0[r1]
            long r0 = (long) r0
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r1
            r1 = r10
            long r0 = r0 + r1
            r12 = r0
            r0 = r9
            r1 = 0
            r2 = r12
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r12
            r1 = 32
            long r0 = r0 >> r1
            r14 = r0
            r0 = r14
            r12 = r0
            r0 = r14
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x005f
            r0 = r14
            r1 = r9
            r2 = 1
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            long r0 = r0 + r1
            r12 = r0
            r0 = r9
            r1 = 1
            r2 = r12
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r12
            r1 = 32
            long r0 = r0 >> r1
            r1 = r9
            r2 = 2
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            long r0 = r0 + r1
            r12 = r0
            r0 = r9
            r1 = 2
            r2 = r12
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r12
            r1 = 32
            long r0 = r0 >> r1
            r12 = r0
        L_0x005f:
            r0 = r12
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            r2 = r9
            r3 = 3
            r2 = r2[r3]
            long r2 = (long) r2
            long r1 = r1 & r2
            r2 = r10
            r3 = 1
            long r2 = r2 << r3
            long r1 = r1 + r2
            long r0 = r0 + r1
            r12 = r0
            r0 = r9
            r1 = 3
            r2 = r12
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r12
            r1 = 32
            long r0 = r0 >> r1
            int r0 = (int) r0
            r8 = r0
            goto L_0x0000
        L_0x0080:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.sec.SecP128R1Field.reduce32(int, int[]):void");
    }

    public static void square(int[] iArr, int[] iArr2) {
        int[] createExt = Nat128.createExt();
        Nat128.square(iArr, createExt);
        reduce(createExt, iArr2);
    }

    public static void squareN(int[] iArr, int i, int[] iArr2) {
        int[] createExt = Nat128.createExt();
        Nat128.square(iArr, createExt);
        reduce(createExt, iArr2);
        while (true) {
            i--;
            if (i > 0) {
                Nat128.square(iArr2, createExt);
                reduce(createExt, iArr2);
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void subPInvFrom(int[] r9) {
        /*
            r0 = r9
            r1 = 0
            r0 = r0[r1]
            long r0 = (long) r0
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r1
            r1 = 1
            long r0 = r0 - r1
            r10 = r0
            r0 = r9
            r1 = 0
            r2 = r10
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r10
            r1 = 32
            long r0 = r0 >> r1
            r12 = r0
            r0 = r12
            r10 = r0
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0045
            r0 = r12
            r1 = r9
            r2 = 1
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            long r0 = r0 + r1
            r10 = r0
            r0 = r9
            r1 = 1
            r2 = r10
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r10
            r1 = 32
            long r0 = r0 >> r1
            r1 = r9
            r2 = 2
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            long r0 = r0 + r1
            r10 = r0
            r0 = r9
            r1 = 2
            r2 = r10
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r10
            r1 = 32
            long r0 = r0 >> r1
            r10 = r0
        L_0x0045:
            r0 = r9
            r1 = 3
            r2 = r10
            r3 = 4294967295(0xffffffff, double:2.1219957905E-314)
            r4 = r9
            r5 = 3
            r4 = r4[r5]
            long r4 = (long) r4
            long r3 = r3 & r4
            r4 = 2
            long r3 = r3 - r4
            long r2 = r2 + r3
            int r2 = (int) r2
            r0[r1] = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.sec.SecP128R1Field.subPInvFrom(int[]):void");
    }

    public static void subtract(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat128.sub(iArr, iArr2, iArr3) != 0) {
            subPInvFrom(iArr3);
        }
    }

    public static void subtractExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat.sub(10, iArr, iArr2, iArr3) != 0) {
            Nat.subFrom(PExtInv.length, PExtInv, iArr3);
        }
    }

    public static void twice(int[] iArr, int[] iArr2) {
        if (Nat.shiftUpBit(4, iArr, 0, iArr2) != 0 || ((iArr2[3] >>> 1) >= 2147483646 && Nat128.gte(iArr2, f1569P))) {
            addPInvTo(iArr2);
        }
    }
}
