package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.e0;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/k.class */
public final class C1117k {

    /* renamed from: a */
    static final Charset f3738a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final byte[] f3739b;

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f3739b = bArr;
        ByteBuffer.wrap(bArr);
        AbstractC1179pp.m2606l(bArr, 0, 0, false);
    }

    /* renamed from: a */
    public static <T> T m2787a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: b */
    public static <T> T m2786b(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* renamed from: c */
    public static boolean m2785c(byte[] bArr) {
        return C1236w1.m2384a(bArr);
    }

    /* renamed from: d */
    public static String m2784d(byte[] bArr) {
        return new String(bArr, f3738a);
    }

    /* renamed from: e */
    public static int m2783e(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: f */
    public static int m2782f(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: g */
    public static int m2781g(byte[] bArr) {
        int length = bArr.length;
        int m2780h = m2780h(length, bArr, 0, length);
        int i = m2780h;
        if (m2780h == 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: h */
    static int m2780h(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* renamed from: i */
    static Object m2779i(Object obj, Object obj2) {
        e0 o = ((f0) obj).o();
        o.K((f0) obj2);
        return o.j();
    }
}
