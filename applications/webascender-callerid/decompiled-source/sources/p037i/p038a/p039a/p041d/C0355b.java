package p037i.p038a.p039a.p041d;

import java.util.Arrays;
/* renamed from: i.a.a.d.b */
/* loaded from: classes2-dex2jar.jar:i/a/a/d/b.class */
public final class C0355b {

    /* renamed from: a */
    private static final char[] f961a = m358b();

    static {
        m359a();
    }

    /* renamed from: a */
    private static byte[] m359a() {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i = 0; i < 16; i++) {
            bArr["0123456789abcdef".charAt(i)] = (byte) i;
        }
        return bArr;
    }

    /* renamed from: b */
    private static char[] m358b() {
        char[] cArr = new char[512];
        for (int i = 0; i < 256; i++) {
            cArr[i] = "0123456789abcdef".charAt(i >>> 4);
            cArr[i | 256] = "0123456789abcdef".charAt(i & 15);
        }
        return cArr;
    }

    /* renamed from: c */
    public static void m357c(byte b, char[] cArr, int i) {
        int i2 = b & 255;
        char[] cArr2 = f961a;
        cArr[i] = cArr2[i2];
        cArr[i + 1] = cArr2[i2 | 256];
    }

    /* renamed from: d */
    public static boolean m356d(char c) {
        return ('0' <= c && c <= '9') || ('a' <= c && c <= 'f');
    }

    /* renamed from: e */
    public static boolean m355e(CharSequence charSequence) {
        for (int i = 0; i < charSequence.length(); i++) {
            if (!m356d(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public static void m354f(long j, char[] cArr, int i) {
        m357c((byte) ((j >> 56) & 255), cArr, i);
        m357c((byte) ((j >> 48) & 255), cArr, i + 2);
        m357c((byte) ((j >> 40) & 255), cArr, i + 4);
        m357c((byte) ((j >> 32) & 255), cArr, i + 6);
        m357c((byte) ((j >> 24) & 255), cArr, i + 8);
        m357c((byte) ((j >> 16) & 255), cArr, i + 10);
        m357c((byte) ((j >> 8) & 255), cArr, i + 12);
        m357c((byte) (j & 255), cArr, i + 14);
    }
}
