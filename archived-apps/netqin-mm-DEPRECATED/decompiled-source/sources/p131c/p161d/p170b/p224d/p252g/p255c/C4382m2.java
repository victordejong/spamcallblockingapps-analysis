package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzfi;
import java.nio.ByteBuffer;
/* renamed from: c.d.b.d.g.c.m2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/m2.class */
public final class C4382m2 {

    /* renamed from: a */
    public static final AbstractC4387n2 f16596a;

    static {
        f16596a = C4368k2.m25867b() && C4368k2.m25861c() ? new C4397p2() : new C4392o2();
    }

    /* renamed from: a */
    public static int m25778a(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m25777a(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* renamed from: a */
    public static int m25776a(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* renamed from: a */
    public static int m25775a(CharSequence charSequence) {
        int i;
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        int i4 = 0;
        while (i4 < length && charSequence.charAt(i4) < 128) {
            i4++;
        }
        int i5 = length;
        while (true) {
            i = i5;
            if (i4 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i4);
            if (charAt < 2048) {
                i5 += (127 - charAt) >>> 31;
                i4++;
            } else {
                int length2 = charSequence.length();
                while (i4 < length2) {
                    char charAt2 = charSequence.charAt(i4);
                    if (charAt2 < 2048) {
                        i3 += (127 - charAt2) >>> 31;
                        i2 = i4;
                    } else {
                        int i6 = i3 + 2;
                        i3 = i6;
                        i2 = i4;
                        if (55296 <= charAt2) {
                            i3 = i6;
                            i2 = i4;
                            if (charAt2 > 57343) {
                                continue;
                            } else if (Character.codePointAt(charSequence, i4) >= 65536) {
                                i2 = i4 + 1;
                                i3 = i6;
                            } else {
                                throw new zzfi(i4, length2);
                            }
                        } else {
                            continue;
                        }
                    }
                    i4 = i2 + 1;
                }
                i = i5 + i3;
            }
        }
        if (i >= length) {
            return i;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("UTF-8 length does not fit in int: ");
        sb.append(i + 4294967296L);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: a */
    public static int m25773a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f16596a.mo25730a(charSequence, bArr, i, i2);
    }

    /* renamed from: a */
    public static void m25774a(CharSequence charSequence, ByteBuffer byteBuffer) {
        AbstractC4387n2 n2Var = f16596a;
        if (byteBuffer.hasArray()) {
            int arrayOffset = byteBuffer.arrayOffset();
            byteBuffer.position(m25773a(charSequence, byteBuffer.array(), byteBuffer.position() + arrayOffset, byteBuffer.remaining()) - arrayOffset);
        } else if (byteBuffer.isDirect()) {
            n2Var.mo25731a(charSequence, byteBuffer);
        } else {
            AbstractC4387n2.m25748b(charSequence, byteBuffer);
        }
    }

    /* renamed from: a */
    public static boolean m25772a(byte[] bArr) {
        return f16596a.m25749a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static boolean m25771a(byte[] bArr, int i, int i2) {
        return f16596a.m25749a(bArr, i, i2);
    }

    /* renamed from: b */
    public static int m25767b(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return m25778a(b);
        }
        if (i3 == 1) {
            return m25777a(b, bArr[i]);
        }
        if (i3 == 2) {
            return m25776a(b, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }
}
