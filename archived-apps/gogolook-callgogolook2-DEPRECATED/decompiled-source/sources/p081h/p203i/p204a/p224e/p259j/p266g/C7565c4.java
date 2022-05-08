package p081h.p203i.p204a.p224e.p259j.p266g;

import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import java.nio.ByteBuffer;
/* renamed from: h.i.a.e.j.g.c4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/c4.class */
public final class C7565c4 {

    /* renamed from: a */
    public static final AbstractC7572d4 f17796a;

    static {
        f17796a = C7543a4.m20354b() && C7543a4.m20348c() ? new C7598g4() : new C7579e4();
    }

    /* renamed from: a */
    public static int m20293a(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m20292a(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* renamed from: a */
    public static int m20291a(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* renamed from: a */
    public static int m20290a(CharSequence charSequence) {
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
                                throw new C7591f4(i4, length2);
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
        sb.append(i + AnimatedStateListDrawableCompat.AnimatedStateListState.REVERSED_BIT);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: a */
    public static int m20288a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f17796a.mo20145a(charSequence, bArr, i, i2);
    }

    /* renamed from: a */
    public static void m20289a(CharSequence charSequence, ByteBuffer byteBuffer) {
        AbstractC7572d4 d4Var = f17796a;
        if (byteBuffer.hasArray()) {
            int arrayOffset = byteBuffer.arrayOffset();
            byteBuffer.position(m20288a(charSequence, byteBuffer.array(), byteBuffer.position() + arrayOffset, byteBuffer.remaining()) - arrayOffset);
        } else if (byteBuffer.isDirect()) {
            d4Var.mo20146a(charSequence, byteBuffer);
        } else {
            AbstractC7572d4.m20217b(charSequence, byteBuffer);
        }
    }

    /* renamed from: a */
    public static boolean m20287a(byte[] bArr) {
        return f17796a.m20218a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static boolean m20286a(byte[] bArr, int i, int i2) {
        return f17796a.m20218a(bArr, i, i2);
    }

    /* renamed from: b */
    public static int m20282b(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return m20293a(b);
        }
        if (i3 == 1) {
            return m20292a(b, bArr[i]);
        }
        if (i3 == 2) {
            return m20291a(b, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }
}
