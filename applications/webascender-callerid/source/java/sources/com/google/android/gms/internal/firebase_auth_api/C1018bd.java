package com.google.android.gms.internal.firebase_auth_api;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.bd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/bd.class */
final class C1018bd {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v159, types: [long] */
    /* JADX WARN: Type inference failed for: r0v164, types: [long] */
    /* JADX WARN: Type inference failed for: r0v167, types: [long] */
    /* JADX WARN: Type inference failed for: r0v169, types: [long] */
    /* JADX WARN: Type inference failed for: r0v172 */
    /* renamed from: a */
    static byte[] m3014a(byte[] bArr, byte[] bArr2) {
        if (bArr.length == 32) {
            long m3012c = m3012c(bArr, 0, 0);
            long m3012c2 = m3012c(bArr, 3, 2) & 67108611;
            long m3012c3 = m3012c(bArr, 6, 4) & 67092735;
            long m3012c4 = m3012c(bArr, 9, 6) & 66076671;
            long m3012c5 = m3012c(bArr, 12, 8) & 1048575;
            long j = m3012c3 * 5;
            long j2 = m3012c4 * 5;
            long j3 = m3012c5 * 5;
            byte[] bArr3 = new byte[17];
            char c = 0;
            char c2 = 0;
            int i = 0;
            char c3 = 0;
            char c4 = 0;
            char c5 = 0;
            while (true) {
                char c6 = c5;
                int length = bArr2.length;
                if (i >= length) {
                    long j4 = c6 + (c4 >> 26);
                    long j5 = j4 & 67108863;
                    long j6 = c3 + (j4 >> 26);
                    long j7 = j6 & 67108863;
                    long j8 = c + (j6 >> 26);
                    long j9 = j8 & 67108863;
                    long j10 = c2 + ((j8 >> 26) * 5);
                    long j11 = j10 & 67108863;
                    long j12 = (c4 & 65535) + (j10 >> 26);
                    long j13 = j11 + 5;
                    long j14 = (j13 >> 26) + j12;
                    long j15 = j5 + (j14 >> 26);
                    long j16 = j7 + (j15 >> 26);
                    long j17 = (j9 + (j16 >> 26)) - 67108864;
                    long j18 = j17 >> 63;
                    long j19 = j18 ^ (-1);
                    long j20 = (j12 & j18) | (j14 & 67108863 & j19);
                    long j21 = (j5 & j18) | (j15 & 67108863 & j19);
                    long j22 = (j7 & j18) | (j16 & 67108863 & j19);
                    long m3013b = (((j11 & j18) | (j13 & 67108863 & j19) | (j20 << 26)) & 4294967295L) + m3013b(bArr, 16);
                    long m3013b2 = (((j20 >> 6) | (j21 << 20)) & 4294967295L) + m3013b(bArr, 20) + (m3013b >> 32);
                    long m3013b3 = (((j21 >> 12) | (j22 << 14)) & 4294967295L) + m3013b(bArr, 24) + (m3013b2 >> 32);
                    long m3013b4 = m3013b(bArr, 28);
                    byte[] bArr4 = new byte[16];
                    m3011d(bArr4, m3013b & 4294967295L, 0);
                    m3011d(bArr4, m3013b2 & 4294967295L, 4);
                    m3011d(bArr4, m3013b3 & 4294967295L, 8);
                    m3011d(bArr4, ((((((j17 & j19) | (j18 & j9)) << 8) | (j22 >> 18)) & 4294967295L) + m3013b4 + (m3013b3 >> 32)) & 4294967295L, 12);
                    return bArr4;
                }
                int min = Math.min(16, length - i);
                System.arraycopy(bArr2, i, bArr3, 0, min);
                bArr3[min] = (byte) 1;
                if (min != 16) {
                    Arrays.fill(bArr3, min + 1, 17, (byte) 0);
                }
                long m3012c6 = c2 + m3012c(bArr3, 0, 0);
                long m3012c7 = c4 + m3012c(bArr3, 3, 2);
                long m3012c8 = c6 + m3012c(bArr3, 6, 4);
                long m3012c9 = c3 + m3012c(bArr3, 9, 6);
                long m3012c10 = c + (m3012c(bArr3, 12, 8) | (bArr3[16] << 24));
                long j23 = (m3012c6 * m3012c) + (m3012c7 * j3) + (m3012c8 * j2) + (m3012c9 * j) + (m3012c10 * m3012c2 * 5);
                long j24 = (m3012c6 * m3012c2) + (m3012c7 * m3012c) + (m3012c8 * j3) + (m3012c9 * j2) + (m3012c10 * j) + (j23 >> 26);
                long j25 = (m3012c6 * m3012c3) + (m3012c7 * m3012c2) + (m3012c8 * m3012c) + (m3012c9 * j3) + (m3012c10 * j2) + (j24 >> 26);
                long j26 = (m3012c6 * m3012c4) + (m3012c7 * m3012c3) + (m3012c8 * m3012c2) + (m3012c9 * m3012c) + (m3012c10 * j3) + (j25 >> 26);
                long j27 = (m3012c6 * m3012c5) + (m3012c7 * m3012c4) + (m3012c8 * m3012c3) + (m3012c9 * m3012c2) + (m3012c10 * m3012c) + (j26 >> 26);
                c = j27 & 67108863;
                long j28 = (j23 & 67108863) + ((j27 >> 26) * 5);
                c2 = j28 & 67108863;
                c4 = (j24 & 67108863) + (j28 >> 26);
                i += 16;
                c3 = j26 & 67108863;
                c5 = j25 & 67108863;
            }
        } else {
            throw new IllegalArgumentException("The key length in bytes must be 32.");
        }
    }

    /* renamed from: b */
    private static long m3013b(byte[] bArr, int i) {
        return (((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16)) & 4294967295L;
    }

    /* renamed from: c */
    private static long m3012c(byte[] bArr, int i, int i2) {
        return (m3013b(bArr, i) >> i2) & 67108863;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* renamed from: d */
    private static void m3011d(byte[] bArr, long j, int i) {
        int i2 = 0;
        ?? r8 = j;
        while (i2 < 4) {
            bArr[i + i2] = (byte) (255 & r8);
            i2++;
            r8 >>= '\b';
        }
    }
}
