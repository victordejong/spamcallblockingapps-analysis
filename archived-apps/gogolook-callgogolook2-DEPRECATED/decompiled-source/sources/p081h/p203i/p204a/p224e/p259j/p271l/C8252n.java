package p081h.p203i.p204a.p224e.p259j.p271l;

import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
/* renamed from: h.i.a.e.j.l.n */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/n.class */
public final class C8252n {

    /* renamed from: a */
    public static final AbstractC8267o f19090a;

    static {
        f19090a = (!(C8190k.m18442a() && C8190k.m18429b()) || C8126g8.m18498a()) ? new C8305q() : new C8341s();
    }

    /* renamed from: a */
    public static int m18272a(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m18271a(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* renamed from: a */
    public static int m18270a(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* renamed from: a */
    public static int m18269a(CharSequence charSequence) {
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
                                throw new C8289p(i4, length2);
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
    public static int m18268a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f19090a.mo18179a(charSequence, bArr, i, i2);
    }

    /* renamed from: a */
    public static boolean m18267a(byte[] bArr) {
        return f19090a.m18251a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static boolean m18266a(byte[] bArr, int i, int i2) {
        return f19090a.m18251a(bArr, i, i2);
    }

    /* renamed from: b */
    public static int m18262b(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return m18272a(b);
        }
        if (i3 == 1) {
            return m18271a(b, bArr[i]);
        }
        if (i3 == 2) {
            return m18270a(b, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }
}
