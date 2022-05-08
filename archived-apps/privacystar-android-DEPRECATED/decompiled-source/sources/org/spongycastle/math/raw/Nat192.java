package org.spongycastle.math.raw;

import java.math.BigInteger;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/raw/Nat192.class */
public abstract class Nat192 {

    /* renamed from: M */
    private static final long f1643M = 4294967295L;

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
        long j6 = (j5 >>> 32) + (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L);
        iArr3[5] = (int) j6;
        return (int) (j6 >>> 32);
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
        long j6 = (j5 >>> 32) + (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L) + (iArr3[5] & 4294967295L);
        iArr3[5] = (int) j6;
        return (int) (j6 >>> 32);
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
        long j5 = (j4 >>> 32) + (iArr[i + 4] & 4294967295L) + (iArr2[i8] & 4294967295L);
        iArr2[i8] = (int) j5;
        int i9 = i2 + 5;
        long j6 = (j5 >>> 32) + (iArr[i + 5] & 4294967295L) + (4294967295L & iArr2[i9]);
        iArr2[i9] = (int) j6;
        return (int) (j6 >>> 32);
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
        long j5 = (j4 >>> 32) + (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L);
        iArr2[4] = (int) j5;
        long j6 = (j5 >>> 32) + (iArr[5] & 4294967295L) + (4294967295L & iArr2[5]);
        iArr2[5] = (int) j6;
        return (int) (j6 >>> 32);
    }

    public static int addToEachOther(int[] iArr, int i, int[] iArr2, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10 = i + 0;
        long j = iArr[i10];
        long j2 = (j & 4294967295L) + (iArr2[i3] & 4294967295L) + 0;
        int i11 = (int) j2;
        iArr[i10] = i11;
        iArr2[i2 + 0] = i11;
        int i12 = i + 1;
        long j3 = iArr[i12];
        long j4 = (j2 >>> 32) + (j3 & 4294967295L) + (iArr2[i4] & 4294967295L);
        int i13 = (int) j4;
        iArr[i12] = i13;
        iArr2[i2 + 1] = i13;
        int i14 = i + 2;
        long j5 = iArr[i14];
        long j6 = (j4 >>> 32) + (j5 & 4294967295L) + (iArr2[i5] & 4294967295L);
        int i15 = (int) j6;
        iArr[i14] = i15;
        iArr2[i2 + 2] = i15;
        int i16 = i + 3;
        long j7 = iArr[i16];
        long j8 = (j6 >>> 32) + (j7 & 4294967295L) + (iArr2[i6] & 4294967295L);
        int i17 = (int) j8;
        iArr[i16] = i17;
        iArr2[i2 + 3] = i17;
        int i18 = i + 4;
        long j9 = iArr[i18];
        long j10 = (j8 >>> 32) + (j9 & 4294967295L) + (iArr2[i7] & 4294967295L);
        int i19 = (int) j10;
        iArr[i18] = i19;
        iArr2[i2 + 4] = i19;
        long j11 = (j10 >>> 32) + (iArr[i8] & 4294967295L) + (4294967295L & iArr2[i9]);
        int i20 = (int) j11;
        iArr[i + 5] = i20;
        iArr2[i2 + 5] = i20;
        return (int) (j11 >>> 32);
    }

    public static void copy(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
        iArr2[5] = iArr[5];
    }

    public static void copy64(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
    }

    public static int[] create() {
        return new int[6];
    }

    public static long[] create64() {
        return new long[3];
    }

    public static int[] createExt() {
        return new int[12];
    }

    public static long[] createExt64() {
        return new long[6];
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
    public static boolean m101eq(int[] iArr, int[] iArr2) {
        for (int i = 5; i >= 0; i--) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static boolean eq64(long[] jArr, long[] jArr2) {
        for (int i = 2; i >= 0; i--) {
            if (jArr[i] != jArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 192) {
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

    public static long[] fromBigInteger64(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 192) {
            throw new IllegalArgumentException();
        }
        long[] create64 = create64();
        int i = 0;
        while (bigInteger.signum() != 0) {
            create64[i] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
            i++;
        }
        return create64;
    }

    public static int getBit(int[] iArr, int i) {
        if (i == 0) {
            return iArr[0] & 1;
        }
        int i2 = i >> 5;
        if (i2 < 0 || i2 >= 6) {
            return 0;
        }
        return (iArr[i2] >>> (i & 31)) & 1;
    }

    public static boolean gte(int[] iArr, int i, int[] iArr2, int i2) {
        for (int i3 = 5; i3 >= 0; i3--) {
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
        for (int i = 5; i >= 0; i--) {
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
        for (int i = 1; i < 6; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isOne64(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 3; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[] iArr) {
        for (int i = 0; i < 6; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero64(long[] jArr) {
        for (int i = 0; i < 3; i++) {
            if (jArr[i] != 0) {
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
        long j6 = iArr2[i2 + 5] & 4294967295L;
        long j7 = iArr[i + 0] & 4294967295L;
        long j8 = (j7 * j) + 0;
        iArr3[i3 + 0] = (int) j8;
        long j9 = (j8 >>> 32) + (j7 * j2);
        iArr3[i3 + 1] = (int) j9;
        long j10 = (j9 >>> 32) + (j7 * j3);
        iArr3[i3 + 2] = (int) j10;
        long j11 = (j10 >>> 32) + (j7 * j4);
        iArr3[i3 + 3] = (int) j11;
        long j12 = (j11 >>> 32) + (j7 * j5);
        iArr3[i3 + 4] = (int) j12;
        long j13 = (j12 >>> 32) + (j7 * j6);
        iArr3[i3 + 5] = (int) j13;
        iArr3[i3 + 6] = (int) (j13 >>> 32);
        for (int i4 = 1; i4 < 6; i4++) {
            i3++;
            long j14 = iArr[i + i4] & 4294967295L;
            int i5 = i3 + 0;
            long j15 = (j14 * j) + (iArr3[i5] & 4294967295L) + 0;
            iArr3[i5] = (int) j15;
            int i6 = i3 + 1;
            long j16 = (j15 >>> 32) + (j14 * j2) + (iArr3[i6] & 4294967295L);
            iArr3[i6] = (int) j16;
            int i7 = i3 + 2;
            long j17 = (j16 >>> 32) + (j14 * j3) + (iArr3[i7] & 4294967295L);
            iArr3[i7] = (int) j17;
            int i8 = i3 + 3;
            long j18 = (j17 >>> 32) + (j14 * j4) + (iArr3[i8] & 4294967295L);
            iArr3[i8] = (int) j18;
            int i9 = i3 + 4;
            long j19 = (j18 >>> 32) + (j14 * j5) + (iArr3[i9] & 4294967295L);
            iArr3[i9] = (int) j19;
            int i10 = i3 + 5;
            long j20 = (j19 >>> 32) + (j14 * j6) + (iArr3[i10] & 4294967295L);
            iArr3[i10] = (int) j20;
            iArr3[i3 + 6] = (int) (j20 >>> 32);
        }
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = iArr2[0] & 4294967295L;
        long j2 = iArr2[1] & 4294967295L;
        long j3 = iArr2[2] & 4294967295L;
        long j4 = iArr2[3] & 4294967295L;
        long j5 = iArr2[4] & 4294967295L;
        long j6 = iArr2[5] & 4294967295L;
        long j7 = iArr[0] & 4294967295L;
        long j8 = (j7 * j) + 0;
        iArr3[0] = (int) j8;
        long j9 = (j8 >>> 32) + (j7 * j2);
        int i = 1;
        iArr3[1] = (int) j9;
        long j10 = (j9 >>> 32) + (j7 * j3);
        iArr3[2] = (int) j10;
        long j11 = (j10 >>> 32) + (j7 * j4);
        iArr3[3] = (int) j11;
        long j12 = (j11 >>> 32) + (j7 * j5);
        iArr3[4] = (int) j12;
        long j13 = (j12 >>> 32) + (j7 * j6);
        iArr3[5] = (int) j13;
        iArr3[6] = (int) (j13 >>> 32);
        while (i < 6) {
            long j14 = iArr[i] & 4294967295L;
            int i2 = i + 0;
            long j15 = (j14 * j) + (iArr3[i2] & 4294967295L) + 0;
            iArr3[i2] = (int) j15;
            int i3 = i + 1;
            long j16 = (j15 >>> 32) + (j14 * j2) + (iArr3[i3] & 4294967295L);
            iArr3[i3] = (int) j16;
            int i4 = i + 2;
            long j17 = (j16 >>> 32) + (j14 * j3) + (iArr3[i4] & 4294967295L);
            iArr3[i4] = (int) j17;
            int i5 = i + 3;
            long j18 = (j17 >>> 32) + (j14 * j4) + (iArr3[i5] & 4294967295L);
            iArr3[i5] = (int) j18;
            int i6 = i + 4;
            long j19 = (j18 >>> 32) + (j14 * j5) + (iArr3[i6] & 4294967295L);
            iArr3[i6] = (int) j19;
            int i7 = i + 5;
            long j20 = (j19 >>> 32) + (j14 * j6) + (iArr3[i7] & 4294967295L);
            iArr3[i7] = (int) j20;
            iArr3[i + 6] = (int) (j20 >>> 32);
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
        long j12 = iArr[i2 + 5] & 4294967295L;
        long j13 = (j11 >>> 32) + (j * j12) + j10 + (iArr2[i3 + 5] & 4294967295L);
        iArr3[i4 + 5] = (int) j13;
        return (j13 >>> 32) + j12;
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
        return (j8 >>> 32) == 0 ? 0 : Nat.incAt(6, iArr, i2, 4);
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
        return (j4 >>> 32) == 0 ? 0 : Nat.incAt(6, iArr, i3, 3);
    }

    public static int mulAddTo(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        long j = iArr2[i2 + 0] & 4294967295L;
        long j2 = iArr2[i2 + 1] & 4294967295L;
        long j3 = iArr2[i2 + 2] & 4294967295L;
        long j4 = iArr2[i2 + 3];
        long j5 = iArr2[i2 + 4];
        long j6 = iArr2[i2 + 5] & 4294967295L;
        int i10 = 0;
        long j7 = 0;
        while (i10 < 6) {
            long j8 = iArr[i + i10] & 4294967295L;
            long j9 = (j8 * j) + (iArr3[i4] & 4294967295L) + 0;
            iArr3[i3 + 0] = (int) j9;
            int i11 = i3 + 1;
            long j10 = (j9 >>> 32) + (j8 * j2) + (iArr3[i11] & 4294967295L);
            iArr3[i11] = (int) j10;
            long j11 = (j10 >>> 32) + (j8 * j3) + (iArr3[i5] & 4294967295L);
            iArr3[i3 + 2] = (int) j11;
            long j12 = (j11 >>> 32) + (j8 * (j4 & 4294967295L)) + (iArr3[i6] & 4294967295L);
            iArr3[i3 + 3] = (int) j12;
            long j13 = (j12 >>> 32) + (j8 * (j5 & 4294967295L)) + (iArr3[i7] & 4294967295L);
            iArr3[i3 + 4] = (int) j13;
            long j14 = (j13 >>> 32) + (j8 * j6) + (iArr3[i8] & 4294967295L);
            iArr3[i3 + 5] = (int) j14;
            long j15 = (j14 >>> 32) + j7 + (iArr3[i9] & 4294967295L);
            iArr3[i3 + 6] = (int) j15;
            j7 = j15 >>> 32;
            i10++;
            i3 = i11;
        }
        return (int) j7;
    }

    public static int mulAddTo(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = iArr2[0];
        long j2 = iArr2[1] & 4294967295L;
        long j3 = iArr2[2] & 4294967295L;
        long j4 = iArr2[3] & 4294967295L;
        long j5 = iArr2[4] & 4294967295L;
        long j6 = iArr2[5] & 4294967295L;
        long j7 = 0;
        int i = 0;
        while (i < 6) {
            long j8 = iArr[i] & 4294967295L;
            int i2 = i + 0;
            long j9 = (j8 * (j & 4294967295L)) + (iArr3[i2] & 4294967295L) + 0;
            iArr3[i2] = (int) j9;
            int i3 = i + 1;
            long j10 = (j9 >>> 32) + (j8 * j2) + (iArr3[i3] & 4294967295L);
            iArr3[i3] = (int) j10;
            int i4 = i + 2;
            long j11 = (j10 >>> 32) + (j8 * j3) + (iArr3[i4] & 4294967295L);
            iArr3[i4] = (int) j11;
            int i5 = i + 3;
            long j12 = (j11 >>> 32) + (j8 * j4) + (iArr3[i5] & 4294967295L);
            iArr3[i5] = (int) j12;
            int i6 = i + 4;
            long j13 = (j12 >>> 32) + (j8 * j5) + (iArr3[i6] & 4294967295L);
            iArr3[i6] = (int) j13;
            int i7 = i + 5;
            long j14 = (j13 >>> 32) + (j8 * j6) + (iArr3[i7] & 4294967295L);
            iArr3[i7] = (int) j14;
            int i8 = i + 6;
            long j15 = (j14 >>> 32) + j7 + (iArr3[i8] & 4294967295L);
            iArr3[i8] = (int) j15;
            j7 = j15 >>> 32;
            i = i3;
        }
        return (int) j7;
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
            r1 = 6
            if (r0 < r1) goto L_0x0009
            r0 = r17
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.raw.Nat192.mulWord(int, int[], int[], int):int");
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
        long j6 = (j5 >>> 32) + ((iArr[i2 + 4] & 4294967295L) * j) + (iArr2[i8] & 4294967295L);
        iArr2[i8] = (int) j6;
        int i9 = i3 + 5;
        long j7 = (j6 >>> 32) + (j * (iArr[i2 + 5] & 4294967295L)) + (iArr2[i9] & 4294967295L);
        iArr2[i9] = (int) j7;
        return (int) (j7 >>> 32);
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
        return (j5 >>> 32) == 0 ? 0 : Nat.incAt(6, iArr, i2, 3);
    }

    public static void square(int[] iArr, int i, int[] iArr2, int i2) {
        int i3;
        int i4;
        int i5;
        long j = iArr[i + 0] & 4294967295L;
        int i6 = 12;
        int i7 = 5;
        int i8 = 0;
        while (true) {
            int i9 = i7 - 1;
            long j2 = iArr[i + i7] & 4294967295L;
            long j3 = j2 * j2;
            int i10 = i6 - 1;
            iArr2[i2 + i10] = ((int) (j3 >>> 33)) | (i8 << 31);
            i6 = i10 - 1;
            iArr2[i2 + i6] = (int) (j3 >>> 1);
            i8 = (int) j3;
            if (i9 <= 0) {
                long j4 = j * j;
                iArr2[i2 + 0] = (int) j4;
                int i11 = (int) (j4 >>> 32);
                long j5 = iArr[i + 1] & 4294967295L;
                int i12 = i2 + 2;
                long j6 = iArr2[i12];
                long j7 = (((i8 << 31) & 4294967295L) | (j4 >>> 33)) + (j5 * j);
                int i13 = (int) j7;
                iArr2[i2 + 1] = (i13 << 1) | (i11 & 1);
                long j8 = iArr[i + 2] & 4294967295L;
                int i14 = i2 + 3;
                long j9 = iArr2[i14];
                int i15 = i2 + 4;
                long j10 = iArr2[i15];
                long j11 = (j6 & 4294967295L) + (j7 >>> 32) + (j8 * j);
                int i16 = (int) j11;
                iArr2[i12] = (i13 >>> 31) | (i16 << 1);
                long j12 = (j9 & 4294967295L) + (j11 >>> 32) + (j8 * j5);
                long j13 = (j10 & 4294967295L) + (j12 >>> 32);
                long j14 = iArr[i + 3] & 4294967295L;
                long j15 = (iArr2[i3] & 4294967295L) + (j13 >>> 32);
                int i17 = i2 + 6;
                long j16 = iArr2[i17];
                long j17 = (j12 & 4294967295L) + (j14 * j);
                int i18 = (int) j17;
                iArr2[i14] = (i16 >>> 31) | (i18 << 1);
                long j18 = (j13 & 4294967295L) + (j17 >>> 32) + (j14 * j5);
                long j19 = (j15 & 4294967295L) + (j18 >>> 32) + (j14 * j8);
                long j20 = (j16 & 4294967295L) + (j15 >>> 32) + (j19 >>> 32);
                long j21 = iArr[i + 4] & 4294967295L;
                long j22 = (iArr2[i4] & 4294967295L) + (j20 >>> 32);
                int i19 = i2 + 8;
                long j23 = iArr2[i19];
                long j24 = (j18 & 4294967295L) + (j21 * j);
                int i20 = (int) j24;
                iArr2[i15] = (i18 >>> 31) | (i20 << 1);
                long j25 = (j19 & 4294967295L) + (j24 >>> 32) + (j21 * j5);
                long j26 = (j20 & 4294967295L) + (j25 >>> 32) + (j21 * j8);
                long j27 = (j22 & 4294967295L) + (j26 >>> 32) + (j21 * j14);
                long j28 = (j23 & 4294967295L) + (j22 >>> 32) + (j27 >>> 32);
                long j29 = iArr[i + 5] & 4294967295L;
                long j30 = (iArr2[i5] & 4294967295L) + (j28 >>> 32);
                int i21 = i2 + 10;
                long j31 = iArr2[i21];
                long j32 = (j25 & 4294967295L) + (j * j29);
                int i22 = (int) j32;
                iArr2[i2 + 5] = (i20 >>> 31) | (i22 << 1);
                long j33 = (j26 & 4294967295L) + (j32 >>> 32) + (j5 * j29);
                long j34 = (j27 & 4294967295L) + (j33 >>> 32) + (j29 * j8);
                long j35 = (j28 & 4294967295L) + (j34 >>> 32) + (j29 * j14);
                long j36 = (j30 & 4294967295L) + (j35 >>> 32) + (j29 * j21);
                long j37 = (j31 & 4294967295L) + (j30 >>> 32) + (j36 >>> 32);
                int i23 = (int) j33;
                iArr2[i17] = (i22 >>> 31) | (i23 << 1);
                int i24 = (int) j34;
                iArr2[i2 + 7] = (i23 >>> 31) | (i24 << 1);
                int i25 = (int) j35;
                iArr2[i19] = (i24 >>> 31) | (i25 << 1);
                int i26 = (int) j36;
                iArr2[i2 + 9] = (i25 >>> 31) | (i26 << 1);
                int i27 = (int) j37;
                iArr2[i21] = (i26 >>> 31) | (i27 << 1);
                int i28 = i2 + 11;
                iArr2[i28] = ((iArr2[i28] + ((int) (j37 >>> 32))) << 1) | (i27 >>> 31);
                return;
            }
            i7 = i9;
        }
    }

    public static void square(int[] iArr, int[] iArr2) {
        long j = iArr[0] & 4294967295L;
        int i = 5;
        int i2 = 12;
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
                iArr2[2] = (i8 << 1) | (i7 >>> 31);
                long j12 = (j9 & 4294967295L) + (j11 >>> 32) + (j8 * j5);
                long j13 = (j10 & 4294967295L) + (j12 >>> 32);
                long j14 = iArr[3] & 4294967295L;
                long j15 = (iArr2[5] & 4294967295L) + (j13 >>> 32);
                long j16 = iArr2[6];
                long j17 = (j12 & 4294967295L) + (j14 * j);
                int i9 = (int) j17;
                iArr2[3] = (i9 << 1) | (i8 >>> 31);
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
                long j27 = (j22 & 4294967295L) + (j26 >>> 32) + (j21 * j14);
                long j28 = (j23 & 4294967295L) + (j22 >>> 32) + (j27 >>> 32);
                long j29 = iArr[5] & 4294967295L;
                long j30 = (iArr2[9] & 4294967295L) + (j28 >>> 32);
                long j31 = iArr2[10];
                long j32 = (j25 & 4294967295L) + (j29 * j);
                int i11 = (int) j32;
                iArr2[5] = (i11 << 1) | (i10 >>> 31);
                long j33 = (j26 & 4294967295L) + (j32 >>> 32) + (j29 * j5);
                long j34 = (j27 & 4294967295L) + (j33 >>> 32) + (j29 * j8);
                long j35 = (j28 & 4294967295L) + (j34 >>> 32) + (j29 * j14);
                long j36 = (j30 & 4294967295L) + (j35 >>> 32) + (j29 * j21);
                long j37 = (j31 & 4294967295L) + (j30 >>> 32) + (j36 >>> 32);
                int i12 = (int) j33;
                iArr2[6] = (i11 >>> 31) | (i12 << 1);
                int i13 = (int) j34;
                iArr2[7] = (i13 << 1) | (i12 >>> 31);
                int i14 = (int) j35;
                iArr2[8] = (i13 >>> 31) | (i14 << 1);
                int i15 = (int) j36;
                iArr2[9] = (i15 << 1) | (i14 >>> 31);
                int i16 = (int) j37;
                iArr2[10] = (i15 >>> 31) | (i16 << 1);
                iArr2[11] = (i16 >>> 31) | ((iArr2[11] + ((int) (j37 >>> 32))) << 1);
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
        long j6 = (j5 >> 32) + ((iArr[i + 5] & 4294967295L) - (iArr2[i2 + 5] & 4294967295L));
        iArr3[i3 + 5] = (int) j6;
        return (int) (j6 >> 32);
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
        long j6 = (j5 >> 32) + ((iArr[5] & 4294967295L) - (iArr2[5] & 4294967295L));
        iArr3[5] = (int) j6;
        return (int) (j6 >> 32);
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
        long j6 = (j5 >> 32) + (((iArr3[5] & 4294967295L) - (iArr[5] & 4294967295L)) - (iArr2[5] & 4294967295L));
        iArr3[5] = (int) j6;
        return (int) (j6 >> 32);
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
        int i8 = i2 + 5;
        long j6 = (j5 >> 32) + ((iArr2[i8] & 4294967295L) - (iArr[i + 5] & 4294967295L));
        iArr2[i8] = (int) j6;
        return (int) (j6 >> 32);
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
        long j5 = (j4 >> 32) + ((iArr2[4] & 4294967295L) - (iArr[4] & 4294967295L));
        iArr2[4] = (int) j5;
        long j6 = (j5 >> 32) + ((iArr2[5] & 4294967295L) - (4294967295L & iArr[5]));
        iArr2[5] = (int) j6;
        return (int) (j6 >> 32);
    }

    public static BigInteger toBigInteger(int[] iArr) {
        byte[] bArr = new byte[24];
        for (int i = 0; i < 6; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                Pack.intToBigEndian(i2, bArr, (5 - i) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger toBigInteger64(long[] jArr) {
        byte[] bArr = new byte[24];
        for (int i = 0; i < 3; i++) {
            long j = jArr[i];
            if (j != 0) {
                Pack.longToBigEndian(j, bArr, (2 - i) << 3);
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
        iArr[5] = 0;
    }
}
