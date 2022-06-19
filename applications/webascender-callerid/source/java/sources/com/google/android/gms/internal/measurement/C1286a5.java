package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* renamed from: com.google.android.gms.internal.measurement.a5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/a5.class */
final class C1286a5 {
    /* renamed from: a */
    static int m2256a(byte[] bArr, int i, C1419z4 c1419z4) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            c1419z4.f3996a = b;
            return i2;
        }
        return m2255b(b, bArr, i2, c1419z4);
    }

    /* renamed from: b */
    static int m2255b(int i, byte[] bArr, int i2, C1419z4 c1419z4) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            c1419z4.f3996a = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            c1419z4.f3996a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            c1419z4.f3996a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            c1419z4.f3996a = i9 | (b4 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                c1419z4.f3996a = i9 | ((b4 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: c */
    static int m2254c(byte[] bArr, int i, C1419z4 c1419z4) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            c1419z4.f3997b = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b = bArr[i2];
        char c = (j & 127) | ((b & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b < 0) {
            b = bArr[i3];
            i4 += 7;
            c |= (b & Byte.MAX_VALUE) << i4;
            i3++;
        }
        c1419z4.f3997b = c;
        return i3;
    }

    /* renamed from: d */
    static int m2253d(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: e */
    static long m2252e(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: f */
    static int m2251f(byte[] bArr, int i, C1419z4 c1419z4) throws zzic {
        int m2256a = m2256a(bArr, i, c1419z4);
        int i2 = c1419z4.f3996a;
        if (i2 >= 0) {
            if (i2 == 0) {
                c1419z4.f3998c = "";
                return m2256a;
            }
            c1419z4.f3998c = new String(bArr, m2256a, i2, C1396u6.f3965a);
            return m2256a + i2;
        }
        throw zzic.m1806b();
    }

    /* renamed from: g */
    static int m2250g(byte[] bArr, int i, C1419z4 c1419z4) throws zzic {
        int m2256a = m2256a(bArr, i, c1419z4);
        int i2 = c1419z4.f3996a;
        if (i2 >= 0) {
            if (i2 == 0) {
                c1419z4.f3998c = "";
                return m2256a;
            }
            c1419z4.f3998c = C1315f9.m2144e(bArr, m2256a, i2);
            return m2256a + i2;
        }
        throw zzic.m1806b();
    }

    /* renamed from: h */
    static int m2249h(byte[] bArr, int i, C1419z4 c1419z4) throws zzic {
        int m2256a = m2256a(bArr, i, c1419z4);
        int i2 = c1419z4.f3996a;
        if (i2 >= 0) {
            if (i2 > bArr.length - m2256a) {
                throw zzic.m1807a();
            }
            if (i2 == 0) {
                c1419z4.f3998c = AbstractC1351m5.f3935g;
                return m2256a;
            }
            c1419z4.f3998c = AbstractC1351m5.m2039n(bArr, m2256a, i2);
            return m2256a + i2;
        }
        throw zzic.m1806b();
    }

    /* renamed from: i */
    static int m2248i(AbstractC1287a8 abstractC1287a8, byte[] bArr, int i, int i2, C1419z4 c1419z4) throws IOException {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = m2255b(b, bArr, i3, c1419z4);
            i5 = c1419z4.f3996a;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzic.m1807a();
        }
        Object zza = abstractC1287a8.zza();
        int i6 = i5 + i4;
        abstractC1287a8.m2237f(zza, bArr, i4, i6, c1419z4);
        abstractC1287a8.m2235h(zza);
        c1419z4.f3998c = zza;
        return i6;
    }

    /* renamed from: j */
    static int m2247j(AbstractC1287a8 abstractC1287a8, byte[] bArr, int i, int i2, int i3, C1419z4 c1419z4) throws IOException {
        s7 s7Var = (s7) abstractC1287a8;
        Object zza = s7Var.zza();
        int D = s7Var.D(zza, bArr, i, i2, i3, c1419z4);
        s7Var.h(zza);
        c1419z4.f3998c = zza;
        return D;
    }

    /* renamed from: k */
    static int m2246k(int i, byte[] bArr, int i2, int i3, AbstractC1383s6<?> abstractC1383s6, C1419z4 c1419z4) {
        m6 m6Var = (m6) abstractC1383s6;
        int m2256a = m2256a(bArr, i2, c1419z4);
        m6Var.h(c1419z4.f3996a);
        while (m2256a < i3) {
            int m2256a2 = m2256a(bArr, m2256a, c1419z4);
            if (i != c1419z4.f3996a) {
                break;
            }
            m2256a = m2256a(bArr, m2256a2, c1419z4);
            m6Var.h(c1419z4.f3996a);
        }
        return m2256a;
    }

    /* renamed from: l */
    static int m2245l(byte[] bArr, int i, AbstractC1383s6<?> abstractC1383s6, C1419z4 c1419z4) throws IOException {
        m6 m6Var = (m6) abstractC1383s6;
        int m2256a = m2256a(bArr, i, c1419z4);
        int i2 = c1419z4.f3996a + m2256a;
        while (m2256a < i2) {
            m2256a = m2256a(bArr, m2256a, c1419z4);
            m6Var.h(c1419z4.f3996a);
        }
        if (m2256a == i2) {
            return m2256a;
        }
        throw zzic.m1807a();
    }

    /* renamed from: m */
    static int m2244m(AbstractC1287a8<?> abstractC1287a8, int i, byte[] bArr, int i2, int i3, AbstractC1383s6<?> abstractC1383s6, C1419z4 c1419z4) throws IOException {
        int m2248i = m2248i(abstractC1287a8, bArr, i2, i3, c1419z4);
        abstractC1383s6.add(c1419z4.f3998c);
        while (m2248i < i3) {
            int m2256a = m2256a(bArr, m2248i, c1419z4);
            if (i != c1419z4.f3996a) {
                break;
            }
            m2248i = m2248i(abstractC1287a8, bArr, m2256a, i3, c1419z4);
            abstractC1383s6.add(c1419z4.f3998c);
        }
        return m2248i;
    }

    /* renamed from: n */
    static int m2243n(int i, byte[] bArr, int i2, int i3, C1365o8 c1365o8, C1419z4 c1419z4) throws zzic {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int m2254c = m2254c(bArr, i2, c1419z4);
                c1365o8.m2013h(i, Long.valueOf(c1419z4.f3997b));
                return m2254c;
            } else if (i5 == 1) {
                c1365o8.m2013h(i, Long.valueOf(m2252e(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int m2256a = m2256a(bArr, i2, c1419z4);
                int i6 = c1419z4.f3996a;
                if (i6 < 0) {
                    throw zzic.m1806b();
                }
                if (i6 > bArr.length - m2256a) {
                    throw zzic.m1807a();
                }
                if (i6 == 0) {
                    c1365o8.m2013h(i, AbstractC1351m5.f3935g);
                } else {
                    c1365o8.m2013h(i, AbstractC1351m5.m2039n(bArr, m2256a, i6));
                }
                return m2256a + i6;
            } else if (i5 != 3) {
                if (i5 != 5) {
                    throw zzic.m1805c();
                }
                c1365o8.m2013h(i, Integer.valueOf(m2253d(bArr, i2)));
                return i2 + 4;
            } else {
                int i7 = (i & (-8)) | 4;
                C1365o8 m2019b = C1365o8.m2019b();
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int m2256a2 = m2256a(bArr, i2, c1419z4);
                    i8 = c1419z4.f3996a;
                    if (i8 == i7) {
                        i4 = m2256a2;
                        break;
                    }
                    i2 = m2243n(i8, bArr, m2256a2, i3, m2019b, c1419z4);
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzic.m1803e();
                }
                c1365o8.m2013h(i, m2019b);
                return i4;
            }
        }
        throw zzic.m1805c();
    }
}
