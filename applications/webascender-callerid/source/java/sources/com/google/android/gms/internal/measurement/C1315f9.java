package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.f9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/f9.class */
final class C1315f9 {

    /* renamed from: a */
    private static final AbstractC1294b9 f3901a;

    static {
        f3901a = (!C1422z8.m1822l() || !C1422z8.m1821m() || C1412y4.m1879a()) ? new c9() : new e9();
    }

    /* renamed from: a */
    public static boolean m2148a(byte[] bArr) {
        return f3901a.m2221a(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static boolean m2147b(byte[] bArr, int i, int i2) {
        return f3901a.m2221a(bArr, i, i2);
    }

    /* renamed from: c */
    static int m2146c(CharSequence charSequence) {
        int i;
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        while (i3 < length && charSequence.charAt(i3) < 128) {
            i3++;
        }
        int i4 = length;
        while (true) {
            i = i4;
            if (i3 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i3);
            if (charAt < 2048) {
                i4 += (127 - charAt) >>> 31;
                i3++;
            } else {
                int length2 = charSequence.length();
                int i5 = 0;
                while (i3 < length2) {
                    char charAt2 = charSequence.charAt(i3);
                    if (charAt2 < 2048) {
                        i5 += (127 - charAt2) >>> 31;
                        i2 = i3;
                    } else {
                        int i6 = i5 + 2;
                        i5 = i6;
                        i2 = i3;
                        if (charAt2 >= 55296) {
                            i5 = i6;
                            i2 = i3;
                            if (charAt2 > 57343) {
                                continue;
                            } else if (Character.codePointAt(charSequence, i3) < 65536) {
                                throw new C1307d9(i3, length2);
                            } else {
                                i2 = i3 + 1;
                                i5 = i6;
                            }
                        } else {
                            continue;
                        }
                    }
                    i3 = i2 + 1;
                }
                i = i4 + i5;
            }
        }
        if (i >= length) {
            return i;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("UTF-8 length does not fit in int: ");
        sb.append(i + 4294967296L);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: d */
    static int m2145d(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f3901a.m2218d(charSequence, bArr, i, i2);
    }

    /* renamed from: e */
    public static String m2144e(byte[] bArr, int i, int i2) throws zzic {
        return f3901a.m2219c(bArr, i, i2);
    }

    /* renamed from: h */
    static /* synthetic */ int m2141h(byte[] bArr, int i, int i2) {
        int i3;
        byte b = bArr[i - 1];
        int i4 = i2 - i;
        if (i4 == 0) {
            i3 = m2139j(b);
        } else if (i4 == 1) {
            i3 = m2138k(b, bArr[i]);
        } else if (i4 != 2) {
            throw new AssertionError();
        } else {
            i3 = m2137l(b, bArr[i], bArr[i + 1]);
        }
        return i3;
    }

    /* renamed from: j */
    public static int m2139j(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: k */
    public static int m2138k(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* renamed from: l */
    public static int m2137l(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }
}
