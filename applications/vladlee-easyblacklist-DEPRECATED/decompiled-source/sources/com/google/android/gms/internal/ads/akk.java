package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akk.class */
final class akk {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m5016a(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) {
        if (m5012c(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m5012c(b3) || m5012c(b4)) {
            throw zzdse.m3339i();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m5015a(byte b, byte b2, byte b3, char[] cArr, int i) {
        if (m5012c(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || m5012c(b3)))) {
            throw zzdse.m3339i();
        }
        cArr[i] = (char) (((b & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m5014a(byte b, byte b2, char[] cArr, int i) {
        if (b < -62 || m5012c(b2)) {
            throw zzdse.m3339i();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ boolean m5017a(byte b) {
        return b < -32;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ boolean m5013b(byte b) {
        return b < -16;
    }

    /* renamed from: c */
    private static boolean m5012c(byte b) {
        return b > -65;
    }
}
