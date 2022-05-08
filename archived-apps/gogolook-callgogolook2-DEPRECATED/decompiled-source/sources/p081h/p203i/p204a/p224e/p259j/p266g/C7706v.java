package p081h.p203i.p204a.p224e.p259j.p266g;

import java.io.IOException;
/* renamed from: h.i.a.e.j.g.v */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/v.class */
public final class C7706v {
    /* renamed from: a */
    public static int m19769a(int i, byte[] bArr, int i2, int i3, AbstractC7626k1<?> k1Var, C7713w wVar) {
        C7595g1 g1Var = (C7595g1) k1Var;
        int a = m19763a(bArr, i2, wVar);
        while (true) {
            g1Var.m20159g(wVar.f18061a);
            if (a >= i3) {
                break;
            }
            int a2 = m19763a(bArr, a, wVar);
            if (i != wVar.f18061a) {
                break;
            }
            a = m19763a(bArr, a2, wVar);
        }
        return a;
    }

    /* renamed from: a */
    public static int m19768a(int i, byte[] bArr, int i2, int i3, C7703u3 u3Var, C7713w wVar) throws IOException {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int b = m19761b(bArr, i2, wVar);
                u3Var.m19784a(i, Long.valueOf(wVar.f18062b));
                return b;
            } else if (i5 == 1) {
                u3Var.m19784a(i, Long.valueOf(m19762b(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int a = m19763a(bArr, i2, wVar);
                int i6 = wVar.f18061a;
                u3Var.m19784a(i, i6 == 0 ? AbstractC7539a0.f17655b : AbstractC7539a0.m20381a(bArr, a, i6));
                return a + i6;
            } else if (i5 == 3) {
                C7703u3 e = C7703u3.m19775e();
                int i7 = (i & (-8)) | 4;
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int a2 = m19763a(bArr, i2, wVar);
                    i8 = wVar.f18061a;
                    if (i8 == i7) {
                        i4 = a2;
                        i8 = i8;
                        break;
                    }
                    i2 = m19768a(i8, bArr, a2, i3, e, wVar);
                }
                if (i4 > i3 || i8 != i7) {
                    throw C7633l1.m20076d();
                }
                u3Var.m19784a(i, e);
                return i4;
            } else if (i5 == 5) {
                u3Var.m19784a(i, Integer.valueOf(m19765a(bArr, i2)));
                return i2 + 4;
            } else {
                throw C7633l1.m20078b();
            }
        } else {
            throw C7633l1.m20078b();
        }
    }

