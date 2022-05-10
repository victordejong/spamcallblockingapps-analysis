package com.google.android.gms.internal.clearcut;

import com.android.volley.Request;
import com.android.volley.toolbox.HttpHeaderParser;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import p131c.p161d.p170b.p224d.p252g.p255c.C4382m2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzci.class */
public final class zzci {

    /* renamed from: a */
    public static final Charset f29264a = Charset.forName(Request.DEFAULT_PARAMS_ENCODING);

    /* renamed from: b */
    public static final byte[] f29265b;

    static {
        Charset.forName(HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
        byte[] bArr = new byte[0];
        f29265b = bArr;
        ByteBuffer.wrap(bArr);
        byte[] bArr2 = f29265b;
        zzbk.m10831a(bArr2, 0, bArr2.length, false);
    }

    /* renamed from: a */
    public static int m10704a(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* renamed from: a */
    public static int m10703a(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: a */
    public static int m10698a(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: a */
    public static int m10697a(byte[] bArr) {
        int length = bArr.length;
        int a = m10704a(length, bArr, 0, length);
        int i = a;
        if (a == 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: a */
    public static <T> T m10701a(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    /* renamed from: a */
    public static Object m10700a(Object obj, Object obj2) {
        return ((zzdo) obj).mo10683c().mo10679a((zzdo) obj2).mo10677u();
    }

    /* renamed from: a */
    public static <T> T m10699a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: a */
    public static boolean m10702a(zzdo zzdoVar) {
        return false;
    }

    /* renamed from: b */
    public static boolean m10696b(byte[] bArr) {
        return C4382m2.m25772a(bArr);
    }

    /* renamed from: c */
    public static String m10695c(byte[] bArr) {
        return new String(bArr, f29264a);
    }
}
