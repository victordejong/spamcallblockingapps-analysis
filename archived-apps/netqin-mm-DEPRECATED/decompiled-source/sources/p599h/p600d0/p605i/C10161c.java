package p599h.p600d0.p605i;

import java.io.IOException;
import okio.ByteString;
import p599h.p600d0.C10109c;
/* renamed from: h.d0.i.c */
/* loaded from: classes2-dex2jar.jar:h/d0/i/c.class */
public final class C10161c {

    /* renamed from: a */
    public static final ByteString f37517a = ByteString.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* renamed from: b */
    public static final String[] f37518b = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* renamed from: c */
    public static final String[] f37519c = new String[64];

    /* renamed from: d */
    public static final String[] f37520d = new String[256];

    static {
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = f37520d;
            if (i2 >= strArr.length) {
                break;
            }
            strArr[i2] = C10109c.m1452a("%8s", Integer.toBinaryString(i2)).replace(' ', '0');
            i2++;
        }
        String[] strArr2 = f37519c;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        for (int i3 = 0; i3 < 1; i3++) {
            int i4 = iArr[i3];
            f37519c[i4 | 8] = f37519c[i4] + "|PADDED";
        }
        String[] strArr3 = f37519c;
        strArr3[4] = "END_HEADERS";
        strArr3[32] = "PRIORITY";
        strArr3[36] = "END_HEADERS|PRIORITY";
        for (int i5 = 0; i5 < 3; i5++) {
            int i6 = new int[]{4, 32, 36}[i5];
            for (int i7 = 0; i7 < 1; i7++) {
                int i8 = iArr[i7];
                int i9 = i8 | i6;
                f37519c[i9] = f37519c[i8] + '|' + f37519c[i6];
                f37519c[i9 | 8] = f37519c[i8] + '|' + f37519c[i6] + "|PADDED";
            }
        }
        while (true) {
            String[] strArr4 = f37519c;
            if (i < strArr4.length) {
                if (strArr4[i] == null) {
                    strArr4[i] = f37520d[i];
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public static IllegalArgumentException m1246a(String str, Object... objArr) {
        throw new IllegalArgumentException(C10109c.m1452a(str, objArr));
    }

    /* renamed from: a */
    public static String m1247a(byte b, byte b2) {
        if (b2 == 0) {
            return "";
        }
        if (!(b == 2 || b == 3)) {
            if (b == 4 || b == 6) {
                return b2 == 1 ? "ACK" : f37520d[b2];
            } else if (!(b == 7 || b == 8)) {
                String[] strArr = f37519c;
                String str = b2 < strArr.length ? strArr[b2] : f37520d[b2];
                return (b != 5 || (b2 & 4) == 0) ? (b != 0 || (b2 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED") : str.replace("HEADERS", "PUSH_PROMISE");
            }
        }
        return f37520d[b2];
    }

    /* renamed from: a */
    public static String m1245a(boolean z, int i, int i2, byte b, byte b2) {
        String[] strArr = f37518b;
        return C10109c.m1452a("%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i), Integer.valueOf(i2), b < strArr.length ? strArr[b] : C10109c.m1452a("0x%02x", Byte.valueOf(b)), m1247a(b, b2));
    }

    /* renamed from: b */
    public static IOException m1244b(String str, Object... objArr) throws IOException {
        throw new IOException(C10109c.m1452a(str, objArr));
    }
}
