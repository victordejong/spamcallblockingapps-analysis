package org.spongycastle.math.raw;

import java.math.BigInteger;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/raw/Nat160.class */
public abstract class Nat160 {

    /* renamed from: M */
    private static final long f1642M = 4294967295L;

    public static int add(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L);
        iArr3[3] = (int) j4;
        long j5 = (j4 >>> 32) + (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L);
        iArr3[4] = (int) j5;
        return (int) (j5 >>> 32);
    }

    public static int addBothTo(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + (iArr3[0] & 4294967295L) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L) + (iArr3[1] & 4294967295L);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L) + (iArr3[2] & 4294967295L);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L) + (iArr3[3] & 4294967295L);
        iArr3[3] = (int) j4;
        long j5 = (j4 >>> 32) + (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L) + (iArr3[4] & 4294967295L);
        iArr3[4] = (int) j5;
        return (int) (j5 >>> 32);
    }

    public static int addTo(int[] iArr, int i, int[] iArr2, int i2, int i3) {
        int i4 = i2 + 0;
        long j = (i3 & 4294967295L) + (iArr[i + 0] & 4294967295L) + (iArr2[i4] & 4294967295L);
        iArr2[i4] = (int) j;
        int i5 = i2 + 1;
        long j2 = (j >>> 32) + (iArr[i + 1] & 4294967295L) + (iArr2[i5] & 4294967295L);
        iArr2[i5] = (int) j2;
        int i6 = i2 + 2;
        long j3 = (j2 >>> 32) + (iArr[i + 2] & 4294967295L) + (iArr2[i6] & 4294967295L);
        iArr2[i6] = (int) j3;
        int i7 = i2 + 3;
        long j4 = (j3 >>> 32) + (iArr[i + 3] & 4294967295L) + (iArr2[i7] & 4294967295L);
        iArr2[i7] = (int) j4;
        int i8 = i2 + 4;
        long j5 = (j4 >>> 32) + (iArr[i + 4] & 4294967295L) + (4294967295L & iArr2[i8]);
        iArr2[i8] = (int) j5;
        return (int) (j5 >>> 32);
    }

    public static int addTo(int[] iArr, int[] iArr2) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + 0;
        iArr2[0] = (int) j;
        long j2 = (j >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L);
        iArr2[1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L);
        iArr2[2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L);
        iArr2[3] = (int) j4;
        long j5 = (j4 >>> 32) + (iArr[4] & 4294967295L) + (4294967295L & iArr2[4]);
        iArr2[4] = (int) j5;
        return (int) (j5 >>> 32);
    }

    public static int addToEachOther(int[] iArr, int i, int[] iArr2, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = i + 0;
        long j = iArr[i9];
        long j2 = (j & 4294967295L) + (iArr2[i3] & 4294967295L) + 0;
        int i10 = (int) j2;
        iArr[i9] = i10;
        iArr2[i2 + 0] = i10;
        int i11 = i + 1;
        long j3 = iArr[i11];
        long j4 = (j2 >>> 32) + (j3 & 4294967295L) + (iArr2[i4] & 4294967295L);
        int i12 = (int) j4;
        iArr[i11] = i12;
        iArr2[i2 + 1] = i12;
        int i13 = i + 2;
        long j5 = iArr[i13];
        long j6 = (j4 >>> 32) + (j5 & 4294967295L) + (iArr2[i5] & 4294967295L);
        int i14 = (int) j6;
        iArr[i13] = i14;
        iArr2[i2 + 2] = i14;
        int i15 = i + 3;
        long j7 = iArr[i15];
        long j8 = (j6 >>> 32) + (j7 & 4294967295L) + (iArr2[i6] & 4294967295L);
        int i16 = (int) j8;
        iArr[i15] = i16;
        iArr2[i2 + 3] = i16;
        long j9 = (j8 >>> 32) + (iArr[i7] & 4294967295L) + (4294967295L & iArr2[i8]);
        int i17 = (int) j9;
        iArr[i + 4] = i17;
        iArr2[i2 + 4] = i17;
        return (int) (j9 >>> 32);
    }

    public static void copy(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
    }

    public static int[] create() {
        return new int[5];
    }

    public static int[] createExt() {
        return new int[10];
    }

    public static boolean diff(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        boolean gte = gte(iArr, i, iArr2, i2);
        if (gte) {
            sub(iArr, i, iArr2, i2, iArr3, i3);
        } else {
            sub(iArr2, i2, iArr, i, iArr3, i3);
        }
        return gte;
    }

    /* renamed from: eq */
    public static boolean m102eq(int[] iArr, int[] iArr2) {
        for (int i = 4; i >= 0; i--) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 160) {
            throw new IllegalArgumentException();
        }
        int[] create = create();
        int i = 0;
        while (bigInteger.signum() != 0) {
            create[i] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i++;
        }
        return create;
    }

    public static int getBit(int[] iArr, int i) {
        if (i == 0) {
            return iArr[0] & 1;
        }
        int i2 = i >> 5;
        if (i2 < 0 || i2 >= 5) {
            return 0;
        }
        return (iArr[i2] >>> (i & 31)) & 1;
    }

    public static boolean gte(int[] iArr, int i, int[] iArr2, int i2) {
        for (int i3 = 4; i3 >= 0; i3--) {
            int i4 = iArr[i + i3] ^ Integer.MIN_VALUE;
            int i5 = Integer.MIN_VALUE ^ iArr2[i2 + i3];
            if (i4 < i5) {
                return false;
            }
            if (i4 > i5) {
                return true;
            }
        }
        return true;
    }

    public static boolean gte(int[] iArr, int[] iArr2) {
        for (int i = 4; i >= 0; i--) {
            int i2 = iArr[i] ^ Integer.MIN_VALUE;
            int i3 = Integer.MIN_VALUE ^ iArr2[i];
            if (i2 < i3) {
                return false;
            }
            if (i2 > i3) {
                return true;
            }
        }
        return true;
    }

    public static boolean isOne(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 5; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[] iArr) {
        for (int i = 0; i < 5; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void mul(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = iArr2[i2 + 0] & 4294967295L;
        long j2 = iArr2[i2 + 1] & 4294967295L;
        long j3 = iArr2[i2 + 2] & 4294967295L;
        long j4 = iArr2[i2 + 3] & 4294967295L;
        long j5 = iArr2[i2 + 4] & 4294967295L;
        long j6 = iArr[i + 0] & 4294967295L;
        long j7 = (j6 * j) + 0;
        iArr3[i3 + 0] = (int) j7;
        long j8 = (j7 >>> 32) + (j6 * j2);
        iArr3[i3 + 1] = (int) j8;
        long j9 = (j8 >>> 32) + (j6 * j3);
        iArr3[i3 + 2] = (int) j9;
        long j10 = (j9 >>> 32) + (j6 * j4);
        iArr3[i3 + 3] = (int) j10;
        long j11 = (j10 >>> 32) + (j6 * j5);
        iArr3[i3 + 4] = (int) j11;
        iArr3[i3 + 5] = (int) (j11 >>> 32);
        for (int i4 = 1; i4 < 5; i4++) {
            i3++;
            long j12 = iArr[i + i4] & 4294967295L;
            int i5 = i3 + 0;
            long j13 = (j12 * j) + (iArr3[i5] & 4294967295L) + 0;
            iArr3[i5] = (int) j13;
            int i6 = i3 + 1;
            long j14 = (j13 >>> 32) + (j12 * j2) + (iArr3[i6] & 4294967295L);
            iArr3[i6] = (int) j14;
            int i7 = i3 + 2;
            long j15 = (j14 >>> 32) + (j12 * j3) + (iArr3[i7] & 4294967295L);
            iArr3[i7] = (int) j15;
            int i8 = i3 + 3;
            long j16 = (j15 >>> 32) + (j12 * j4) + (iArr3[i8] & 4294967295L);
            iArr3[i8] = (int) j16;
            int i9 = i3 + 4;
            long j17 = (j16 >>> 32) + (j12 * j5) + (iArr3[i9] & 4294967295L);
            iArr3[i9] = (int) j17;
            iArr3[i3 + 5] = (int) (j17 >>> 32);
        }
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = iArr2[0] & 4294967295L;
        long j2 = iArr2[1] & 4294967295L;
        long j3 = iArr2[2] & 4294967295L;
        long j4 = iArr2[3] & 4294967295L;
        long j5 = iArr2[4] & 4294967295L;
        long j6 = iArr[0] & 4294967295L;
        long j7 = (j6 * j) + 0;
        iArr3[0] = (int) j7;
        long j8 = (j7 >>> 32) + (j6 * j2);
        int i = 1;
        iArr3[1] = (int) j8;
        long j9 = (j8 >>> 32) + (j6 * j3);
        iArr3[2] = (int) j9;
        long j10 = (j9 >>> 32) + (j6 * j4);
        iArr3[3] = (int) j10;
        long j11 = (j10 >>> 32) + (j6 * j5);
        iArr3[4] = (int) j11;
        iArr3[5] = (int) (j11 >>> 32);
        while (i < 5) {
            long j12 = iArr[i] & 4294967295L;
            int i2 = i + 0;
            long j13 = (j12 * j) + (iArr3[i2] & 4294967295L) + 0;
            iArr3[i2] = (int) j13;
            int i3 = i + 1;
            long j14 = (j13 >>> 32) + (j12 * j2) + (iArr3[i3] & 4294967295L);
            iArr3[i3] = (int) j14;
            int i4 = i + 2;
            long j15 = (j14 >>> 32) + (j12 * j3) + (iArr3[i4] & 4294967295L);
            iArr3[i4] = (int) j15;
            int i5 = i + 3;
            long j16 = (j15 >>> 32) + (j12 * j4) + (iArr3[i5] & 4294967295L);
            iArr3[i5] = (int) j16;
            int i6 = i + 4;
            long j17 = (j16 >>> 32) + (j12 * j5) + (iArr3[i6] & 4294967295L);
            iArr3[i6] = (int) j17;
            iArr3[i + 5] = (int) (j17 >>> 32);
            i = i3;
        }
    }

    public static long mul33Add(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = i & 4294967295L;
        long j2 = iArr[i2 + 0] & 4294967295L;
        long j3 = (j * j2) + (iArr2[i3 + 0] & 4294967295L) + 0;
        iArr3[i4 + 0] = (int) j3;
        long j4 = iArr[i2 + 1] & 4294967295L;
        long j5 = (j3 >>> 32) + (j * j4) + j2 + (iArr2[i3 + 1] & 4294967295L);
        iArr3[i4 + 1] = (int) j5;
        long j6 = iArr[i2 + 2] & 4294967295L;
        long j7 = (j5 >>> 32) + (j * j6) + j4 + (iArr2[i3 + 2] & 4294967295L);
        iArr3[i4 + 2] = (int) j7;
        long j8 = iArr[i2 + 3] & 4294967295L;
        long j9 = (j7 >>> 32) + (j * j8) + j6 + (iArr2[i3 + 3] & 4294967295L);
        iArr3[i4 + 3] = (int) j9;
        long j10 = iArr[i2 + 4] & 4294967295L;
        long j11 = (j9 >>> 32) + (j * j10) + j8 + (iArr2[i3 + 4] & 4294967295L);
        iArr3[i4 + 4] = (int) j11;
        return (j11 >>> 32) + j10;
    }

    public static int mul33DWordAdd(int i, long j, int[] iArr, int i2) {
        long j2 = i & 4294967295L;
        long j3 = j & 4294967295L;
        int i3 = i2 + 0;
        long j4 = (j2 * j3) + (iArr[i3] & 4294967295L) + 0;
        iArr[i3] = (int) j4;
        long j5 = j >>> 32;
        int i4 = i2 + 1;
        long j6 = (j4 >>> 32) + (j2 * j5) + j3 + (iArr[i4] & 4294967295L);
        iArr[i4] = (int) j6;
        int i5 = i2 + 2;
        long j7 = (j6 >>> 32) + j5 + (iArr[i5] & 4294967295L);
        iArr[i5] = (int) j7;
        int i6 = i2 + 3;
        long j8 = (j7 >>> 32) + (iArr[i6] & 4294967295L);
        iArr[i6] = (int) j8;
        return (j8 >>> 32) == 0 ? 0 : Nat.incAt(5, iArr, i2, 4);
    }

    public static int mul33WordAdd(int i, int i2, int[] iArr, int i3) {
        long j = i2 & 4294967295L;
        int i4 = i3 + 0;
        long j2 = ((i & 4294967295L) * j) + (iArr[i4] & 4294967295L) + 0;
        iArr[i4] = (int) j2;
        int i5 = i3 + 1;
        long j3 = (j2 >>> 32) + j + (iArr[i5] & 4294967295L);
        iArr[i5] = (int) j3;
        int i6 = i3 + 2;
        long j4 = (j3 >>> 32) + (iArr[i6] & 4294967295L);
        iArr[i6] = (int) j4;
        return (j4 >>> 32) == 0 ? 0 : Nat.incAt(5, iArr, i3, 3);
    }

    public static int mulAddTo(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        long j = iArr2[i2 + 0] & 4294967295L;
        long j2 = iArr2[i2 + 1] & 4294967295L;
        long j3 = iArr2[i2 + 2] & 4294967295L;
        long j4 = iArr2[i2 + 3];
        long j5 = iArr2[i2 + 4];
        int i9 = 0;
        long j6 = 0;
        while (i9 < 5) {
            long j7 = iArr[i + i9] & 4294967295L;
            long j8 = (j7 * j) + (iArr3[i4] & 4294967295L) + 0;
            iArr3[i3 + 0] = (int) j8;
            int i10 = i3 + 1;
            long j9 = (j8 >>> 32) + (j7 * j2) + (iArr3[i10] & 4294967295L);
            iArr3[i10] = (int) j9;
            long j10 = (j9 >>> 32) + (j7 * j3) + (iArr3[i5] & 4294967295L);
            iArr3[i3 + 2] = (int) j10;
            long j11 = (j10 >>> 32) + (j7 * (j4 & 4294967295L)) + (iArr3[i6] & 4294967295L);
            iArr3[i3 + 3] = (int) j11;
            long j12 = (j11 >>> 32) + (j7 * (j5 & 4294967295L)) + (iArr3[i7] & 4294967295L);
            iArr3[i3 + 4] = (int) j12;
            long j13 = (j12 >>> 32) + j6 + (iArr3[i8] & 4294967295L);
            iArr3[i3 + 5] = (int) j13;
            j6 = j13 >>> 32;
            i9++;
            i3 = i10;
        }
        return (int) j6;
    }

    public static int mulAddTo(int[] iArr, int[] iArr2, int[] iArr3) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = 0;
        long j = iArr2[0] & 4294967295L;
        long j2 = iArr2[1] & 4294967295L;
        long j3 = iArr2[2];
        long j4 = iArr2[3];
        long j5 = iArr2[4] & 4294967295L;
        long j6 = 0;
        while (i6 < 5) {
            long j7 = iArr[i6] & 4294967295L;
            long j8 = (j7 * j) + (iArr3[i] & 4294967295L) + 0;
            iArr3[i6 + 0] = (int) j8;
            int i7 = i6 + 1;
            long j9 = (j8 >>> 32) + (j7 * j2) + (iArr3[i7] & 4294967295L);
            iArr3[i7] = (int) j9;
            long j10 = (j9 >>> 32) + (j7 * (j3 & 4294967295L)) + (iArr3[i2] & 4294967295L);
            iArr3[i6 + 2] = (int) j10;
            long j11 = (j10 >>> 32) + (j7 * (j4 & 4294967295L)) + (iArr3[i3] & 4294967295L);
            iArr3[i6 + 3] = (int) j11;
            long j12 = (j11 >>> 32) + (j7 * j5) + (iArr3[i4] & 4294967295L);
            iArr3[i6 + 4] = (int) j12;
            long j13 = (j12 >>> 32) + j6 + (iArr3[i5] & 4294967295L);
            iArr3[i6 + 5] = (int) j13;
            j6 = j13 >>> 32;
            i6 = i7;
        }
        return (int) j6;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int mulWord(int r9, int[] r10, int[] r11, int r12) {
        /*
            r0 = r9
            long r0 = (long) r0
            r13 = r0
            r0 = 0
            r15 = r0
            r0 = 0
            r9 = r0
        L_0x0009:
            r0 = r15
            r1 = r10
            r2 = r9
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            r2 = r13
            r3 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r2 = r2 & r3
            long r1 = r1 * r2
            long r0 = r0 + r1
            r15 = r0
            r0 = r11
            r1 = r12
            r2 = r9
            int r1 = r1 + r2
            r2 = r15
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r15
            r1 = 32
            long r0 = r0 >>> r1
            r17 = r0
            r0 = r9
            r1 = 1
            int r0 = r0 + r1
            r19 = r0
            r0 = r17
            r15 = r0
            r0 = r19
            r9 = r0
            r0 = r19
            r1 = 5
            if (r0 < r1) goto L_0x0009
            r0 = r17
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.raw.Nat160.mulWord(int, int[], int[], int):int");
    }

    public static int mulWordAddExt(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        long j = i & 4294967295L;
        int i4 = i3 + 0;
        long j2 = ((iArr[i2 + 0] & 4294967295L) * j) + (iArr2[i4] & 4294967295L) + 0;
        iArr2[i4] = (int) j2;
        int i5 = i3 + 1;
        long j3 = (j2 >>> 32) + ((iArr[i2 + 1] & 4294967295L) * j) + (iArr2[i5] & 4294967295L);
        iArr2[i5] = (int) j3;
        int i6 = i3 + 2;
        long j4 = (j3 >>> 32) + ((iArr[i2 + 2] & 4294967295L) * j) + (iArr2[i6] & 4294967295L);
        iArr2[i6] = (int) j4;
        int i7 = i3 + 3;
        long j5 = (j4 >>> 32) + ((iArr[i2 + 3] & 4294967295L) * j) + (iArr2[i7] & 4294967295L);
        iArr2[i7] = (int) j5;
        int i8 = i3 + 4;
        long j6 = (j5 >>> 32) + (j * (iArr[i2 + 4] & 4294967295L)) + (iArr2[i8] & 4294967295L);
        iArr2[i8] = (int) j6;
        return (int) (j6 >>> 32);
    }

    public static int mulWordDwordAdd(int i, long j, int[] iArr, int i2) {
        long j2 = i & 4294967295L;
        int i3 = i2 + 0;
        long j3 = ((j & 4294967295L) * j2) + (iArr[i3] & 4294967295L) + 0;
        iArr[i3] = (int) j3;
        int i4 = i2 + 1;
        long j4 = (j3 >>> 32) + (j2 * (j >>> 32)) + (iArr[i4] & 4294967295L);
        iArr[i4] = (int) j4;
        int i5 = i2 + 2;
        long j5 = (j4 >>> 32) + (iArr[i5] & 4294967295L);
        iArr[i5] = (int) j5;
        return (j5 >>> 32) == 0 ? 0 : Nat.incAt(5, iArr, i2, 3);
    }

    public static int mulWordsAdd(int i, int i2, int[] iArr, int i3) {
        int i4 = i3 + 0;
        long j = ((i2 & 4294967295L) * (i & 4294967295L)) + (iArr[i4] & 4294967295L) + 0;
        iArr[i4] = (int) j;
        int i5 = i3 + 1;
        long j2 = (j >>> 32) + (4294967295L & iArr[i5]);
        iArr[i5] = (int) j2;
        return (j2 >>> 32) == 0 ? 0 : Nat.incAt(5, iArr, i3, 2);
    }

    public static void square(int[] iArr, int i, int[] iArr2, int i2) {
        int i3;
        int i4;
        long j = iArr[i + 0] & 4294967295L;
        int i5 = 10;
        int i6 = 4;
        int i7 = 0;
        while (true) {
            int i8 = i6 - 1;
            long j2 = iArr[i + i6] & 4294967295L;
            long j3 = j2 * j2;
            int i9 = i5 - 1;
            iArr2[i2 + i9] = ((int) (j3 >>> 33)) | (i7 << 31);
            i5 = i9 - 1;
            iArr2[i2 + i5] = (int) (j3 >>> 1);
            i7 = (int) j3;
            if (i8 <= 0) {
                long j4 = j * j;
                iArr2[i2 + 0] = (int) j4;
                int i10 = (int) (j4 >>> 32);
                long j5 = iArr[i + 1] & 4294967295L;
                int i11 = i2 + 2;
                long j6 = iArr2[i11];
                long j7 = (((i7 << 31) & 4294967295L) | (j4 >>> 33)) + (j5 * j);
                int i12 = (int) j7;
                iArr2[i2 + 1] = (i12 << 1) | (i10 & 1);
                long j8 = iArr[i + 2] & 4294967295L;
                int i13 = i2 + 3;
                long j9 = iArr2[i13];
                int i14 = i2 + 4;
                long j10 = iArr2[i14];
                long j11 = (j6 & 4294967295L) + (j7 >>> 32) + (j8 * j);
                int i15 = (int) j11;
                iArr2[i11] = (i12 >>> 31) | (i15 << 1);
                long j12 = (j9 & 4294967295L) + (j11 >>> 32) + (j8 * j5);
                long j13 = (j10 & 4294967295L) + (j12 >>> 32);
                long j14 = iArr[i + 3] & 4294967295L;
                long j15 = (iArr2[i3] & 4294967295L) + (j13 >>> 32);
                int i16 = i2 + 6;
                long j16 = iArr2[i16];
                long j17 = (j12 & 4294967295L) + (j14 * j);
                int i17 = (int) j17;
                iArr2[i13] = (i15 >>> 31) | (i17 << 1);
                long j18 = (j13 & 4294967295L) + (j17 >>> 32) + (j14 * j5);
                long j19 = (j15 & 4294967295L) + (j18 >>> 32) + (j14 * j8);
                long j20 = (j16 & 4294967295L) + (j15 >>> 32) + (j19 >>> 32);
                long j21 = iArr[i + 4] & 4294967295L;
                long j22 = (iArr2[i4] & 4294967295L) + (j20 >>> 32);
                int i18 = i2 + 8;
                long j23 = iArr2[i18];
                long j24 = (j18 & 4294967295L) + (j * j21);
                int i19 = (int) j24;
                iArr2[i14] = (i17 >>> 31) | (i19 << 1);
                long j25 = (j19 & 4294967295L) + (j24 >>> 32) + (j5 * j21);
                long j26 = (j20 & 4294967295L) + (j25 >>> 32) + (j21 * j8);
                long j27 = (4294967295L & j22) + (j26 >>> 32) + (j21 * j14);
                long j28 = (j23 & 4294967295L) + (j22 >>> 32) + (j27 >>> 32);
                int i20 = (int) j25;
                iArr2[i2 + 5] = (i19 >>> 31) | (i20 << 1);
                int i21 = (int) j26;
                iArr2[i16] = (i20 >>> 31) | (i21 << 1);
                int i22 = (int) j27;
                iArr2[i2 + 7] = (i21 >>> 31) | (i22 << 1);
                int i23 = (int) j28;
                iArr2[i18] = (i22 >>> 31) | (i23 << 1);
                int i24 = i2 + 9;
                iArr2[i24] = ((iArr2[i24] + ((int) (j28 >>> 32))) << 1) | (i23 >>> 31);
                return;
            }
            i6 = i8;
        }
    }

    public static void square(int[] iArr, int[] iArr2) {
        long j = iArr[0] & 4294967295L;
        int i = 4;
        int i2 = 10;
        int i3 = 0;
        while (true) {
            int i4 = i - 1;
            long j2 = iArr[i] & 4294967295L;
            long j3 = j2 * j2;
            int i5 = i2 - 1;
            iArr2[i5] = (i3 << 31) | ((int) (j3 >>> 33));
            i2 = i5 - 1;
            iArr2[i2] = (int) (j3 >>> 1);
            i3 = (int) j3;
            if (i4 <= 0) {
                long j4 = j * j;
                iArr2[0] = (int) j4;
                int i6 = (int) (j4 >>> 32);
                long j5 = iArr[1] & 4294967295L;
                long j6 = iArr2[2];
                long j7 = ((j4 >>> 33) | ((i3 << 31) & 4294967295L)) + (j5 * j);
                int i7 = (int) j7;
                iArr2[1] = (i7 << 1) | (i6 & 1);
                long j8 = iArr[2] & 4294967295L;
                long j9 = iArr2[3];
                long j10 = iArr2[4];
                long j11 = (j6 & 4294967295L) + (j7 >>> 32) + (j8 * j);
                int i8 = (int) j11;
                iArr2[2] = (i7 >>> 31) | (i8 << 1);
                long j12 = (j9 & 4294967295L) + (j11 >>> 32) + (j8 * j5);
                long j13 = (j10 & 4294967295L) + (j12 >>> 32);
                long j14 = iArr[3] & 4294967295L;
                long j15 = (iArr2[5] & 4294967295L) + (j13 >>> 32);
                long j16 = iArr2[6];
                long j17 = (j12 & 4294967295L) + (j14 * j);
                int i9 = (int) j17;
                iArr2[3] = (i8 >>> 31) | (i9 << 1);
                long j18 = (j13 & 4294967295L) + (j17 >>> 32) + (j14 * j5);
                long j19 = (j15 & 4294967295L) + (j18 >>> 32) + (j14 * j8);
                long j20 = (j16 & 4294967295L) + (j15 >>> 32) + (j19 >>> 32);
                long j21 = iArr[4] & 4294967295L;
                long j22 = (iArr2[7] & 4294967295L) + (j20 >>> 32);
                long j23 = iArr2[8];
                long j24 = (j18 & 4294967295L) + (j21 * j);
                int i10 = (int) j24;
                iArr2[4] = (i9 >>> 31) | (i10 << 1);
                long j25 = (j19 & 4294967295L) + (j24 >>> 32) + (j21 * j5);
                long j26 = (j20 & 4294967295L) + (j25 >>> 32) + (j21 * j8);
                long j27 = (4294967295L & j22) + (j26 >>> 32) + (j21 * j14);
                long j28 = (j23 & 4294967295L) + (j22 >>> 32) + (j27 >>> 32);
                int i11 = (int) j25;
                iArr2[5] = (i10 >>> 31) | (i11 << 1);
                int i12 = (int) j26;
                iArr2[6] = (i11 >>> 31) | (i12 << 1);
                int i13 = (int) j27;
                iArr2[7] = (i12 >>> 31) | (i13 << 1);
                int i14 = (int) j28;
                iArr2[8] = (i13 >>> 31) | (i14 << 1);
                iArr2[9] = (i14 >>> 31) | ((iArr2[9] + ((int) (j28 >>> 32))) << 1);
                return;
            }
            i = i4;
        }
    }

    public static int sub(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = ((iArr[i + 0] & 4294967295L) - (iArr2[i2 + 0] & 4294967295L)) + 0;
        iArr3[i3 + 0] = (int) j;
        long j2 = (j >> 32) + ((iArr[i + 1] & 4294967295L) - (iArr2[i2 + 1] & 4294967295L));
        iArr3[i3 + 1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr[i + 2] & 4294967295L) - (iArr2[i2 + 2] & 4294967295L));
        iArr3[i3 + 2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr[i + 3] & 4294967295L) - (iArr2[i2 + 3] & 4294967295L));
        iArr3[i3 + 3] = (int) j4;
        long j5 = (j4 >> 32) + ((iArr[i + 4] & 4294967295L) - (iArr2[i2 + 4] & 4294967295L));
        iArr3[i3 + 4] = (int) j5;
        return (int) (j5 >> 32);
    }

    public static int sub(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = ((iArr[0] & 4294967295L) - (iArr2[0] & 4294967295L)) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >> 32) + ((iArr[1] & 4294967295L) - (iArr2[1] & 4294967295L));
        iArr3[1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr[2] & 4294967295L) - (iArr2[2] & 4294967295L));
        iArr3[2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr[3] & 4294967295L) - (iArr2[3] & 4294967295L));
        iArr3[3] = (int) j4;
        long j5 = (j4 >> 32) + ((iArr[4] & 4294967295L) - (iArr2[4] & 4294967295L));
        iArr3[4] = (int) j5;
        return (int) (j5 >> 32);
    }

    public static int subBothFrom(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (((iArr3[0] & 4294967295L) - (iArr[0] & 4294967295L)) - (iArr2[0] & 4294967295L)) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >> 32) + (((iArr3[1] & 4294967295L) - (iArr[1] & 4294967295L)) - (iArr2[1] & 4294967295L));
        iArr3[1] = (int) j2;
        long j3 = (j2 >> 32) + (((iArr3[2] & 4294967295L) - (iArr[2] & 4294967295L)) - (iArr2[2] & 4294967295L));
        iArr3[2] = (int) j3;
        long j4 = (j3 >> 32) + (((iArr3[3] & 4294967295L) - (iArr[3] & 4294967295L)) - (iArr2[3] & 4294967295L));
        iArr3[3] = (int) j4;
        long j5 = (j4 >> 32) + (((iArr3[4] & 4294967295L) - (iArr[4] & 4294967295L)) - (iArr2[4] & 4294967295L));
        iArr3[4] = (int) j5;
        return (int) (j5 >> 32);
    }

    public static int subFrom(int[] iArr, int i, int[] iArr2, int i2) {
        int i3 = i2 + 0;
        long j = ((iArr2[i3] & 4294967295L) - (iArr[i + 0] & 4294967295L)) + 0;
        iArr2[i3] = (int) j;
        int i4 = i2 + 1;
        long j2 = (j >> 32) + ((iArr2[i4] & 4294967295L) - (iArr[i + 1] & 4294967295L));
        iArr2[i4] = (int) j2;
        int i5 = i2 + 2;
        long j3 = (j2 >> 32) + ((iArr2[i5] & 4294967295L) - (iArr[i + 2] & 4294967295L));
        iArr2[i5] = (int) j3;
        int i6 = i2 + 3;
        long j4 = (j3 >> 32) + ((iArr2[i6] & 4294967295L) - (iArr[i + 3] & 4294967295L));
        iArr2[i6] = (int) j4;
        int i7 = i2 + 4;
        long j5 = (j4 >> 32) + ((iArr2[i7] & 4294967295L) - (iArr[i + 4] & 4294967295L));
        iArr2[i7] = (int) j5;
        return (int) (j5 >> 32);
    }

    public static int subFrom(int[] iArr, int[] iArr2) {
        long j = ((iArr2[0] & 4294967295L) - (iArr[0] & 4294967295L)) + 0;
        iArr2[0] = (int) j;
        long j2 = (j >> 32) + ((iArr2[1] & 4294967295L) - (iArr[1] & 4294967295L));
        iArr2[1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr2[2] & 4294967295L) - (iArr[2] & 4294967295L));
        iArr2[2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr2[3] & 4294967295L) - (iArr[3] & 4294967295L));
        iArr2[3] = (int) j4;
        long j5 = (j4 >> 32) + ((iArr2[4] & 4294967295L) - (4294967295L & iArr[4]));
        iArr2[4] = (int) j5;
        return (int) (j5 >> 32);
    }

    public static BigInteger toBigInteger(int[] iArr) {
        byte[] bArr = new byte[20];
        for (int i = 0; i < 5; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                Pack.intToBigEndian(i2, bArr, (4 - i) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void zero(int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
    }
}
