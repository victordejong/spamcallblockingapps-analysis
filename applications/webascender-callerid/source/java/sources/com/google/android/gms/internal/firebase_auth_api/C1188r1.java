package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.zzaal;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.r1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/r1.class */
final class C1188r1 {
    /* renamed from: a */
    static /* synthetic */ boolean m2491a(byte b) {
        return b >= 0;
    }

    /* renamed from: b */
    static /* synthetic */ boolean m2490b(byte b) {
        return b < -32;
    }

    /* renamed from: c */
    static /* synthetic */ void m2489c(byte b, byte b2, char[] cArr, int i) throws zzaal {
        if (b < -62 || m2485g(b2)) {
            throw zzaal.m2265i();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    /* renamed from: d */
    static /* synthetic */ boolean m2488d(byte b) {
        return b < -16;
    }

    /* renamed from: e */
    static /* synthetic */ void m2487e(byte b, byte b2, byte b3, char[] cArr, int i) throws zzaal {
        if (!m2485g(b2)) {
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
            if (!m2485g(b3)) {
                cArr[i] = (char) (((b5 & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
                return;
            }
        }
        throw zzaal.m2265i();
    }

    /* renamed from: f */
    static /* synthetic */ void m2486f(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws zzaal {
        if (m2485g(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m2485g(b3) || m2485g(b4)) {
            throw zzaal.m2265i();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    /* renamed from: g */
    private static boolean m2485g(byte b) {
        return b > -65;
    }
}
