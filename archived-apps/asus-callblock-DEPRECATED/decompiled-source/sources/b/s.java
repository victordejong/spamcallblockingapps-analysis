package b;

import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:b/s.class */
final class s {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f345a = Charset.forName("UTF-8");

    public static int a(int i) {
        return (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8) | ((i & 255) << 24);
    }

    public static short a(short s) {
        int i = 65535 & s;
        return (short) (((i & 255) << 8) | ((65280 & i) >>> 8));
    }

    public static void a(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException(String.format("size=%s offset=%s byteCount=%s", Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3)));
        }
    }

    public static void a(Throwable th) {
        throw th;
    }

    public static boolean a(byte[] bArr, byte[] bArr2, int i) {
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                z = true;
                break;
            } else if (bArr[i2 + 0] != bArr2[i2 + 0]) {
                break;
            } else {
                i2++;
            }
        }
        return z;
    }
}
