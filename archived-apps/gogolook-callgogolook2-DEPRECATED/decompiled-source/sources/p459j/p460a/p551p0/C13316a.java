package p459j.p460a.p551p0;
/* renamed from: j.a.p0.a */
/* loaded from: classes3-dex2jar.jar:j/a/p0/a.class */
public class C13316a {

    /* renamed from: a */
    public static final char[] f29968a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b */
    public static final char[] f29969b = new char[256];

    /* renamed from: c */
    public static final char[] f29970c = new char[256];

    /* renamed from: d */
    public static final byte[] f29971d;

    static {
        for (int i = 0; i < 256; i++) {
            char[] cArr = f29969b;
            char[] cArr2 = f29968a;
            cArr[i] = cArr2[(i >> 4) & 15];
            f29970c[i] = cArr2[i & 15];
        }
        f29971d = new byte[103];
        for (int i2 = 0; i2 <= 70; i2++) {
            f29971d[i2] = (byte) (-1);
        }
        for (byte b = 0; b < 10; b = (byte) (b + 1)) {
            f29971d[b + 48] = b;
        }
        for (byte b2 = 0; b2 < 6; b2 = (byte) (b2 + 1)) {
            byte[] bArr = f29971d;
            byte b3 = (byte) (b2 + 10);
            bArr[b2 + 65] = b3;
            bArr[b2 + 97] = b3;
        }
    }

    /* renamed from: a */
    public static String m4271a(byte[] bArr, boolean z) {
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i3 = bArr[i2] & 255;
            if (z && i3 == 0 && i2 == bArr.length - 1) {
                break;
            }
            int i4 = i + 1;
            cArr[i] = f29969b[i3];
            i = i4 + 1;
            cArr[i4] = f29970c[i3];
        }
        return new String(cArr, 0, i);
    }
}
