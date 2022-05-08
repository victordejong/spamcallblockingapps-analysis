package org.spongycastle.math.raw;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/raw/Mont256.class */
public abstract class Mont256 {

    /* renamed from: M */
    private static final long f1639M = 4294967295L;

    public static int inverse32(int i) {
        int i2 = (2 - (i * i)) * i;
        int i3 = i2 * (2 - (i * i2));
        int i4 = i3 * (2 - (i * i3));
        return i4 * (2 - (i * i4));
    }

    public static void multAdd(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int i) {
        long j = iArr2[0] & 4294967295L;
        int i2 = 0;
        for (int i3 = 0; i3 < 8; i3++) {
            long j2 = iArr[i3] & 4294967295L;
            long j3 = j2 * j;
            long j4 = (j3 & 4294967295L) + (iArr3[0] & 4294967295L);
            long j5 = (((int) j4) * i) & 4294967295L;
            long j6 = (iArr4[0] & 4294967295L) * j5;
            long j7 = ((j4 + (j6 & 4294967295L)) >>> 32) + (j3 >>> 32) + (j6 >>> 32);
            for (int i4 = 1; i4 < 8; i4++) {
                long j8 = (iArr2[i4] & 4294967295L) * j2;
                long j9 = (iArr4[i4] & 4294967295L) * j5;
                long j10 = j7 + (j8 & 4294967295L) + (j9 & 4294967295L) + (iArr3[i4] & 4294967295L);
                iArr3[i4 - 1] = (int) j10;
                j7 = (j10 >>> 32) + (j8 >>> 32) + (j9 >>> 32);
            }
            long j11 = j7 + (i2 & 4294967295L);
            iArr3[7] = (int) j11;
            i2 = (int) (j11 >>> 32);
        }
        if (i2 != 0 || Nat256.gte(iArr3, iArr4)) {
            Nat256.sub(iArr3, iArr4, iArr3);
        }
    }

    public static void multAddXF(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        long j = iArr2[0] & 4294967295L;
        int i = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            long j2 = iArr[i2] & 4294967295L;
            long j3 = (j2 * j) + (iArr3[0] & 4294967295L);
            long j4 = j3 & 4294967295L;
            long j5 = (j3 >>> 32) + j4;
            for (int i3 = 1; i3 < 8; i3++) {
                long j6 = (iArr2[i3] & 4294967295L) * j2;
                long j7 = (iArr4[i3] & 4294967295L) * j4;
                long j8 = j5 + (j6 & 4294967295L) + (j7 & 4294967295L) + (iArr3[i3] & 4294967295L);
                iArr3[i3 - 1] = (int) j8;
                j5 = (j8 >>> 32) + (j6 >>> 32) + (j7 >>> 32);
            }
            long j9 = j5 + (i & 4294967295L);
            iArr3[7] = (int) j9;
            i = (int) (j9 >>> 32);
        }
        if (i != 0 || Nat256.gte(iArr3, iArr4)) {
            Nat256.sub(iArr3, iArr4, iArr3);
        }
    }

    public static void reduce(int[] iArr, int[] iArr2, int i) {
        for (int i2 = 0; i2 < 8; i2++) {
            int i3 = iArr[0];
            long j = (i3 * i) & 4294967295L;
            long j2 = (((iArr2[0] & 4294967295L) * j) + (i3 & 4294967295L)) >>> 32;
            for (int i4 = 1; i4 < 8; i4++) {
                long j3 = j2 + ((iArr2[i4] & 4294967295L) * j) + (iArr[i4] & 4294967295L);
                iArr[i4 - 1] = (int) j3;
                j2 = j3 >>> 32;
            }
            iArr[7] = (int) j2;
        }
        if (Nat256.gte(iArr, iArr2)) {
            Nat256.sub(iArr, iArr2, iArr);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void reduceXF(int[] r9, int[] r10) {
        /*
            r0 = 0
            r11 = r0
        L_0x0002:
            r0 = r11
            r1 = 8
            if (r0 >= r1) goto L_0x005b
            r0 = r9
            r1 = 0
            r0 = r0[r1]
            long r0 = (long) r0
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r1
            r12 = r0
            r0 = 1
            r14 = r0
            r0 = r12
            r15 = r0
        L_0x0017:
            r0 = r14
            r1 = 8
            if (r0 >= r1) goto L_0x004e
            r0 = r15
            r1 = r10
            r2 = r14
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            r2 = r12
            long r1 = r1 * r2
            r2 = r9
            r3 = r14
            r2 = r2[r3]
            long r2 = (long) r2
            r3 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r2 = r2 & r3
            long r1 = r1 + r2
            long r0 = r0 + r1
            r15 = r0
            r0 = r9
            r1 = r14
            r2 = 1
            int r1 = r1 - r2
            r2 = r15
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r15
            r1 = 32
            long r0 = r0 >>> r1
            r15 = r0
            int r14 = r14 + 1
            goto L_0x0017
        L_0x004e:
            r0 = r9
            r1 = 7
            r2 = r15
            int r2 = (int) r2
            r0[r1] = r2
            int r11 = r11 + 1
            goto L_0x0002
        L_0x005b:
            r0 = r9
            r1 = r10
            boolean r0 = org.spongycastle.math.raw.Nat256.gte(r0, r1)
            if (r0 == 0) goto L_0x006a
            r0 = r9
            r1 = r10
            r2 = r9
            int r0 = org.spongycastle.math.raw.Nat256.sub(r0, r1, r2)
        L_0x006a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.raw.Mont256.reduceXF(int[], int[]):void");
    }
}
