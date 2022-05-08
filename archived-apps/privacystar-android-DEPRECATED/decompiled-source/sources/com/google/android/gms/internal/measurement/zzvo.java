package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.spongycastle.i18n.LocalizedMessage;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzvo.class */
public final class zzvo {
    public static final byte[] zzbzj;
    private static final ByteBuffer zzbzk;
    private static final zzuo zzbzl;
    static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final Charset ISO_8859_1 = Charset.forName(LocalizedMessage.DEFAULT_ENCODING);

    static {
        byte[] bArr = new byte[0];
        zzbzj = bArr;
        zzbzk = ByteBuffer.wrap(bArr);
        byte[] bArr2 = zzbzj;
        zzbzl = zzuo.zza(bArr2, 0, bArr2.length, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T checkNotNull(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    public static int hashCode(byte[] bArr) {
        int length = bArr.length;
        int zza = zza(length, bArr, 0, length);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T zza(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzb(Object obj, Object obj2) {
        return ((zzwt) obj).zzwd().zza((zzwt) obj2).zzwi();
    }

    public static int zzbf(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzf(zzwt zzwtVar) {
        return false;
    }

    public static boolean zzl(byte[] bArr) {
        return zzyj.zzl(bArr);
    }

    public static String zzm(byte[] bArr) {
        return new String(bArr, UTF_8);
    }

    public static int zzw(boolean z) {
        return z ? 1231 : 1237;
    }
}
