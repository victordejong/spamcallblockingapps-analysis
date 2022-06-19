package com.google.android.gms.common.util;

import android.util.Base64;
/* renamed from: com.google.android.gms.common.util.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/c.class */
public final class C0962c {
    /* renamed from: a */
    public static byte[] m3174a(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 10);
    }

    /* renamed from: b */
    public static byte[] m3173b(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 11);
    }

    /* renamed from: c */
    public static String m3172c(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 0);
    }

    /* renamed from: d */
    public static String m3171d(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 10);
    }

    /* renamed from: e */
    public static String m3170e(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 11);
    }
}
