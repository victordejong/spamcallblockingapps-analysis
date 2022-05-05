package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrv.class */
public final class zzdrv {

    /* renamed from: a */
    static final Charset f14562a = Charset.forName("UTF-8");

    /* renamed from: b */
    private static final Charset f14563b = Charset.forName("ISO-8859-1");

    /* renamed from: c */
    private static final ByteBuffer f14564c;

    /* renamed from: d */
    private static final zzdqw f14565d;
    public static final byte[] zzhng;

    static {
        byte[] bArr = new byte[0];
        zzhng = bArr;
        f14564c = ByteBuffer.wrap(bArr);
        byte[] bArr2 = zzhng;
        f14565d = zzdqw.m3393a(bArr2, 0, bArr2.length, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m3352a(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> T m3351a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Object m3350a(Object obj, Object obj2) {
        return ((zzdte) obj).zzazx().zzf((zzdte) obj2).zzbae();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> T m3349a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m3353a() {
        return false;
    }

    public static int hashCode(byte[] bArr) {
        int length = bArr.length;
        int a = m3352a(length, bArr, 0, length);
        int i = a;
        if (a == 0) {
            i = 1;
        }
        return i;
    }

    public static int zzbp(boolean z) {
        return z ? 1231 : 1237;
    }

    public static int zzfq(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static boolean zzy(byte[] bArr) {
        return akl.m5004a(bArr);
    }

    public static String zzz(byte[] bArr) {
        return new String(bArr, f14562a);
    }
}
