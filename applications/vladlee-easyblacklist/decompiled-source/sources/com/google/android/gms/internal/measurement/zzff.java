package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzff.class */
public final class zzff {

    /* renamed from: a */
    static final Charset f16286a = Charset.forName("UTF-8");

    /* renamed from: b */
    private static final Charset f16287b = Charset.forName("ISO-8859-1");

    /* renamed from: c */
    private static final ByteBuffer f16288c;

    /* renamed from: d */
    private static final zzeg f16289d;
    public static final byte[] zzb;

    static {
        byte[] bArr = new byte[0];
        zzb = bArr;
        f16288c = ByteBuffer.wrap(bArr);
        byte[] bArr2 = zzb;
        f16289d = zzeg.m2301a(bArr2, bArr2.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2272a(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> T m2271a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Object m2270a(Object obj, Object obj2) {
        return ((zzgo) obj).zzbr().zza((zzgo) obj2).zzt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> T m2269a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m2273a() {
        return false;
    }

    public static int zza(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static int zza(boolean z) {
        return z ? 1231 : 1237;
    }

    public static boolean zza(byte[] bArr) {
        return C2595es.m2531a(bArr);
    }

    public static String zzb(byte[] bArr) {
        return new String(bArr, f16286a);
    }

    public static int zzc(byte[] bArr) {
        int length = bArr.length;
        int a = m2272a(length, bArr, 0, length);
        int i = a;
        if (a == 0) {
            i = 1;
        }
        return i;
    }
}
