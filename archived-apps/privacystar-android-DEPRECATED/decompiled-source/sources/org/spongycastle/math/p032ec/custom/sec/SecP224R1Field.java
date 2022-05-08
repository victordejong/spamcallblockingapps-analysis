package org.spongycastle.math.p032ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat224;
/* renamed from: org.spongycastle.math.ec.custom.sec.SecP224R1Field */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/sec/SecP224R1Field.class */
public class SecP224R1Field {

    /* renamed from: M */
    private static final long f1601M = 4294967295L;

    /* renamed from: P6 */
    private static final int f1603P6 = -1;
    private static final int PExt13 = -1;

    /* renamed from: P */
    static final int[] f1602P = {1, 0, 0, -1, -1, -1, -1};
    static final int[] PExt = {1, 0, 0, -2, -1, -1, 0, 2, 0, 0, -2, -1, -1, -1};
    private static final int[] PExtInv = {-1, -1, -1, 1, 0, 0, -1, -3, -1, -1, 1};

    public static void add(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat224.add(iArr, iArr2, iArr3) != 0 || (iArr3[6] == -1 && Nat224.gte(iArr3, f1602P))) {
            addPInvTo(iArr3);
        }
    }

    public static void addExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if ((Nat.add(14, iArr, iArr2, iArr3) != 0 || (iArr3[13] == -1 && Nat.gte(14, iArr3, PExt))) && Nat.addTo(PExtInv.length, PExtInv, iArr3) != 0) {
            Nat.incAt(14, iArr3, PExtInv.length);
        }
    }

    public static void addOne(int[] iArr, int[] iArr2) {
        if (Nat.inc(7, iArr, iArr2) != 0 || (iArr2[6] == -1 && Nat224.gte(iArr2, f1602P))) {
            addPInvTo(iArr2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void addPInvTo(int[] r7) {
        /*
            r0 = r7
            r1 = 0
            r0 = r0[r1]
            long r0 = (long) r0
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r1
            r1 = 1
            long r0 = r0 - r1
            r8 = r0
            r0 = r7
            r1 = 0
            r2 = r8
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r8
            r1 = 32
            long r0 = r0 >> r1
            r10 = r0
            r0 = r10
            r8 = r0
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0045
            r0 = r10
            r1 = r7
            r2 = 1
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            long r0 = r0 + r1
            r8 = r0
            r0 = r7
            r1 = 1
            r2 = r8
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r8
            r1 = 32
            long r0 = r0 >> r1
            r1 = r7
            r2 = 2
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            long r0 = r0 + r1
            r8 = r0
            r0 = r7
            r1 = 2
            r2 = r8
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r8
            r1 = 32
            long r0 = r0 >> r1
            r8 = r0
        L_0x0045:
            r0 = r8
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            r2 = r7
            r3 = 3
            r2 = r2[r3]
            long r2 = (long) r2
            long r1 = r1 & r2
            r2 = 1
            long r1 = r1 + r2
            long r0 = r0 + r1
            r8 = r0
            r0 = r7
            r1 = 3
            r2 = r8
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r8
            r1 = 32
            long r0 = r0 >> r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0068
            r0 = 7
            r1 = r7
            r2 = 4
            int r0 = org.spongycastle.math.raw.Nat.incAt(r0, r1, r2)
        L_0x0068:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.sec.SecP224R1Field.addPInvTo(int[]):void");
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] fromBigInteger = Nat224.fromBigInteger(bigInteger);
        if (fromBigInteger[6] == -1 && Nat224.gte(fromBigInteger, f1602P)) {
            Nat224.subFrom(f1602P, fromBigInteger);
        }
        return fromBigInteger;
    }

    public static void half(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            Nat.shiftDownBit(7, iArr, 0, iArr2);
        } else {
            Nat.shiftDownBit(7, iArr2, Nat224.add(iArr, f1602P, iArr2));
        }
    }

    public static void multiply(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] createExt = Nat224.createExt();
        Nat224.mul(iArr, iArr2, createExt);
        reduce(createExt, iArr3);
    }

    public static void multiplyAddToExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if ((Nat224.mulAddTo(iArr, iArr2, iArr3) != 0 || (iArr3[13] == -1 && Nat.gte(14, iArr3, PExt))) && Nat.addTo(PExtInv.length, PExtInv, iArr3) != 0) {
            Nat.incAt(14, iArr3, PExtInv.length);
        }
    }

    public static void negate(int[] iArr, int[] iArr2) {
        if (Nat224.isZero(iArr)) {
            Nat224.zero(iArr2);
        } else {
            Nat224.sub(f1602P, iArr, iArr2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v3, types: [long] */
    /* JADX WARN: Type inference failed for: r23v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void reduce(int[] r7, int[] r8) {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.sec.SecP224R1Field.reduce(int[], int[]):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void reduce32(int r7, int[] r8) {
        /*
            Method dump skipped, instructions count: 171
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.sec.SecP224R1Field.reduce32(int, int[]):void");
    }

    public static void square(int[] iArr, int[] iArr2) {
        int[] createExt = Nat224.createExt();
        Nat224.square(iArr, createExt);
        reduce(createExt, iArr2);
    }

    public static void squareN(int[] iArr, int i, int[] iArr2) {
        int[] createExt = Nat224.createExt();
        Nat224.square(iArr, createExt);
        reduce(createExt, iArr2);
        while (true) {
            i--;
            if (i > 0) {
                Nat224.square(iArr2, createExt);
                reduce(createExt, iArr2);
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void subPInvFrom(int[] r7) {
        /*
            r0 = r7
            r1 = 0
            r0 = r0[r1]
            long r0 = (long) r0
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r1
            r1 = 1
            long r0 = r0 + r1
            r8 = r0
            r0 = r7
            r1 = 0
            r2 = r8
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r8
            r1 = 32
            long r0 = r0 >> r1
            r10 = r0
            r0 = r10
            r8 = r0
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0045
            r0 = r10
            r1 = r7
            r2 = 1
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            long r0 = r0 + r1
            r8 = r0
            r0 = r7
            r1 = 1
            r2 = r8
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r8
            r1 = 32
            long r0 = r0 >> r1
            r1 = r7
            r2 = 2
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            long r0 = r0 + r1
            r8 = r0
            r0 = r7
            r1 = 2
            r2 = r8
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r8
            r1 = 32
            long r0 = r0 >> r1
            r8 = r0
        L_0x0045:
            r0 = r8
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            r2 = r7
            r3 = 3
            r2 = r2[r3]
            long r2 = (long) r2
            long r1 = r1 & r2
            r2 = 1
            long r1 = r1 - r2
            long r0 = r0 + r1
            r8 = r0
            r0 = r7
            r1 = 3
            r2 = r8
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r8
            r1 = 32
            long r0 = r0 >> r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0068
            r0 = 7
            r1 = r7
            r2 = 4
            int r0 = org.spongycastle.math.raw.Nat.decAt(r0, r1, r2)
        L_0x0068:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.sec.SecP224R1Field.subPInvFrom(int[]):void");
    }

    public static void subtract(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat224.sub(iArr, iArr2, iArr3) != 0) {
            subPInvFrom(iArr3);
        }
    }

    public static void subtractExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat.sub(14, iArr, iArr2, iArr3) != 0 && Nat.subFrom(PExtInv.length, PExtInv, iArr3) != 0) {
            Nat.decAt(14, iArr3, PExtInv.length);
        }
    }

    public static void twice(int[] iArr, int[] iArr2) {
        if (Nat.shiftUpBit(7, iArr, 0, iArr2) != 0 || (iArr2[6] == -1 && Nat224.gte(iArr2, f1602P))) {
            addPInvTo(iArr2);
        }
    }
}
