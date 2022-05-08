package com.nimbusds.jose.util;

import java.util.Arrays;
/* renamed from: com.nimbusds.jose.util.b */
/* loaded from: classes2-dex2jar.jar:com/nimbusds/jose/util/b.class */
final class C0141b {

    /* renamed from: a */
    private static final char[] f249a;

    /* renamed from: c */
    private static final int[] f251c;

    /* renamed from: b */
    private static final char[] f250b = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".toCharArray();

    /* renamed from: d */
    private static final int[] f252d = new int[256];

    static {
        char[] charArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        f249a = charArray;
        int[] iArr = new int[256];
        f251c = iArr;
        Arrays.fill(iArr, -1);
        int length = charArray.length;
        for (int i = 0; i < length; i++) {
            f251c[f249a[i]] = i;
        }
        f251c[61] = 0;
        Arrays.fill(f252d, -1);
        int length2 = f250b.length;
        for (int i2 = 0; i2 < length2; i2++) {
            f252d[f250b[i2]] = i2;
        }
        f252d[61] = 0;
    }

    /* renamed from: a */
    public static int m870a(int i, boolean z) {
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
    public static int m869b(String str) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            i = i;
            if (f251c[charAt] == -1) {
                i = i;
                if (f252d[charAt] == -1) {
                    i++;
                }
            }
        }
        return i;
    }

    /* renamed from: c */
    public static byte[] m868c(String str) {
        if (str == null || str.isEmpty()) {
            return new byte[0];
        }
        String f = m865f(str);
        int length = f.length();
        int b = length - m869b(f);
        if (b % 4 != 0) {
            return new byte[0];
        }
        int i = 0;
        while (length > 1) {
            int i2 = length - 1;
            if (f251c[f.charAt(i2)] > 0) {
                break;
            }
            length = i2;
            if (f.charAt(i2) == '=') {
                i++;
                length = i2;
            }
        }
        int i3 = ((b * 6) >> 3) - i;
        byte[] bArr = new byte[i3];
        int i4 = 0;
        int i5 = 0;
        while (i4 < i3) {
            int i6 = 0;
            int i7 = 0;
            while (i6 < 4) {
                int i8 = f251c[f.charAt(i5)];
                if (i8 >= 0) {
                    i7 |= i8 << (18 - (i6 * 6));
                } else {
                    i6--;
                }
                i6++;
                i5++;
            }
            int i9 = i4 + 1;
            bArr[i4] = (byte) (i7 >> 16);
            i4 = i9;
            if (i9 < i3) {
                int i10 = i9 + 1;
                bArr[i9] = (byte) (i7 >> 8);
                i4 = i10;
                i5 = i5;
                if (i10 < i3) {
                    i4 = i10 + 1;
                    bArr[i10] = (byte) i7;
                }
            }
            i5 = i5;
        }
        return bArr;
    }

    /* renamed from: d */
    public static char[] m867d(byte[] bArr, boolean z) {
        int i = 0;
        int length = bArr != null ? bArr.length : 0;
        if (length == 0) {
            return new char[0];
        }
        int i2 = (length / 3) * 3;
        int a = m870a(length, z);
        char[] cArr = new char[a];
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i3 + 1;
            int i6 = i5 + 1;
            int i7 = ((bArr[i3] & 255) << 16) | ((bArr[i5] & 255) << 8) | (bArr[i6] & 255);
            if (z) {
                int i8 = i4 + 1;
                char[] cArr2 = f250b;
                cArr[i4] = cArr2[(i7 >>> 18) & 63];
                int i9 = i8 + 1;
                cArr[i8] = cArr2[(i7 >>> 12) & 63];
                int i10 = i9 + 1;
                cArr[i9] = cArr2[(i7 >>> 6) & 63];
                i4 = i10 + 1;
                cArr[i10] = cArr2[i7 & 63];
            } else {
                int i11 = i4 + 1;
                char[] cArr3 = f249a;
                cArr[i4] = cArr3[(i7 >>> 18) & 63];
                int i12 = i11 + 1;
                cArr[i11] = cArr3[(i7 >>> 12) & 63];
                int i13 = i12 + 1;
                cArr[i12] = cArr3[(i7 >>> 6) & 63];
                i4 = i13 + 1;
                cArr[i13] = cArr3[i7 & 63];
            }
            i3 = i6 + 1;
        }
        int i14 = length - i2;
        if (i14 > 0) {
            byte b = bArr[i2];
            if (i14 == 2) {
                i = (bArr[length - 1] & 255) << 2;
            }
            int i15 = ((b & 255) << 10) | i;
            if (!z) {
                char[] cArr4 = f249a;
                cArr[a - 4] = cArr4[i15 >> 12];
                cArr[a - 3] = cArr4[(i15 >>> 6) & 63];
                cArr[a - 2] = i14 == 2 ? cArr4[i15 & 63] : '=';
                cArr[a - 1] = (char) 61;
            } else if (i14 == 2) {
                char[] cArr5 = f250b;
                cArr[a - 3] = cArr5[i15 >> 12];
                cArr[a - 2] = cArr5[(i15 >>> 6) & 63];
                cArr[a - 1] = cArr5[i15 & 63];
            } else {
                char[] cArr6 = f250b;
                cArr[a - 2] = cArr6[i15 >> 12];
                cArr[a - 1] = cArr6[(i15 >>> 6) & 63];
            }
        }
        return cArr;
    }

    /* renamed from: e */
    public static String m866e(byte[] bArr, boolean z) {
        return new String(m867d(bArr, z));
    }

    /* renamed from: f */
    public static String m865f(String str) {
        int length = str.length();
        int b = (length - m869b(str)) % 4;
        int i = b == 0 ? 0 : 4 - b;
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
