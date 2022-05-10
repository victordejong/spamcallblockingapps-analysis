package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzij;
import com.google.android.gms.internal.measurement.zzlf;
/* renamed from: c.d.b.d.g.f.m5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/m5.class */
public final class C4547m5 {

    /* renamed from: a */
    public static final AbstractC4561o5 f16820a;

    static {
        f16820a = (!(C4522j5.m25439a() && C4522j5.m25426b()) || C4512i2.m25452a()) ? new C4554n5() : new C4568p5();
    }

    /* renamed from: a */
    public static int m25365a(CharSequence charSequence) {
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
                                throw new zzlf(i4, length2);
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
    public static int m25364a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f16820a.mo25319a(charSequence, bArr, i, i2);
    }

    /* renamed from: a */
    public static boolean m25363a(byte[] bArr) {
        return f16820a.m25342b(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static boolean m25362a(byte[] bArr, int i, int i2) {
        return f16820a.m25342b(bArr, i, i2);
    }

    /* renamed from: b */
    public static int m25361b(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: b */
    public static int m25360b(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* renamed from: b */
    public static int m25359b(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* renamed from: b */
    public static String m25358b(byte[] bArr, int i, int i2) throws zzij {
        return f16820a.mo25318a(bArr, i, i2);
    }

    /* renamed from: d */
    public static int m25356d(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return m25361b(b);
        }
        if (i3 == 1) {
            return m25360b(b, bArr[i]);
        }
        if (i3 == 2) {
            return m25359b(b, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }
}
