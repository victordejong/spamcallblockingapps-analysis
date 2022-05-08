package org.spongycastle.math.raw;

import java.math.BigInteger;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/raw/Nat.class */
public abstract class Nat {

    /* renamed from: M */
    private static final long f1640M = 4294967295L;

    public static int add(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = j + (iArr[i2] & 4294967295L) + (4294967295L & iArr2[i2]);
            iArr3[i2] = (int) j2;
            j = j2 >>> 32;
        }
        return (int) j;
    }

    public static int add33At(int i, int i2, int[] iArr, int i3) {
        int i4 = i3 + 0;
        long j = (iArr[i4] & 4294967295L) + (i2 & 4294967295L);
        iArr[i4] = (int) j;
        int i5 = i3 + 1;
        long j2 = (j >>> 32) + (4294967295L & iArr[i5]) + 1;
        iArr[i5] = (int) j2;
        return (j2 >>> 32) == 0 ? 0 : incAt(i, iArr, i3 + 2);
    }

    public static int add33At(int i, int i2, int[] iArr, int i3, int i4) {
        int i5 = i3 + i4;
        long j = (iArr[i5] & 4294967295L) + (i2 & 4294967295L);
        iArr[i5] = (int) j;
        int i6 = i5 + 1;
        long j2 = (j >>> 32) + (4294967295L & iArr[i6]) + 1;
        iArr[i6] = (int) j2;
        return (j2 >>> 32) == 0 ? 0 : incAt(i, iArr, i3, i4 + 2);
    }

    public static int add33To(int i, int i2, int[] iArr) {
        int i3 = 0;
        long j = (iArr[0] & 4294967295L) + (i2 & 4294967295L);
        iArr[0] = (int) j;
        long j2 = (j >>> 32) + (4294967295L & iArr[1]) + 1;
        iArr[1] = (int) j2;
        if ((j2 >>> 32) != 0) {
            i3 = incAt(i, iArr, 2);
        }
        return i3;
    }

    public static int add33To(int i, int i2, int[] iArr, int i3) {
        int i4 = i3 + 0;
        long j = (iArr[i4] & 4294967295L) + (i2 & 4294967295L);
        iArr[i4] = (int) j;
        int i5 = i3 + 1;
        long j2 = (j >>> 32) + (4294967295L & iArr[i5]) + 1;
        iArr[i5] = (int) j2;
        return (j2 >>> 32) == 0 ? 0 : incAt(i, iArr, i3, 2);
    }

    public static int addBothTo(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = 0;
        for (int i5 = 0; i5 < i; i5++) {
            int i6 = i4 + i5;
            long j2 = j + (iArr[i2 + i5] & 4294967295L) + (iArr2[i3 + i5] & 4294967295L) + (iArr3[i6] & 4294967295L);
            iArr3[i6] = (int) j2;
            j = j2 >>> 32;
        }
        return (int) j;
    }

    public static int addBothTo(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = j + (iArr[i2] & 4294967295L) + (iArr2[i2] & 4294967295L) + (4294967295L & iArr3[i2]);
            iArr3[i2] = (int) j2;
            j = j2 >>> 32;
        }
        return (int) j;
    }

    public static int addDWordAt(int i, long j, int[] iArr, int i2) {
        int i3 = i2 + 0;
        long j2 = (iArr[i3] & 4294967295L) + (j & 4294967295L);
        iArr[i3] = (int) j2;
        int i4 = i2 + 1;
        long j3 = (j2 >>> 32) + (4294967295L & iArr[i4]) + (j >>> 32);
        iArr[i4] = (int) j3;
        return (j3 >>> 32) == 0 ? 0 : incAt(i, iArr, i2 + 2);
    }

    public static int addDWordAt(int i, long j, int[] iArr, int i2, int i3) {
        int i4 = i2 + i3;
        long j2 = (iArr[i4] & 4294967295L) + (j & 4294967295L);
        iArr[i4] = (int) j2;
        int i5 = i4 + 1;
        long j3 = (j2 >>> 32) + (4294967295L & iArr[i5]) + (j >>> 32);
        iArr[i5] = (int) j3;
        return (j3 >>> 32) == 0 ? 0 : incAt(i, iArr, i2, i3 + 2);
    }

    public static int addDWordTo(int i, long j, int[] iArr) {
        int i2 = 0;
        long j2 = (iArr[0] & 4294967295L) + (j & 4294967295L);
        iArr[0] = (int) j2;
        long j3 = (j2 >>> 32) + (4294967295L & iArr[1]) + (j >>> 32);
        iArr[1] = (int) j3;
        if ((j3 >>> 32) != 0) {
            i2 = incAt(i, iArr, 2);
        }
        return i2;
    }

    public static int addDWordTo(int i, long j, int[] iArr, int i2) {
        int i3 = i2 + 0;
        long j2 = (iArr[i3] & 4294967295L) + (j & 4294967295L);
        iArr[i3] = (int) j2;
        int i4 = i2 + 1;
        long j3 = (j2 >>> 32) + (4294967295L & iArr[i4]) + (j >>> 32);
        iArr[i4] = (int) j3;
        return (j3 >>> 32) == 0 ? 0 : incAt(i, iArr, i2, 2);
    }

    public static int addTo(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        long j = 0;
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = i3 + i4;
            long j2 = j + (iArr[i2 + i4] & 4294967295L) + (4294967295L & iArr2[i5]);
            iArr2[i5] = (int) j2;
            j = j2 >>> 32;
        }
        return (int) j;
    }

    public static int addTo(int i, int[] iArr, int[] iArr2) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = j + (iArr[i2] & 4294967295L) + (4294967295L & iArr2[i2]);
            iArr2[i2] = (int) j2;
            j = j2 >>> 32;
        }
        return (int) j;
    }

    public static int addWordAt(int i, int i2, int[] iArr, int i3) {
        long j = (i2 & 4294967295L) + (4294967295L & iArr[i3]);
        iArr[i3] = (int) j;
        return (j >>> 32) == 0 ? 0 : incAt(i, iArr, i3 + 1);
    }

    public static int addWordAt(int i, int i2, int[] iArr, int i3, int i4) {
        int i5 = i3 + i4;
        long j = (i2 & 4294967295L) + (4294967295L & iArr[i5]);
        iArr[i5] = (int) j;
        return (j >>> 32) == 0 ? 0 : incAt(i, iArr, i3, i4 + 1);
    }

    public static int addWordTo(int i, int i2, int[] iArr) {
        int i3 = 0;
        long j = (i2 & 4294967295L) + (4294967295L & iArr[0]);
        iArr[0] = (int) j;
        if ((j >>> 32) != 0) {
            i3 = incAt(i, iArr, 1);
        }
        return i3;
    }

    public static int addWordTo(int i, int i2, int[] iArr, int i3) {
        long j = (i2 & 4294967295L) + (4294967295L & iArr[i3]);
        iArr[i3] = (int) j;
        return (j >>> 32) == 0 ? 0 : incAt(i, iArr, i3, 1);
    }

    public static void copy(int i, int[] iArr, int[] iArr2) {
        System.arraycopy(iArr, 0, iArr2, 0, i);
    }

    public static int[] copy(int i, int[] iArr) {
        int[] iArr2 = new int[i];
        System.arraycopy(iArr, 0, iArr2, 0, i);
        return iArr2;
    }

    public static int[] create(int i) {
        return new int[i];
    }

    public static long[] create64(int i) {
        return new long[i];
    }

    public static int dec(int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2] - 1;
            iArr[i2] = i3;
            if (i3 != -1) {
                return 0;
            }
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0035, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (r10 >= r5) goto L_0x0035;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
        r7[r10] = r6[r10];
        r10 = r10 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int dec(int r5, int[] r6, int[] r7) {
        /*
            r0 = 0
            r8 = r0
        L_0x0002:
            r0 = r8
            r1 = r5
            if (r0 >= r1) goto L_0x0037
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            r1 = 1
            int r0 = r0 - r1
            r9 = r0
            r0 = r7
            r1 = r8
            r2 = r9
            r0[r1] = r2
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r10 = r0
            r0 = r10
            r8 = r0
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L_0x0002
        L_0x0021:
            r0 = r10
            r1 = r5
            if (r0 >= r1) goto L_0x0035
            r0 = r7
            r1 = r10
            r2 = r6
            r3 = r10
            r2 = r2[r3]
            r0[r1] = r2
            int r10 = r10 + 1
            goto L_0x0021
        L_0x0035:
            r0 = 0
            return r0
        L_0x0037:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.raw.Nat.dec(int, int[], int[]):int");
    }

    public static int decAt(int i, int[] iArr, int i2) {
        while (i2 < i) {
            int i3 = iArr[i2] - 1;
            iArr[i2] = i3;
            if (i3 != -1) {
                return 0;
            }
            i2++;
        }
        return -1;
    }

    public static int decAt(int i, int[] iArr, int i2, int i3) {
        while (i3 < i) {
            int i4 = i2 + i3;
            int i5 = iArr[i4] - 1;
            iArr[i4] = i5;
            if (i5 != -1) {
                return 0;
            }
            i3++;
        }
        return -1;
    }

    /* renamed from: eq */
    public static boolean m104eq(int i, int[] iArr, int[] iArr2) {
        while (true) {
            i--;
            if (i < 0) {
                return true;
            }
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
    }

    public static int[] fromBigInteger(int i, BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > i) {
            throw new IllegalArgumentException();
        }
        int[] create = create((i + 31) >> 5);
        int i2 = 0;
        while (bigInteger.signum() != 0) {
            create[i2] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i2++;
        }
        return create;
    }

    public static int getBit(int[] iArr, int i) {
        if (i == 0) {
            return iArr[0] & 1;
        }
        int i2 = i >> 5;
        if (i2 < 0 || i2 >= iArr.length) {
            return 0;
        }
        return (iArr[i2] >>> (i & 31)) & 1;
    }

    public static boolean gte(int i, int[] iArr, int[] iArr2) {
        while (true) {
            i--;
            if (i < 0) {
                return true;
            }
            int i2 = iArr[i] ^ Integer.MIN_VALUE;
            int i3 = Integer.MIN_VALUE ^ iArr2[i];
            if (i2 < i3) {
                return false;
            }
            if (i2 > i3) {
                return true;
            }
        }
    }

    public static int inc(int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2] + 1;
            iArr[i2] = i3;
            if (i3 != 0) {
                return 0;
            }
        }
        return 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0023, code lost:
        if (r10 >= r5) goto L_0x0034;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0026, code lost:
        r7[r10] = r6[r10];
        r10 = r10 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int inc(int r5, int[] r6, int[] r7) {
        /*
            r0 = 0
            r8 = r0
        L_0x0002:
            r0 = r8
            r1 = r5
            if (r0 >= r1) goto L_0x0036
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            r0 = r7
            r1 = r8
            r2 = r9
            r0[r1] = r2
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r10 = r0
            r0 = r10
            r8 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0002
        L_0x0020:
            r0 = r10
            r1 = r5
            if (r0 >= r1) goto L_0x0034
            r0 = r7
            r1 = r10
            r2 = r6
            r3 = r10
            r2 = r2[r3]
            r0[r1] = r2
            int r10 = r10 + 1
            goto L_0x0020
        L_0x0034:
            r0 = 0
            return r0
        L_0x0036:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.raw.Nat.inc(int, int[], int[]):int");
    }

    public static int incAt(int i, int[] iArr, int i2) {
        while (i2 < i) {
            int i3 = iArr[i2] + 1;
            iArr[i2] = i3;
            if (i3 != 0) {
                return 0;
            }
            i2++;
        }
        return 1;
    }

    public static int incAt(int i, int[] iArr, int i2, int i3) {
        while (i3 < i) {
            int i4 = i2 + i3;
            int i5 = iArr[i4] + 1;
            iArr[i4] = i5;
            if (i5 != 0) {
                return 0;
            }
            i3++;
        }
        return 1;
    }

    public static boolean isOne(int i, int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i2 = 1; i2 < i; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void mul(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        iArr3[i4 + i] = mulWord(i, iArr[i2], iArr2, i3, iArr3, i4);
        for (int i5 = 1; i5 < i; i5++) {
            int i6 = i4 + i5;
            iArr3[i6 + i] = mulWordAddTo(i, iArr[i2 + i5], iArr2, i3, iArr3, i6);
        }
    }

    public static void mul(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        iArr3[i] = mulWord(i, iArr[0], iArr2, iArr3);
        for (int i2 = 1; i2 < i; i2++) {
            iArr3[i2 + i] = mulWordAddTo(i, iArr[i2], iArr2, 0, iArr3, i2);
        }
    }

    public static int mul31BothAdd(int i, int i2, int[] iArr, int i3, int[] iArr2, int[] iArr3, int i4) {
        int i5;
        long j = i2 & 4294967295L;
        long j2 = i3;
        long j3 = 0;
        int i6 = 0;
        do {
            long j4 = j3 + ((iArr[i6] & 4294967295L) * j) + ((iArr2[i6] & 4294967295L) * (j2 & 4294967295L)) + (iArr3[i5] & 4294967295L);
            iArr3[i4 + i6] = (int) j4;
            j3 = j4 >>> 32;
            i6++;
        } while (i6 < i);
        return (int) j3;
    }

    public static int mulAddTo(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = 0;
        for (int i5 = 0; i5 < i; i5++) {
            int i6 = i4 + i;
            long mulWordAddTo = (mulWordAddTo(i, iArr[i2 + i5], iArr2, i3, iArr3, i4) & 4294967295L) + j + (4294967295L & iArr3[i6]);
            iArr3[i6] = (int) mulWordAddTo;
            j = mulWordAddTo >>> 32;
            i4++;
        }
        return (int) j;
    }

    public static int mulAddTo(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = i2 + i;
            long mulWordAddTo = (mulWordAddTo(i, iArr[i2], iArr2, 0, iArr3, i2) & 4294967295L) + j + (4294967295L & iArr3[i3]);
            iArr3[i3] = (int) mulWordAddTo;
            j = mulWordAddTo >>> 32;
        }
        return (int) j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int mulWord(int r9, int r10, int[] r11, int r12, int[] r13, int r14) {
        /*
            r0 = r10
            long r0 = (long) r0
            r15 = r0
            r0 = 0
            r17 = r0
            r0 = 0
            r10 = r0
        L_0x0009:
            r0 = r17
            r1 = r11
            r2 = r12
            r3 = r10
            int r2 = r2 + r3
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            r2 = r15
            r3 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r2 = r2 & r3
            long r1 = r1 * r2
            long r0 = r0 + r1
            r17 = r0
            r0 = r13
            r1 = r14
            r2 = r10
            int r1 = r1 + r2
            r2 = r17
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r17
            r1 = 32
            long r0 = r0 >>> r1
            r19 = r0
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r21 = r0
            r0 = r19
            r17 = r0
            r0 = r21
            r10 = r0
            r0 = r21
            r1 = r9
            if (r0 < r1) goto L_0x0009
            r0 = r19
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.raw.Nat.mulWord(int, int, int[], int, int[], int):int");
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
    public static int mulWord(int r9, int r10, int[] r11, int[] r12) {
        /*
            r0 = r10
            long r0 = (long) r0
            r13 = r0
            r0 = 0
            r15 = r0
            r0 = 0
            r10 = r0
        L_0x0009:
            r0 = r15
            r1 = r11
            r2 = r10
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
            r0 = r12
            r1 = r10
            r2 = r15
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r15
            r1 = 32
            long r0 = r0 >>> r1
            r17 = r0
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r19 = r0
            r0 = r17
            r15 = r0
            r0 = r19
            r10 = r0
            r0 = r19
            r1 = r9
            if (r0 < r1) goto L_0x0009
            r0 = r17
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.raw.Nat.mulWord(int, int, int[], int[]):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int mulWordAddTo(int r9, int r10, int[] r11, int r12, int[] r13, int r14) {
        /*
            r0 = r10
            long r0 = (long) r0
            r15 = r0
            r0 = 0
            r17 = r0
            r0 = 0
            r10 = r0
        L_0x0009:
            r0 = r11
            r1 = r12
            r2 = r10
            int r1 = r1 + r2
            r0 = r0[r1]
            long r0 = (long) r0
            r19 = r0
            r0 = r14
            r1 = r10
            int r0 = r0 + r1
            r21 = r0
            r0 = r17
            r1 = r19
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            r2 = r15
            r3 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r2 = r2 & r3
            long r1 = r1 * r2
            r2 = r13
            r3 = r21
            r2 = r2[r3]
            long r2 = (long) r2
            r3 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r2 = r2 & r3
            long r1 = r1 + r2
            long r0 = r0 + r1
            r17 = r0
            r0 = r13
            r1 = r21
            r2 = r17
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r17
            r1 = 32
            long r0 = r0 >>> r1
            r19 = r0
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r21 = r0
            r0 = r19
            r17 = r0
            r0 = r21
            r10 = r0
            r0 = r21
            r1 = r9
            if (r0 < r1) goto L_0x0009
            r0 = r19
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.raw.Nat.mulWordAddTo(int, int, int[], int, int[], int):int");
    }

    public static int mulWordDwordAddAt(int i, int i2, long j, int[] iArr, int i3) {
        long j2 = i2 & 4294967295L;
        int i4 = i3 + 0;
        long j3 = ((j & 4294967295L) * j2) + (iArr[i4] & 4294967295L) + 0;
        iArr[i4] = (int) j3;
        int i5 = i3 + 1;
        long j4 = (j3 >>> 32) + (j2 * (j >>> 32)) + (iArr[i5] & 4294967295L);
        iArr[i5] = (int) j4;
        int i6 = i3 + 2;
        long j5 = (j4 >>> 32) + (iArr[i6] & 4294967295L);
        iArr[i6] = (int) j5;
        return (j5 >>> 32) == 0 ? 0 : incAt(i, iArr, i3 + 3);
    }

    public static int shiftDownBit(int i, int[] iArr, int i2) {
        while (true) {
            i--;
            if (i < 0) {
                return i2 << 31;
            }
            int i3 = iArr[i];
            iArr[i] = (i2 << 31) | (i3 >>> 1);
            i2 = i3;
        }
    }

    public static int shiftDownBit(int i, int[] iArr, int i2, int i3) {
        while (true) {
            i--;
            if (i < 0) {
                return i3 << 31;
            }
            int i4 = i2 + i;
            int i5 = iArr[i4];
            iArr[i4] = (i3 << 31) | (i5 >>> 1);
            i3 = i5;
        }
    }

    public static int shiftDownBit(int i, int[] iArr, int i2, int i3, int[] iArr2, int i4) {
        while (true) {
            i--;
            if (i < 0) {
                return i3 << 31;
            }
            int i5 = iArr[i2 + i];
            iArr2[i4 + i] = (i3 << 31) | (i5 >>> 1);
            i3 = i5;
        }
    }

    public static int shiftDownBit(int i, int[] iArr, int i2, int[] iArr2) {
        while (true) {
            i--;
            if (i < 0) {
                return i2 << 31;
            }
            int i3 = iArr[i];
            iArr2[i] = (i2 << 31) | (i3 >>> 1);
            i2 = i3;
        }
    }

    public static int shiftDownBits(int i, int[] iArr, int i2, int i3) {
        while (true) {
            i--;
            if (i < 0) {
                return i3 << (-i2);
            }
            int i4 = iArr[i];
            iArr[i] = (i3 << (-i2)) | (i4 >>> i2);
            i3 = i4;
        }
    }

    public static int shiftDownBits(int i, int[] iArr, int i2, int i3, int i4) {
        while (true) {
            i--;
            if (i < 0) {
                return i4 << (-i3);
            }
            int i5 = i2 + i;
            int i6 = iArr[i5];
            iArr[i5] = (i4 << (-i3)) | (i6 >>> i3);
            i4 = i6;
        }
    }

    public static int shiftDownBits(int i, int[] iArr, int i2, int i3, int i4, int[] iArr2, int i5) {
        while (true) {
            i--;
            if (i < 0) {
                return i4 << (-i3);
            }
            int i6 = iArr[i2 + i];
            iArr2[i5 + i] = (i4 << (-i3)) | (i6 >>> i3);
            i4 = i6;
        }
    }

    public static int shiftDownBits(int i, int[] iArr, int i2, int i3, int[] iArr2) {
        while (true) {
            i--;
            if (i < 0) {
                return i3 << (-i2);
            }
            int i4 = iArr[i];
            iArr2[i] = (i3 << (-i2)) | (i4 >>> i2);
            i3 = i4;
        }
    }

    public static int shiftDownWord(int i, int[] iArr, int i2) {
        while (true) {
            i--;
            if (i < 0) {
                return i2;
            }
            i2 = iArr[i];
            iArr[i] = i2;
        }
    }

    public static int shiftUpBit(int i, int[] iArr, int i2) {
        int i3 = 0;
        int i4 = i2;
        while (i3 < i) {
            int i5 = iArr[i3];
            iArr[i3] = (i4 >>> 31) | (i5 << 1);
            i3++;
            i4 = i5;
        }
        return i4 >>> 31;
    }

    public static int shiftUpBit(int i, int[] iArr, int i2, int i3) {
        int i4 = 0;
        while (i4 < i) {
            int i5 = i2 + i4;
            int i6 = iArr[i5];
            iArr[i5] = (i3 >>> 31) | (i6 << 1);
            i4++;
            i3 = i6;
        }
        return i3 >>> 31;
    }

    public static int shiftUpBit(int i, int[] iArr, int i2, int i3, int[] iArr2, int i4) {
        int i5 = 0;
        int i6 = i3;
        while (i5 < i) {
            int i7 = iArr[i2 + i5];
            iArr2[i4 + i5] = (i6 >>> 31) | (i7 << 1);
            i5++;
            i6 = i7;
        }
        return i6 >>> 31;
    }

    public static int shiftUpBit(int i, int[] iArr, int i2, int[] iArr2) {
        int i3 = 0;
        int i4 = i2;
        while (i3 < i) {
            int i5 = iArr[i3];
            iArr2[i3] = (i4 >>> 31) | (i5 << 1);
            i3++;
            i4 = i5;
        }
        return i4 >>> 31;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long shiftUpBit64(int r8, long[] r9, int r10, long r11, long[] r13, int r14) {
        /*
            r0 = 0
            r15 = r0
        L_0x0003:
            r0 = r15
            r1 = r8
            if (r0 >= r1) goto L_0x002b
            r0 = r9
            r1 = r10
            r2 = r15
            int r1 = r1 + r2
            r0 = r0[r1]
            r16 = r0
            r0 = r13
            r1 = r14
            r2 = r15
            int r1 = r1 + r2
            r2 = r11
            r3 = 63
            long r2 = r2 >>> r3
            r3 = r16
            r4 = 1
            long r3 = r3 << r4
            long r2 = r2 | r3
            r0[r1] = r2
            int r15 = r15 + 1
            r0 = r16
            r11 = r0
            goto L_0x0003
        L_0x002b:
            r0 = r11
            r1 = 63
            long r0 = r0 >>> r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.raw.Nat.shiftUpBit64(int, long[], int, long, long[], int):long");
    }

    public static int shiftUpBits(int i, int[] iArr, int i2, int i3) {
        int i4 = 0;
        int i5 = i3;
        while (i4 < i) {
            int i6 = iArr[i4];
            iArr[i4] = (i5 >>> (-i2)) | (i6 << i2);
            i4++;
            i5 = i6;
        }
        return i5 >>> (-i2);
    }

    public static int shiftUpBits(int i, int[] iArr, int i2, int i3, int i4) {
        int i5 = 0;
        while (i5 < i) {
            int i6 = i2 + i5;
            int i7 = iArr[i6];
            iArr[i6] = (i4 >>> (-i3)) | (i7 << i3);
            i5++;
            i4 = i7;
        }
        return i4 >>> (-i3);
    }

    public static int shiftUpBits(int i, int[] iArr, int i2, int i3, int i4, int[] iArr2, int i5) {
        int i6 = 0;
        while (i6 < i) {
            int i7 = iArr[i2 + i6];
            iArr2[i5 + i6] = (i4 >>> (-i3)) | (i7 << i3);
            i6++;
            i4 = i7;
        }
        return i4 >>> (-i3);
    }

    public static int shiftUpBits(int i, int[] iArr, int i2, int i3, int[] iArr2) {
        int i4 = 0;
        int i5 = i3;
        while (i4 < i) {
            int i6 = iArr[i4];
            iArr2[i4] = (i5 >>> (-i2)) | (i6 << i2);
            i4++;
            i5 = i6;
        }
        return i5 >>> (-i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long shiftUpBits64(int r8, long[] r9, int r10, int r11, long r12) {
        /*
            r0 = 0
            r14 = r0
        L_0x0003:
            r0 = r14
            r1 = r8
            if (r0 >= r1) goto L_0x002d
            r0 = r10
            r1 = r14
            int r0 = r0 + r1
            r15 = r0
            r0 = r9
            r1 = r15
            r0 = r0[r1]
            r16 = r0
            r0 = r9
            r1 = r15
            r2 = r12
            r3 = r11
            int r3 = -r3
            long r2 = r2 >>> r3
            r3 = r16
            r4 = r11
            long r3 = r3 << r4
            long r2 = r2 | r3
            r0[r1] = r2
            int r14 = r14 + 1
            r0 = r16
            r12 = r0
            goto L_0x0003
        L_0x002d:
            r0 = r12
            r1 = r11
            int r1 = -r1
            long r0 = r0 >>> r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.raw.Nat.shiftUpBits64(int, long[], int, int, long):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long shiftUpBits64(int r8, long[] r9, int r10, int r11, long r12, long[] r14, int r15) {
        /*
            r0 = 0
            r16 = r0
        L_0x0003:
            r0 = r16
            r1 = r8
            if (r0 >= r1) goto L_0x002d
            r0 = r9
            r1 = r10
            r2 = r16
            int r1 = r1 + r2
            r0 = r0[r1]
            r17 = r0
            r0 = r14
            r1 = r15
            r2 = r16
            int r1 = r1 + r2
            r2 = r12
            r3 = r11
            int r3 = -r3
            long r2 = r2 >>> r3
            r3 = r17
            r4 = r11
            long r3 = r3 << r4
            long r2 = r2 | r3
            r0[r1] = r2
            int r16 = r16 + 1
            r0 = r17
            r12 = r0
            goto L_0x0003
        L_0x002d:
            r0 = r12
            r1 = r11
            int r1 = -r1
            long r0 = r0 >>> r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.raw.Nat.shiftUpBits64(int, long[], int, int, long, long[], int):long");
    }

    public static void square(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        int i4;
        int i5;
        int i6 = i << 1;
        int i7 = i;
        int i8 = i6;
        int i9 = 0;
        do {
            i4 = i7 - 1;
            long j = iArr[i2 + i4] & 4294967295L;
            long j2 = j * j;
            int i10 = i8 - 1;
            iArr2[i3 + i10] = (i9 << 31) | ((int) (j2 >>> 33));
            i8 = i10 - 1;
            iArr2[i3 + i8] = (int) (j2 >>> 1);
            i9 = (int) j2;
            i7 = i4;
        } while (i4 > 0);
        for (i5 = 1; i5 < i; i5++) {
            addWordAt(i6, squareWordAdd(iArr, i2, i5, iArr2, i3), iArr2, i3, i5 << 1);
        }
        shiftUpBit(i6, iArr2, i3, iArr[i2] << 31);
    }

    public static void square(int i, int[] iArr, int[] iArr2) {
        int i2;
        int i3 = i << 1;
        int i4 = i;
        int i5 = i3;
        int i6 = 0;
        do {
            i4--;
            long j = iArr[i4] & 4294967295L;
            long j2 = j * j;
            int i7 = i5 - 1;
            iArr2[i7] = (i6 << 31) | ((int) (j2 >>> 33));
            i5 = i7 - 1;
            iArr2[i5] = (int) (j2 >>> 1);
            i6 = (int) j2;
        } while (i4 > 0);
        for (i2 = 1; i2 < i; i2++) {
            addWordAt(i3, squareWordAdd(iArr, i2, iArr2), iArr2, i2 << 1);
        }
        shiftUpBit(i3, iArr2, iArr[0] << 31);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int squareWordAdd(int[] r9, int r10, int r11, int[] r12, int r13) {
        /*
            r0 = r9
            r1 = r10
            r2 = r11
            int r1 = r1 + r2
            r0 = r0[r1]
            long r0 = (long) r0
            r14 = r0
            r0 = 0
            r16 = r0
            r0 = 0
            r18 = r0
            r0 = r13
            r19 = r0
            r0 = r18
            r13 = r0
        L_0x0016:
            r0 = r9
            r1 = r10
            r2 = r13
            int r1 = r1 + r2
            r0 = r0[r1]
            long r0 = (long) r0
            r20 = r0
            r0 = r11
            r1 = r19
            int r0 = r0 + r1
            r18 = r0
            r0 = r16
            r1 = r20
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            r2 = r14
            r3 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r2 = r2 & r3
            long r1 = r1 * r2
            r2 = r12
            r3 = r18
            r2 = r2[r3]
            long r2 = (long) r2
            r3 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r2 = r2 & r3
            long r1 = r1 + r2
            long r0 = r0 + r1
            r16 = r0
            r0 = r12
            r1 = r18
            r2 = r16
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r16
            r1 = 32
            long r0 = r0 >>> r1
            r20 = r0
            int r19 = r19 + 1
            r0 = r13
            r1 = 1
            int r0 = r0 + r1
            r18 = r0
            r0 = r20
            r16 = r0
            r0 = r18
            r13 = r0
            r0 = r18
            r1 = r11
            if (r0 < r1) goto L_0x0016
            r0 = r20
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.raw.Nat.squareWordAdd(int[], int, int, int[], int):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int squareWordAdd(int[] r9, int r10, int[] r11) {
        /*
            r0 = r9
            r1 = r10
            r0 = r0[r1]
            long r0 = (long) r0
            r12 = r0
            r0 = 0
            r14 = r0
            r0 = 0
            r16 = r0
        L_0x000b:
            r0 = r9
            r1 = r16
            r0 = r0[r1]
            long r0 = (long) r0
            r17 = r0
            r0 = r10
            r1 = r16
            int r0 = r0 + r1
            r19 = r0
            r0 = r14
            r1 = r17
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            r2 = r12
            r3 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r2 = r2 & r3
            long r1 = r1 * r2
            r2 = r11
            r3 = r19
            r2 = r2[r3]
            long r2 = (long) r2
            r3 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r2 = r2 & r3
            long r1 = r1 + r2
            long r0 = r0 + r1
            r14 = r0
            r0 = r11
            r1 = r19
            r2 = r14
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r14
            r1 = 32
            long r0 = r0 >>> r1
            r17 = r0
            r0 = r16
            r1 = 1
            int r0 = r0 + r1
            r19 = r0
            r0 = r17
            r14 = r0
            r0 = r19
            r16 = r0
            r0 = r19
            r1 = r10
            if (r0 < r1) goto L_0x000b
            r0 = r17
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.raw.Nat.squareWordAdd(int[], int, int[]):int");
    }

    public static int sub(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = 0;
        for (int i5 = 0; i5 < i; i5++) {
            long j2 = j + ((iArr[i2 + i5] & 4294967295L) - (4294967295L & iArr2[i3 + i5]));
            iArr3[i4 + i5] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int sub(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = j + ((iArr[i2] & 4294967295L) - (4294967295L & iArr2[i2]));
            iArr3[i2] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int sub33At(int i, int i2, int[] iArr, int i3) {
        int i4 = i3 + 0;
        long j = (iArr[i4] & 4294967295L) - (i2 & 4294967295L);
        iArr[i4] = (int) j;
        int i5 = i3 + 1;
        long j2 = (j >> 32) + ((4294967295L & iArr[i5]) - 1);
        iArr[i5] = (int) j2;
        return (j2 >> 32) == 0 ? 0 : decAt(i, iArr, i3 + 2);
    }

    public static int sub33At(int i, int i2, int[] iArr, int i3, int i4) {
        int i5 = i3 + i4;
        long j = (iArr[i5] & 4294967295L) - (i2 & 4294967295L);
        iArr[i5] = (int) j;
        int i6 = i5 + 1;
        long j2 = (j >> 32) + ((4294967295L & iArr[i6]) - 1);
        iArr[i6] = (int) j2;
        return (j2 >> 32) == 0 ? 0 : decAt(i, iArr, i3, i4 + 2);
    }

    public static int sub33From(int i, int i2, int[] iArr) {
        int i3 = 0;
        long j = (iArr[0] & 4294967295L) - (i2 & 4294967295L);
        iArr[0] = (int) j;
        long j2 = (j >> 32) + ((4294967295L & iArr[1]) - 1);
        iArr[1] = (int) j2;
        if ((j2 >> 32) != 0) {
            i3 = decAt(i, iArr, 2);
        }
        return i3;
    }

    public static int sub33From(int i, int i2, int[] iArr, int i3) {
        int i4 = i3 + 0;
        long j = (iArr[i4] & 4294967295L) - (i2 & 4294967295L);
        iArr[i4] = (int) j;
        int i5 = i3 + 1;
        long j2 = (j >> 32) + ((4294967295L & iArr[i5]) - 1);
        iArr[i5] = (int) j2;
        return (j2 >> 32) == 0 ? 0 : decAt(i, iArr, i3, 2);
    }

    public static int subBothFrom(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = 0;
        for (int i5 = 0; i5 < i; i5++) {
            int i6 = i4 + i5;
            long j2 = j + (((iArr3[i6] & 4294967295L) - (iArr[i2 + i5] & 4294967295L)) - (iArr2[i3 + i5] & 4294967295L));
            iArr3[i6] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int subBothFrom(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = j + (((iArr3[i2] & 4294967295L) - (iArr[i2] & 4294967295L)) - (4294967295L & iArr2[i2]));
            iArr3[i2] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int subDWordAt(int i, long j, int[] iArr, int i2) {
        int i3 = i2 + 0;
        long j2 = (iArr[i3] & 4294967295L) - (j & 4294967295L);
        iArr[i3] = (int) j2;
        int i4 = i2 + 1;
        long j3 = (j2 >> 32) + ((4294967295L & iArr[i4]) - (j >>> 32));
        iArr[i4] = (int) j3;
        return (j3 >> 32) == 0 ? 0 : decAt(i, iArr, i2 + 2);
    }

    public static int subDWordAt(int i, long j, int[] iArr, int i2, int i3) {
        int i4 = i2 + i3;
        long j2 = (iArr[i4] & 4294967295L) - (j & 4294967295L);
        iArr[i4] = (int) j2;
        int i5 = i4 + 1;
        long j3 = (j2 >> 32) + ((4294967295L & iArr[i5]) - (j >>> 32));
        iArr[i5] = (int) j3;
        return (j3 >> 32) == 0 ? 0 : decAt(i, iArr, i2, i3 + 2);
    }

    public static int subDWordFrom(int i, long j, int[] iArr) {
        int i2 = 0;
        long j2 = (iArr[0] & 4294967295L) - (j & 4294967295L);
        iArr[0] = (int) j2;
        long j3 = (j2 >> 32) + ((4294967295L & iArr[1]) - (j >>> 32));
        iArr[1] = (int) j3;
        if ((j3 >> 32) != 0) {
            i2 = decAt(i, iArr, 2);
        }
        return i2;
    }

    public static int subDWordFrom(int i, long j, int[] iArr, int i2) {
        int i3 = i2 + 0;
        long j2 = (iArr[i3] & 4294967295L) - (j & 4294967295L);
        iArr[i3] = (int) j2;
        int i4 = i2 + 1;
        long j3 = (j2 >> 32) + ((4294967295L & iArr[i4]) - (j >>> 32));
        iArr[i4] = (int) j3;
        return (j3 >> 32) == 0 ? 0 : decAt(i, iArr, i2, 2);
    }

    public static int subFrom(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        long j = 0;
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = i3 + i4;
            long j2 = j + ((iArr2[i5] & 4294967295L) - (4294967295L & iArr[i2 + i4]));
            iArr2[i5] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int subFrom(int i, int[] iArr, int[] iArr2) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = j + ((iArr2[i2] & 4294967295L) - (4294967295L & iArr[i2]));
            iArr2[i2] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int subWordAt(int i, int i2, int[] iArr, int i3) {
        long j = (iArr[i3] & 4294967295L) - (4294967295L & i2);
        iArr[i3] = (int) j;
        return (j >> 32) == 0 ? 0 : decAt(i, iArr, i3 + 1);
    }

    public static int subWordAt(int i, int i2, int[] iArr, int i3, int i4) {
        int i5 = i3 + i4;
        long j = (iArr[i5] & 4294967295L) - (4294967295L & i2);
        iArr[i5] = (int) j;
        return (j >> 32) == 0 ? 0 : decAt(i, iArr, i3, i4 + 1);
    }

    public static int subWordFrom(int i, int i2, int[] iArr) {
        int i3 = 0;
        long j = (iArr[0] & 4294967295L) - (4294967295L & i2);
        iArr[0] = (int) j;
        if ((j >> 32) != 0) {
            i3 = decAt(i, iArr, 1);
        }
        return i3;
    }

    public static int subWordFrom(int i, int i2, int[] iArr, int i3) {
        int i4 = i3 + 0;
        long j = (iArr[i4] & 4294967295L) - (4294967295L & i2);
        iArr[i4] = (int) j;
        return (j >> 32) == 0 ? 0 : decAt(i, iArr, i3, 1);
    }

    public static BigInteger toBigInteger(int i, int[] iArr) {
        byte[] bArr = new byte[i << 2];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            if (i3 != 0) {
                Pack.intToBigEndian(i3, bArr, ((i - 1) - i2) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void zero(int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = 0;
        }
    }

    public static void zero64(int i, long[] jArr) {
        for (int i2 = 0; i2 < i; i2++) {
            jArr[i2] = 0;
        }
    }
}
