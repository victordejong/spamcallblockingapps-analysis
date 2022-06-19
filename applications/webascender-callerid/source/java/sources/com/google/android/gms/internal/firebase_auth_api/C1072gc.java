package com.google.android.gms.internal.firebase_auth_api;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.gc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/gc.class */
final class C1072gc {
    /* renamed from: a */
    static byte[] m2850a(byte[] bArr) {
        byte b;
        if (bArr.length == 16) {
            byte[] bArr2 = new byte[16];
            for (int i = 0; i < 16; i++) {
                byte b2 = bArr[i];
                bArr2[i] = (byte) ((b2 + b2) & 254);
                if (i < 15) {
                    bArr2[i] = (byte) (((bArr[i + 1] >> 7) & 1) | b);
                }
            }
            bArr2[15] = (byte) (((byte) ((bArr[0] >> 7) & 135)) ^ bArr2[15]);
            return bArr2;
        }
        throw new IllegalArgumentException("value must be a block.");
    }

    /* renamed from: b */
    static byte[] m2849b(byte[] bArr) {
        int length = bArr.length;
        if (length < 16) {
            byte[] copyOf = Arrays.copyOf(bArr, 16);
            copyOf[length] = (byte) (-128);
            return copyOf;
        }
        throw new IllegalArgumentException("x must be smaller than a block.");
    }
}