    /* renamed from: a */
    public static int m19767a(int i, byte[] bArr, int i2, int i3, C7713w wVar) throws C7633l1 {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                return m19761b(bArr, i2, wVar);
            }
            if (i5 == 1) {
                return i2 + 8;
            }
            if (i5 == 2) {
                return m19763a(bArr, i2, wVar) + wVar.f18061a;
            }
            if (i5 == 3) {
                int i6 = (i & (-8)) | 4;
                int i7 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int a = m19763a(bArr, i2, wVar);
                    int i8 = wVar.f18061a;
                    i7 = i8;
                    i4 = a;
                    if (i8 == i6) {
                        break;
                    }
                    i2 = m19767a(i8, bArr, a, i3, wVar);
                    i7 = i8;
                }
                if (i4 <= i3 && i7 == i6) {
                    return i4;
                }
                throw C7633l1.m20076d();
            } else if (i5 == 5) {
                return i2 + 4;
            } else {
                throw C7633l1.m20078b();
            }
        } else {
            throw C7633l1.m20078b();
        }
    }

    /* renamed from: a */
    public static int m19766a(int i, byte[] bArr, int i2, C7713w wVar) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = i & 127;
        int i8 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            i5 = b << 7;
            i6 = i7;
        } else {
            int i9 = i7 | ((b & Byte.MAX_VALUE) << 7);
            int i10 = i8 + 1;
            byte b2 = bArr[i8];
            if (b2 >= 0) {
                i4 = b2 << 14;
                i3 = i9;
            } else {
                int i11 = i9 | ((b2 & Byte.MAX_VALUE) << 14);
                int i12 = i10 + 1;
                byte b3 = bArr[i10];
                if (b3 >= 0) {
                    i5 = b3 << 21;
                    i8 = i12;
                    i6 = i11;
                } else {
                    i3 = i11 | ((b3 & Byte.MAX_VALUE) << 21);
                    i10 = i12 + 1;
                    byte b4 = bArr[i12];
                    if (b4 >= 0) {
                        i4 = b4 << 28;
                    } else {
                        while (true) {
                            int i13 = i10 + 1;
                            if (bArr[i10] >= 0) {
                                wVar.f18061a = i3 | ((b4 & Byte.MAX_VALUE) << 28);
                                return i13;
                            }
                            i10 = i13;
                        }
                    }
                }
            }
            wVar.f18061a = i3 | i4;
            return i10;
        }
        wVar.f18061a = i6 | i5;
        return i8;
    }

    /* renamed from: a */
    public static int m19765a(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: a */
    public static int m19764a(byte[] bArr, int i, AbstractC7626k1<?> k1Var, C7713w wVar) throws IOException {
        C7595g1 g1Var = (C7595g1) k1Var;
        int a = m19763a(bArr, i, wVar);
        int i2 = wVar.f18061a + a;
        while (a < i2) {
            a = m19763a(bArr, a, wVar);
            g1Var.m20159g(wVar.f18061a);
        }
        if (a == i2) {
            return a;
        }
        throw C7633l1.m20080a();
    }

    /* renamed from: a */
    public static int m19763a(byte[] bArr, int i, C7713w wVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return m19766a(b, bArr, i2, wVar);
        }
        wVar.f18061a = b;
        return i2;
    }

    /* renamed from: b */
    public static int m19761b(byte[] bArr, int i, C7713w wVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            wVar.f18062b = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b = bArr[i2];
        long j2 = (j & 127) | ((b & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b < 0) {
            b = bArr[i3];
            i4 += 7;
            j2 |= (b & Byte.MAX_VALUE) << i4;
            i3++;
        }
        wVar.f18062b = j2;
        return i3;
    }

    /* renamed from: b */
    public static long m19762b(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: c */
    public static double m19760c(byte[] bArr, int i) {
        return Double.longBitsToDouble(m19762b(bArr, i));
    }

    /* renamed from: c */
    public static int m19759c(byte[] bArr, int i, C7713w wVar) {
        int a = m19763a(bArr, i, wVar);
        int i2 = wVar.f18061a;
        if (i2 == 0) {
            wVar.f18063c = "";
            return a;
        }
        wVar.f18063c = new String(bArr, a, i2, C7602h1.f17862a);
        return a + i2;
    }

    /* renamed from: d */
    public static float m19758d(byte[] bArr, int i) {
        return Float.intBitsToFloat(m19765a(bArr, i));
    }

    /* renamed from: d */
    public static int m19757d(byte[] bArr, int i, C7713w wVar) throws IOException {
        int a = m19763a(bArr, i, wVar);
        int i2 = wVar.f18061a;
        if (i2 == 0) {
            wVar.f18063c = "";
            return a;
        }
        int i3 = a + i2;
        if (C7565c4.m20286a(bArr, a, i3)) {
            wVar.f18063c = new String(bArr, a, i2, C7602h1.f17862a);
            return i3;
        }
        throw C7633l1.m20075e();
    }

    /* renamed from: e */
    public static int m19756e(byte[] bArr, int i, C7713w wVar) {
        int a = m19763a(bArr, i, wVar);
        int i2 = wVar.f18061a;
        if (i2 == 0) {
            wVar.f18063c = AbstractC7539a0.f17655b;
            return a;
        }
        wVar.f18063c = AbstractC7539a0.m20381a(bArr, a, i2);
        return a + i2;
    }
}
