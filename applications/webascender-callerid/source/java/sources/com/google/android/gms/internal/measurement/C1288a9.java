package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.a9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/a9.class */
final class C1288a9 {
    /* renamed from: a */
    static /* synthetic */ boolean m2234a(byte b) {
        return b >= 0;
    }

    /* renamed from: b */
    static /* synthetic */ boolean m2233b(byte b) {
        return b < -32;
    }

    /* renamed from: c */
    static /* synthetic */ void m2232c(byte b, byte b2, char[] cArr, int i) throws zzic {
        if (b < -62 || m2228g(b2)) {
            throw zzic.m1802f();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    /* renamed from: d */
    static /* synthetic */ boolean m2231d(byte b) {
        return b < -16;
    }

    /* renamed from: e */
    static /* synthetic */ void m2230e(byte b, byte b2, byte b3, char[] cArr, int i) throws zzic {
        if (!m2228g(b2)) {
            byte b4 = b;
            if (b == -32) {
                if (b2 >= -96) {
                    b4 = -32;
                }
            }
            byte b5 = b4;
            if (b4 == -19) {
                if (b2 < -96) {
                    b5 = -19;
                }
            }
            if (!m2228g(b3)) {
                cArr[i] = (char) (((b5 & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
                return;
            }
        }
        throw zzic.m1802f();
    }

    /* renamed from: f */
    static /* synthetic */ void m2229f(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws zzic {
        if (m2228g(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m2228g(b3) || m2228g(b4)) {
            throw zzic.m1802f();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    /* renamed from: g */
    private static boolean m2228g(byte b) {
        return b > -65;
    }
}
