package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.g1;
import com.google.android.gms.internal.firebase-auth-api.r0;
import com.google.android.gms.internal.firebase-auth-api.xo;
import com.google.android.gms.internal.firebase-auth-api.zzaal;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.yo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/yo.class */
final class C1270yo {
    /* renamed from: a */
    static int m2298a(byte[] bArr, int i, xo xoVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            xoVar.f3837a = b;
            return i2;
        }
        return m2297b(b, bArr, i2, xoVar);
    }

    /* renamed from: b */
    static int m2297b(int i, byte[] bArr, int i2, xo xoVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            xoVar.f3837a = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            xoVar.f3837a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            xoVar.f3837a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            xoVar.f3837a = i9 | (b4 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                xoVar.f3837a = i9 | ((b4 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: c */
    static int m2296c(byte[] bArr, int i, xo xoVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            xoVar.f3838b = j;
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
        xoVar.f3838b = c;
        return i3;
    }

    /* renamed from: d */
    static int m2295d(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: e */
    static long m2294e(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: f */
    static int m2293f(byte[] bArr, int i, xo xoVar) throws zzaal {
        int m2298a = m2298a(bArr, i, xoVar);
        int i2 = xoVar.f3837a;
        if (i2 >= 0) {
            if (i2 == 0) {
                xoVar.f3839c = "";
                return m2298a;
            }
            xoVar.f3839c = new String(bArr, m2298a, i2, C1117k.f3738a);
            return m2298a + i2;
        }
        throw zzaal.m2271c();
    }

    /* renamed from: g */
    static int m2292g(byte[] bArr, int i, xo xoVar) throws zzaal {
        int m2298a = m2298a(bArr, i, xoVar);
        int i2 = xoVar.f3837a;
        if (i2 >= 0) {
            if (i2 == 0) {
                xoVar.f3839c = "";
                return m2298a;
            }
            xoVar.f3839c = C1236w1.m2380e(bArr, m2298a, i2);
            return m2298a + i2;
        }
        throw zzaal.m2271c();
    }

    /* renamed from: h */
    static int m2291h(byte[] bArr, int i, xo xoVar) throws zzaal {
        int m2298a = m2298a(bArr, i, xoVar);
        int i2 = xoVar.f3837a;
        if (i2 >= 0) {
            if (i2 > bArr.length - m2298a) {
                throw zzaal.m2272b();
            }
            if (i2 == 0) {
                xoVar.f3839c = AbstractC1151mp.f3756g;
                return m2298a;
            }
            xoVar.f3839c = AbstractC1151mp.m2723q(bArr, m2298a, i2);
            return m2298a + i2;
        }
        throw zzaal.m2271c();
    }

    /* renamed from: i */
    static int m2290i(r0 r0Var, byte[] bArr, int i, int i2, xo xoVar) throws IOException {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = m2297b(b, bArr, i3, xoVar);
            i5 = xoVar.f3837a;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzaal.m2272b();
        }
        Object zza = r0Var.zza();
        int i6 = i5 + i4;
        r0Var.m2492i(zza, bArr, i4, i6, xoVar);
        r0Var.m2497d(zza);
        xoVar.f3839c = zza;
        return i6;
    }

    /* renamed from: j */
    static int m2289j(r0 r0Var, byte[] bArr, int i, int i2, int i3, xo xoVar) throws IOException {
        i0 i0Var = (i0) r0Var;
        Object zza = i0Var.zza();
        int I = i0Var.I(zza, bArr, i, i2, i3, xoVar);
        i0Var.d(zza);
        xoVar.f3839c = zza;
        return I;
    }

    /* renamed from: k */
    static int m2288k(int i, byte[] bArr, int i2, int i3, AbstractC1106j<?> abstractC1106j, C1257xo c1257xo) {
        f fVar = (f) abstractC1106j;
        int m2298a = m2298a(bArr, i2, c1257xo);
        fVar.g(c1257xo.f3837a);
        while (m2298a < i3) {
            int m2298a2 = m2298a(bArr, m2298a, c1257xo);
            if (i != c1257xo.f3837a) {
                break;
            }
            m2298a = m2298a(bArr, m2298a2, c1257xo);
            fVar.g(c1257xo.f3837a);
        }
        return m2298a;
    }

    /* renamed from: l */
    static int m2287l(byte[] bArr, int i, AbstractC1106j<?> abstractC1106j, C1257xo c1257xo) throws IOException {
        f fVar = (f) abstractC1106j;
        int m2298a = m2298a(bArr, i, c1257xo);
        int i2 = c1257xo.f3837a + m2298a;
        while (m2298a < i2) {
            m2298a = m2298a(bArr, m2298a, c1257xo);
            fVar.g(c1257xo.f3837a);
        }
        if (m2298a == i2) {
            return m2298a;
        }
        throw zzaal.m2272b();
    }

    /* renamed from: m */
    static int m2286m(AbstractC1187r0<?> abstractC1187r0, int i, byte[] bArr, int i2, int i3, AbstractC1106j<?> abstractC1106j, C1257xo c1257xo) throws IOException {
        int m2290i = m2290i(abstractC1187r0, bArr, i2, i3, c1257xo);
        abstractC1106j.add(c1257xo.f3839c);
        while (m2290i < i3) {
            int m2298a = m2298a(bArr, m2290i, c1257xo);
            if (i != c1257xo.f3837a) {
                break;
            }
            m2290i = m2290i(abstractC1187r0, bArr, m2298a, i3, c1257xo);
            abstractC1106j.add(c1257xo.f3839c);
        }
        return m2290i;
    }

    /* renamed from: n */
    static int m2285n(int i, byte[] bArr, int i2, int i3, g1 g1Var, xo xoVar) throws zzaal {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int m2296c = m2296c(bArr, i2, xoVar);
                g1Var.m2854h(i, Long.valueOf(xoVar.f3838b));
                return m2296c;
            } else if (i5 == 1) {
                g1Var.m2854h(i, Long.valueOf(m2294e(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int m2298a = m2298a(bArr, i2, xoVar);
                int i6 = xoVar.f3837a;
                if (i6 < 0) {
                    throw zzaal.m2271c();
                }
                if (i6 > bArr.length - m2298a) {
                    throw zzaal.m2272b();
                }
                if (i6 == 0) {
                    g1Var.m2854h(i, AbstractC1151mp.f3756g);
                } else {
                    g1Var.m2854h(i, AbstractC1151mp.m2723q(bArr, m2298a, i6));
                }
                return m2298a + i6;
            } else if (i5 != 3) {
                if (i5 != 5) {
                    throw zzaal.m2269e();
                }
                g1Var.m2854h(i, Integer.valueOf(m2295d(bArr, i2)));
                return i2 + 4;
            } else {
                int i7 = (i & (-8)) | 4;
                g1 m2860b = C1067g1.m2860b();
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int m2298a2 = m2298a(bArr, i2, xoVar);
                    i8 = xoVar.f3837a;
                    if (i8 == i7) {
                        i4 = m2298a2;
                        break;
                    }
                    i2 = m2285n(i8, bArr, m2298a2, i3, m2860b, xoVar);
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzaal.m2266h();
                }
                g1Var.m2854h(i, m2860b);
                return i4;
            }
        }
        throw zzaal.m2269e();
    }
}
