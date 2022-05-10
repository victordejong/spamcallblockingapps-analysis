package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzij;
/* renamed from: c.d.b.d.g.f.l5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/l5.class */
public final class C4540l5 {
    /* renamed from: b */
    public static void m25378b(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws zzij {
        if (m25370g(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m25370g(b3) || m25370g(b4)) {
            throw zzij.zzh();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    /* renamed from: b */
    public static void m25377b(byte b, byte b2, byte b3, char[] cArr, int i) throws zzij {
        if (m25370g(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || m25370g(b3)))) {
            throw zzij.zzh();
        }
        cArr[i] = (char) (((b & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
    }

    /* renamed from: b */
    public static void m25376b(byte b, byte b2, char[] cArr, int i) throws zzij {
        if (b < -62 || m25370g(b2)) {
            throw zzij.zzh();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    /* renamed from: b */
    public static void m25375b(byte b, char[] cArr, int i) {
        cArr[i] = (char) b;
    }

    /* renamed from: d */
    public static boolean m25373d(byte b) {
        return b >= 0;
    }

    /* renamed from: e */
    public static boolean m25372e(byte b) {
        return b < -32;
    }

    /* renamed from: f */
    public static boolean m25371f(byte b) {
        return b < -16;
    }

    /* renamed from: g */
    public static boolean m25370g(byte b) {
        return b > -65;
    }
}
