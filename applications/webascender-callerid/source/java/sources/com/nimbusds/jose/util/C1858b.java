package com.nimbusds.jose.util;

import java.util.Arrays;
/* renamed from: com.nimbusds.jose.util.b */
/* loaded from: classes2-dex2jar.jar:com/nimbusds/jose/util/b.class */
final class C1858b {

    /* renamed from: a */
    private static final char[] f5043a;

    /* renamed from: c */
    private static final int[] f5045c;

    /* renamed from: b */
    private static final char[] f5044b = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".toCharArray();

    /* renamed from: d */
    private static final int[] f5046d = new int[256];

    static {
        char[] charArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        f5043a = charArray;
        int[] iArr = new int[256];
        f5045c = iArr;
        Arrays.fill(iArr, -1);
        int length = charArray.length;
        for (int i = 0; i < length; i++) {
            f5045c[f5043a[i]] = i;
        }
        f5045c[61] = 0;
        Arrays.fill(f5046d, -1);
        int length2 = f5044b.length;
        for (int i2 = 0; i2 < length2; i2++) {
            f5046d[f5044b[i2]] = i2;
        }
        f5046d[61] = 0;
    }

    /* renamed from: a */
    public static int m791a(int i, boolean z) {
        if (i == 0) {
            return 0;
        }
        if (!z) {
            return (((i - 1) / 3) + 1) << 2;
        }
        int i2 = (i / 3) << 2;
        int i3 = i % 3;
        return i3 == 0 ? i2 : i2 + i3 + 1;
    }

    /* renamed from: b */
    public static int m790b(String str) {
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= str.length()) {
                return i3;
            }
            char charAt = str.charAt(i);
            int i4 = i3;
            if (f5045c[charAt] == -1) {
                i4 = i3;
                if (f5046d[charAt] == -1) {
                    i4 = i3 + 1;
                }
            }
            i++;
            i2 = i4;
        }
    }

    /* renamed from: c */
    public static byte[] m789c(String str) {
        if (str == null || str.isEmpty()) {
            return new byte[0];
        }
        String m786f = m786f(str);
        int length = m786f.length();
        int m790b = length - m790b(m786f);
        if (m790b % 4 != 0) {
            return new byte[0];
        }
        int i = 0;
        while (length > 1) {
            int i2 = length - 1;
            if (f5045c[m786f.charAt(i2)] > 0) {
                break;
            }
            length = i2;
            if (m786f.charAt(i2) == '=') {
                i++;
                length = i2;
            }
        }
        int i3 = ((m790b * 6) >> 3) - i;
        byte[] bArr = new byte[i3];
        int i4 = 0;
        int i5 = 0;
        while (i4 < i3) {
            int i6 = 0;
            int i7 = 0;
            int i8 = i5;
            while (i6 < 4) {
                int i9 = f5045c[m786f.charAt(i8)];
                if (i9 >= 0) {
                    i7 |= i9 << (18 - (i6 * 6));
                } else {
                    i6--;
                }
                i6++;
                i8++;
            }
            int i10 = i4 + 1;
            bArr[i4] = (byte) (i7 >> 16);
            i4 = i10;
            if (i10 < i3) {
                int i11 = i10 + 1;
                bArr[i10] = (byte) (i7 >> 8);
                i4 = i11;
                i5 = i8;
                if (i11 < i3) {
                    i4 = i11 + 1;
                    bArr[i11] = (byte) i7;
                }
            }
            i5 = i8;
        }
        return bArr;
    }

    /* renamed from: d */
    public static char[] m788d(byte[] bArr, boolean z) {
        int length = bArr != null ? bArr.length : 0;
        if (length == 0) {
            return new char[0];
        }
        int i = (length / 3) * 3;
        int m791a = m791a(length, z);
        char[] cArr = new char[m791a];
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            int i4 = i2 + 1;
            int i5 = i4 + 1;
            int i6 = ((bArr[i2] & 255) << 16) | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
            if (z) {
                int i7 = i3 + 1;
                char[] cArr2 = f5044b;
                cArr[i3] = cArr2[(i6 >>> 18) & 63];
                int i8 = i7 + 1;
                cArr[i7] = cArr2[(i6 >>> 12) & 63];
                int i9 = i8 + 1;
                cArr[i8] = cArr2[(i6 >>> 6) & 63];
                i3 = i9 + 1;
                cArr[i9] = cArr2[i6 & 63];
            } else {
                int i10 = i3 + 1;
                char[] cArr3 = f5043a;
                cArr[i3] = cArr3[(i6 >>> 18) & 63];
                int i11 = i10 + 1;
                cArr[i10] = cArr3[(i6 >>> 12) & 63];
                int i12 = i11 + 1;
                cArr[i11] = cArr3[(i6 >>> 6) & 63];
                i3 = i12 + 1;
                cArr[i12] = cArr3[i6 & 63];
            }
            i2 = i5 + 1;
        }
        int i13 = length - i;
        if (i13 > 0) {
            byte b = bArr[i];
            int i14 = 0;
            if (i13 == 2) {
                i14 = (bArr[length - 1] & 255) << 2;
            }
            int i15 = ((b & 255) << 10) | i14;
            if (!z) {
                char[] cArr4 = f5043a;
                cArr[m791a - 4] = cArr4[i15 >> 12];
                cArr[m791a - 3] = cArr4[(i15 >>> 6) & 63];
                cArr[m791a - 2] = i13 == 2 ? cArr4[i15 & 63] : '=';
                cArr[m791a - 1] = (char) 61;
            } else if (i13 == 2) {
                char[] cArr5 = f5044b;
                cArr[m791a - 3] = cArr5[i15 >> 12];
                cArr[m791a - 2] = cArr5[(i15 >>> 6) & 63];
                cArr[m791a - 1] = cArr5[i15 & 63];
            } else {
                char[] cArr6 = f5044b;
                cArr[m791a - 2] = cArr6[i15 >> 12];
                cArr[m791a - 1] = cArr6[(i15 >>> 6) & 63];
            }
        }
        return cArr;
    }

    /* renamed from: e */
    public static String m787e(byte[] bArr, boolean z) {
        return new String(m788d(bArr, z));
    }

    /* renamed from: f */
    public static String m786f(String str) {
        int length = str.length();
        int m790b = (length - m790b(str)) % 4;
        int i = m790b == 0 ? 0 : 4 - m790b;
        char[] cArr = new char[length + i];
        str.getChars(0, length, cArr, 0);
        for (int i2 = 0; i2 < i; i2++) {
            cArr[length + i2] = (char) 61;
        }
        for (int i3 = 0; i3 < length; i3++) {
            if (cArr[i3] == '_') {
                cArr[i3] = (char) 47;
            } else if (cArr[i3] == '-') {
                cArr[i3] = (char) 43;
            }
        }
        return new String(cArr);
    }
}
