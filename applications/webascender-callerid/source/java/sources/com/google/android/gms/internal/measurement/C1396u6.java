package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.measurement.u6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/u6.class */
public final class C1396u6 {

    /* renamed from: a */
    static final Charset f3965a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final byte[] f3966b;

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f3966b = bArr;
        ByteBuffer.wrap(bArr);
        try {
            new o5(bArr, 0, 0, false, (C1358n5) null).c(0);
        } catch (zzic e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: a */
    public static <T> T m1908a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: b */
    public static <T> T m1907b(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* renamed from: c */
    public static boolean m1906c(byte[] bArr) {
        return C1315f9.m2148a(bArr);
    }

    /* renamed from: d */
    public static String m1905d(byte[] bArr) {
        return new String(bArr, f3965a);
    }

    /* renamed from: e */
    public static int m1904e(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: f */
    public static int m1903f(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: g */
    public static int m1902g(byte[] bArr) {
        int length = bArr.length;
        int m1901h = m1901h(length, bArr, 0, length);
        int i = m1901h;
        if (m1901h == 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: h */
    static int m1901h(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* renamed from: i */
    static Object m1900i(Object obj, Object obj2) {
        n7 d = ((o7) obj).d();
        d.h1((o7) obj2);
        return d.s0();
    }
}
