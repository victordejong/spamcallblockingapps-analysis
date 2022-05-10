package com.google.android.gms.internal.measurement;

import com.android.volley.Request;
import com.android.volley.toolbox.HttpHeaderParser;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import p131c.p161d.p170b.p224d.p252g.p258f.C4547m5;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzia.class */
public final class zzia {

    /* renamed from: a */
    public static final Charset f29511a = Charset.forName(Request.DEFAULT_PARAMS_ENCODING);

    /* renamed from: b */
    public static final byte[] f29512b;

    static {
        Charset.forName(HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
        byte[] bArr = new byte[0];
        f29512b = bArr;
        ByteBuffer.wrap(bArr);
        byte[] bArr2 = f29512b;
        zzhb.m9785a(bArr2, 0, bArr2.length, false);
    }

    /* renamed from: a */
    public static int m9641a(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    /* renamed from: a */
    public static int m9640a(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: a */
    public static int m9635a(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: a */
    public static <T> T m9638a(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    /* renamed from: a */
    public static Object m9637a(Object obj, Object obj2) {
        return ((zzjj) obj).mo9613e().mo9621a((zzjj) obj2).mo9617f();
    }

    /* renamed from: a */
    public static <T> T m9636a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: a */
    public static boolean m9639a(zzjj zzjjVar) {
        if (!(zzjjVar instanceof zzgh)) {
            return false;
        }
        zzgh zzghVar = (zzgh) zzjjVar;
        return false;
    }

    /* renamed from: a */
    public static boolean m9634a(byte[] bArr) {
        return C4547m5.m25363a(bArr);
    }

    /* renamed from: b */
    public static String m9633b(byte[] bArr) {
        return new String(bArr, f29511a);
    }

    /* renamed from: c */
    public static int m9632c(byte[] bArr) {
        int length = bArr.length;
        int a = m9641a(length, bArr, 0, length);
        int i = a;
        if (a == 0) {
            i = 1;
        }
        return i;
    }
}
