package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.eu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/eu.class */
final class C2597eu {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m2522a(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) {
        if (m2518c(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m2518c(b3) || m2518c(b4)) {
            throw zzfo.m2260h();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m2521a(byte b, byte b2, byte b3, char[] cArr, int i) {
        if (m2518c(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || m2518c(b3)))) {
            throw zzfo.m2260h();
        }
        cArr[i] = (char) (((b & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m2520a(byte b, byte b2, char[] cArr, int i) {
        if (b < -62 || m2518c(b2)) {
            throw zzfo.m2260h();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ boolean m2523a(byte b) {
        return b < -32;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ boolean m2519b(byte b) {
        return b < -16;
    }

    /* renamed from: c */
    private static boolean m2518c(byte b) {
        return b > -65;
    }
}
