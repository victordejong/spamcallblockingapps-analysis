package com.google.android.gms.internal.ads;

import com.android.volley.toolbox.HttpHeaderParser;
import com.mopub.mobileads.resource.DrawableConstants;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbq.class */
public final class zzbq {
    /* renamed from: a */
    public static int m15190a(byte b) {
        int i = b;
        if (b < 0) {
            i = b + 256;
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m15189a(java.nio.ByteBuffer r5) {
        /*
            r0 = r5
            int r0 = r0.getInt()
            long r0 = (long) r0
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0014
            r0 = r6
            r1 = 4294967296(0x100000000, double:2.121995791E-314)
            long r0 = r0 + r1
            r8 = r0
        L_0x0014:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbq.m15189a(java.nio.ByteBuffer):long");
    }

    /* renamed from: b */
    public static int m15188b(ByteBuffer byteBuffer) {
        return (m15190a(byteBuffer.get()) << 8) + 0 + m15190a(byteBuffer.get());
    }

    /* renamed from: c */
    public static long m15187c(ByteBuffer byteBuffer) {
        long a = (m15189a(byteBuffer) << 32) + 0;
        if (a >= 0) {
            return a + m15189a(byteBuffer);
        }
        throw new RuntimeException("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
    }

    /* renamed from: d */
    public static double m15186d(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        double d = 0 | ((bArr[0] << 24) & DrawableConstants.CtaButton.BACKGROUND_COLOR) | ((bArr[1] << 16) & 16711680) | ((bArr[2] << 8) & 65280) | (bArr[3] & 255);
        Double.isNaN(d);
        return d / 65536.0d;
    }

    /* renamed from: e */
    public static double m15185e(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        double d = 0 | ((bArr[0] << 24) & DrawableConstants.CtaButton.BACKGROUND_COLOR) | ((bArr[1] << 16) & 16711680) | ((bArr[2] << 8) & 65280) | (bArr[3] & 255);
        Double.isNaN(d);
        return d / 1.073741824E9d;
    }

    /* renamed from: f */
    public static String m15184f(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        try {
            return new String(bArr, HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }
}
