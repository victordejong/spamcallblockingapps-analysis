package p081h.p203i.p402h.p407l.p408b;

import java.util.Arrays;
import p081h.p203i.p402h.C10530b;
/* renamed from: h.i.h.l.b.j */
/* loaded from: classes2-dex2jar.jar:h/i/h/l/b/j.class */
public final class C10564j {
    /* renamed from: a */
    public static char m11374a(char c, int i) {
        int i2 = c + ((i * 149) % 253) + 1;
        if (i2 > 254) {
            i2 -= 254;
        }
        return (char) i2;
    }

    /* renamed from: a */
    public static int m11373a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = 0;
        if (i < length) {
            char charAt = charSequence.charAt(i);
            int i4 = i;
            while (true) {
                i2 = i3;
                if (!m11368b(charAt)) {
                    break;
                }
                i2 = i3;
                if (i4 >= length) {
                    break;
                }
                int i5 = i3 + 1;
                int i6 = i4 + 1;
                i3 = i5;
                i4 = i6;
                if (i6 < length) {
                    charAt = charSequence.charAt(i6);
                    i3 = i5;
                    i4 = i6;
                }
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static int m11372a(CharSequence charSequence, int i, int i2) {
        float[] fArr;
        if (i >= charSequence.length()) {
            return i2;
        }
        if (i2 == 0) {
            fArr = new float[]{0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.25f};
        } else {
            fArr = new float[6];
            fArr[0] = 1.0f;
            fArr[1] = 2.0f;
            fArr[2] = 2.0f;
            fArr[3] = 2.0f;
            fArr[4] = 2.0f;
            fArr[5] = 2.25f;
            fArr[i2] = 0.0f;
        }
        int i3 = 0;
        while (true) {
            int i4 = i + i3;
            if (i4 == charSequence.length()) {
                byte[] bArr = new byte[6];
                int[] iArr = new int[6];
                int a = m11369a(fArr, iArr, Integer.MAX_VALUE, bArr);
                int a2 = m11370a(bArr);
                if (iArr[0] == a) {
                    return 0;
                }
                if (a2 == 1 && bArr[5] > 0) {
                    return 5;
                }
                if (a2 == 1 && bArr[4] > 0) {
                    return 4;
                }
                if (a2 != 1 || bArr[2] <= 0) {
                    return (a2 != 1 || bArr[3] <= 0) ? 1 : 3;
                }
                return 2;
            }
            char charAt = charSequence.charAt(i4);
            int i5 = i3 + 1;
            if (m11368b(charAt)) {
                fArr[0] = fArr[0] + 0.5f;
            } else if (m11367c(charAt)) {
                fArr[0] = (float) Math.ceil(fArr[0]);
                fArr[0] = fArr[0] + 2.0f;
            } else {
                fArr[0] = (float) Math.ceil(fArr[0]);
                fArr[0] = fArr[0] + 1.0f;
            }
            if (m11366d(charAt)) {
                fArr[1] = fArr[1] + 0.6666667f;
            } else if (m11367c(charAt)) {
                fArr[1] = fArr[1] + 2.6666667f;
            } else {
                fArr[1] = fArr[1] + 1.3333334f;
            }
            if (m11364f(charAt)) {
                fArr[2] = fArr[2] + 0.6666667f;
            } else if (m11367c(charAt)) {
                fArr[2] = fArr[2] + 2.6666667f;
            } else {
                fArr[2] = fArr[2] + 1.3333334f;
            }
            if (m11363g(charAt)) {
                fArr[3] = fArr[3] + 0.6666667f;
            } else if (m11367c(charAt)) {
                fArr[3] = fArr[3] + 4.3333335f;
            } else {
                fArr[3] = fArr[3] + 3.3333333f;
            }
            if (m11365e(charAt)) {
                fArr[4] = fArr[4] + 0.75f;
            } else if (m11367c(charAt)) {
                fArr[4] = fArr[4] + 4.25f;
            } else {
                fArr[4] = fArr[4] + 3.25f;
            }
            if (m11362h(charAt)) {
                fArr[5] = fArr[5] + 4.0f;
            } else {
                fArr[5] = fArr[5] + 1.0f;
            }
            i3 = i5;
            if (i5 >= 4) {
                int[] iArr2 = new int[6];
                byte[] bArr2 = new byte[6];
                m11369a(fArr, iArr2, Integer.MAX_VALUE, bArr2);
                int a3 = m11370a(bArr2);
                if (iArr2[0] < iArr2[5] && iArr2[0] < iArr2[1] && iArr2[0] < iArr2[2] && iArr2[0] < iArr2[3] && iArr2[0] < iArr2[4]) {
                    return 0;
                }
                if (iArr2[5] < iArr2[0] || bArr2[1] + bArr2[2] + bArr2[3] + bArr2[4] == 0) {
                    return 5;
                }
                if (a3 == 1 && bArr2[4] > 0) {
                    return 4;
                }
                if (a3 == 1 && bArr2[2] > 0) {
                    return 2;
                }
                if (a3 == 1 && bArr2[3] > 0) {
                    return 3;
                }
                i3 = i5;
                if (iArr2[1] + 1 < iArr2[0]) {
                    i3 = i5;
                    if (iArr2[1] + 1 < iArr2[5]) {
                        i3 = i5;
                        if (iArr2[1] + 1 < iArr2[4]) {
                            i3 = i5;
                            if (iArr2[1] + 1 >= iArr2[2]) {
                                continue;
                            } else if (iArr2[1] < iArr2[3]) {
                                return 1;
                            } else {
                                i3 = i5;
                                if (iArr2[1] == iArr2[3]) {
                                    for (int i6 = i + i5 + 1; i6 < charSequence.length(); i6++) {
                                        char charAt2 = charSequence.charAt(i6);
                                        if (m11361i(charAt2)) {
                                            return 3;
                                        }
                                        if (!m11363g(charAt2)) {
                                            return 1;
                                        }
                                    }
                                    return 1;
                                }
                            }
                        } else {
                            continue;
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
    }

    /* renamed from: a */
    public static int m11370a(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < 6; i2++) {
            i += bArr[i2];
        }
        return i;
    }

    /* renamed from: a */
    public static int m11369a(float[] fArr, int[] iArr, int i, byte[] bArr) {
        Arrays.fill(bArr, (byte) 0);
        int i2 = i;
        int i3 = 0;
        while (i3 < 6) {
            iArr[i3] = (int) Math.ceil(fArr[i3]);
            int i4 = iArr[i3];
            int i5 = i2;
            if (i2 > i4) {
                Arrays.fill(bArr, (byte) 0);
                i5 = i4;
            }
            if (i5 == i4) {
                bArr[i3] = (byte) (bArr[i3] + 1);
            }
            i3++;
            i2 = i5;
        }
        return i2;
    }

    /* renamed from: a */
    public static String m11371a(String str, EnumC10566l lVar, C10530b bVar, C10530b bVar2) {
        int i;
        C10555a aVar = new C10555a();
        C10557c cVar = new C10557c();
        C10567m mVar = new C10567m();
        C10568n nVar = new C10568n();
        C10560f fVar = new C10560f();
        C10556b bVar3 = new C10556b();
        C10562h hVar = new C10562h(str);
        hVar.m11393a(lVar);
        hVar.m11394a(bVar, bVar2);
        if (!str.startsWith("[)>\u001e05\u001d") || !str.endsWith("\u001e\u0004")) {
            i = 0;
            if (str.startsWith("[)>\u001e06\u001d")) {
                i = 0;
                if (str.endsWith("\u001e\u0004")) {
                    hVar.m11396a((char) 237);
                    hVar.m11395a(2);
                    hVar.f24041f += 7;
                    i = 0;
                }
            }
        } else {
            hVar.m11396a((char) 236);
            hVar.m11395a(2);
            hVar.f24041f += 7;
            i = 0;
        }
        while (hVar.m11382i()) {
            new AbstractC10561g[]{aVar, cVar, mVar, nVar, fVar, bVar3}[i].mo11346a(hVar);
            if (hVar.m11386e() >= 0) {
                i = hVar.m11386e();
                hVar.m11381j();
            }
        }
        int a = hVar.m11397a();
        hVar.m11379l();
        int a2 = hVar.m11384g().m11360a();
        if (!(a >= a2 || i == 0 || i == 5 || i == 4)) {
            hVar.m11396a((char) 254);
        }
        StringBuilder b = hVar.m11391b();
        if (b.length() < a2) {
            b.append((char) 129);
        }
        while (b.length() < a2) {
            b.append(m11374a((char) 129, b.length() + 1));
        }
        return hVar.m11391b().toString();
    }

    /* renamed from: a */
    public static void m11375a(char c) {
        String hexString;
        throw new IllegalArgumentException("Illegal character: " + c + " (0x" + ("0000".substring(0, 4 - hexString.length()) + Integer.toHexString(c)) + ')');
    }

    /* renamed from: b */
    public static boolean m11368b(char c) {
        return c >= '0' && c <= '9';
    }

    /* renamed from: c */
    public static boolean m11367c(char c) {
        return c >= 128 && c <= 255;
    }

    /* renamed from: d */
    public static boolean m11366d(char c) {
        if (c == ' ') {
            return true;
        }
        if (c < '0' || c > '9') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    /* renamed from: e */
    public static boolean m11365e(char c) {
        return c >= ' ' && c <= '^';
    }

    /* renamed from: f */
    public static boolean m11364f(char c) {
        if (c == ' ') {
            return true;
        }
        if (c < '0' || c > '9') {
            return c >= 'a' && c <= 'z';
        }
        return true;
    }

    /* renamed from: g */
    public static boolean m11363g(char c) {
        if (m11361i(c) || c == ' ') {
            return true;
        }
        if (c < '0' || c > '9') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    /* renamed from: h */
    public static boolean m11362h(char c) {
        return false;
    }

    /* renamed from: i */
    public static boolean m11361i(char c) {
        return c == '\r' || c == '*' || c == '>';
    }
}
