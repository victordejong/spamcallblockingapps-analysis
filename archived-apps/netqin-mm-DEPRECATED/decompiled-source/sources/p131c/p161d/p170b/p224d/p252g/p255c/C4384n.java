package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzbb;
import com.google.android.gms.internal.clearcut.zzci;
import com.google.android.gms.internal.clearcut.zzcn;
import com.google.android.gms.internal.clearcut.zzco;
import com.google.android.gms.internal.clearcut.zzey;
import java.io.IOException;
/* renamed from: c.d.b.d.g.c.n */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/n.class */
public final class C4384n {
    /* renamed from: a */
    public static int m25765a(int i, byte[] bArr, int i2, int i3, C4389o oVar) throws zzco {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                return m25757b(bArr, i2, oVar);
            }
            if (i5 == 1) {
                return i2 + 8;
            }
            if (i5 == 2) {
                return m25760a(bArr, i2, oVar) + oVar.f16602a;
            }
            if (i5 == 3) {
                int i6 = (i & (-8)) | 4;
                int i7 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int a = m25760a(bArr, i2, oVar);
                    i7 = oVar.f16602a;
                    i7 = i7;
                    i4 = a;
                    if (i7 == i6) {
                        break;
                    }
                    i2 = m25765a(i7, bArr, a, i3, oVar);
                }
                if (i4 <= i3 && i7 == i6) {
                    return i4;
                }
                throw zzco.zzbo();
            } else if (i5 == 5) {
                return i2 + 4;
            } else {
                throw zzco.zzbm();
            }
        } else {
            throw zzco.zzbm();
        }
    }

    /* renamed from: a */
    public static int m25764a(int i, byte[] bArr, int i2, int i3, zzcn<?> zzcnVar, C4389o oVar) {
        C4366k0 k0Var = (C4366k0) zzcnVar;
        int a = m25760a(bArr, i2, oVar);
        while (true) {
            k0Var.m25890a(oVar.f16602a);
            if (a >= i3) {
                break;
            }
            int a2 = m25760a(bArr, a, oVar);
            if (i != oVar.f16602a) {
                break;
            }
            a = m25760a(bArr, a2, oVar);
        }
        return a;
    }

    /* renamed from: a */
    public static int m25763a(int i, byte[] bArr, int i2, int i3, zzey zzeyVar, C4389o oVar) throws IOException {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int b = m25757b(bArr, i2, oVar);
                zzeyVar.m10671a(i, Long.valueOf(oVar.f16603b));
                return b;
            } else if (i5 == 1) {
                zzeyVar.m10671a(i, Long.valueOf(m25758b(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int a = m25760a(bArr, i2, oVar);
                int i6 = oVar.f16602a;
                zzeyVar.m10671a(i, i6 == 0 ? zzbb.zzfi : zzbb.zzb(bArr, a, i6));
                return a + i6;
            } else if (i5 == 3) {
                zzey e = zzey.m10662e();
                int i7 = (i & (-8)) | 4;
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int a2 = m25760a(bArr, i2, oVar);
                    i8 = oVar.f16602a;
                    if (i8 == i7) {
                        i4 = a2;
                        i8 = i8;
                        break;
                    }
                    i2 = m25763a(i8, bArr, a2, i3, e, oVar);
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzco.zzbo();
                }
                zzeyVar.m10671a(i, e);
                return i4;
            } else if (i5 == 5) {
                zzeyVar.m10671a(i, Integer.valueOf(m25761a(bArr, i2)));
                return i2 + 4;
            } else {
                throw zzco.zzbm();
            }
        } else {
            throw zzco.zzbm();
        }
    }

    /* renamed from: a */
    public static int m25762a(int i, byte[] bArr, int i2, C4389o oVar) {
        int i3;
        int i4;
        int i5;
        int i6 = i & 127;
        int i7 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            i5 = b << 7;
            i3 = i7;
        } else {
            int i8 = i6 | ((b & Byte.MAX_VALUE) << 7);
            int i9 = i7 + 1;
            byte b2 = bArr[i7];
            if (b2 >= 0) {
                i4 = b2 << 14;
            } else {
                i6 = i8 | ((b2 & Byte.MAX_VALUE) << 14);
                i3 = i9 + 1;
                byte b3 = bArr[i9];
                if (b3 >= 0) {
                    i5 = b3 << 21;
                } else {
                    i8 = i6 | ((b3 & Byte.MAX_VALUE) << 21);
                    i9 = i3 + 1;
                    byte b4 = bArr[i3];
                    if (b4 >= 0) {
                        i4 = b4 << 28;
                    } else {
                        while (true) {
                            int i10 = i9 + 1;
                            if (bArr[i9] >= 0) {
                                oVar.f16602a = i8 | ((b4 & Byte.MAX_VALUE) << 28);
                                return i10;
                            }
                            i9 = i10;
                        }
                    }
                }
            }
            oVar.f16602a = i8 | i4;
            return i9;
        }
        oVar.f16602a = i6 | i5;
        return i3;
    }

    /* renamed from: a */
    public static int m25761a(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: a */
    public static int m25760a(byte[] bArr, int i, C4389o oVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return m25762a(b, bArr, i2, oVar);
        }
        oVar.f16602a = b;
        return i2;
    }

    /* renamed from: a */
    public static int m25759a(byte[] bArr, int i, zzcn<?> zzcnVar, C4389o oVar) throws IOException {
        C4366k0 k0Var = (C4366k0) zzcnVar;
        int a = m25760a(bArr, i, oVar);
        int i2 = oVar.f16602a + a;
        while (a < i2) {
            a = m25760a(bArr, a, oVar);
            k0Var.m25890a(oVar.f16602a);
        }
        if (a == i2) {
            return a;
        }
        throw zzco.zzbl();
    }

    /* renamed from: b */
    public static int m25757b(byte[] bArr, int i, C4389o oVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            oVar.f16603b = j;
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
        oVar.f16603b = j2;
        return i3;
    }

    /* renamed from: b */
    public static long m25758b(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: c */
    public static double m25756c(byte[] bArr, int i) {
        return Double.longBitsToDouble(m25758b(bArr, i));
    }

    /* renamed from: c */
    public static int m25755c(byte[] bArr, int i, C4389o oVar) {
        int a = m25760a(bArr, i, oVar);
        int i2 = oVar.f16602a;
        if (i2 == 0) {
            oVar.f16604c = "";
            return a;
        }
        oVar.f16604c = new String(bArr, a, i2, zzci.f29264a);
        return a + i2;
    }

    /* renamed from: d */
    public static float m25754d(byte[] bArr, int i) {
        return Float.intBitsToFloat(m25761a(bArr, i));
    }

    /* renamed from: d */
    public static int m25753d(byte[] bArr, int i, C4389o oVar) throws IOException {
        int a = m25760a(bArr, i, oVar);
        int i2 = oVar.f16602a;
        if (i2 == 0) {
            oVar.f16604c = "";
            return a;
        }
        int i3 = a + i2;
        if (C4382m2.m25771a(bArr, a, i3)) {
            oVar.f16604c = new String(bArr, a, i2, zzci.f29264a);
            return i3;
        }
        throw zzco.zzbp();
    }

    /* renamed from: e */
    public static int m25752e(byte[] bArr, int i, C4389o oVar) {
        int a = m25760a(bArr, i, oVar);
        int i2 = oVar.f16602a;
        if (i2 == 0) {
            oVar.f16604c = zzbb.zzfi;
            return a;
        }
        oVar.f16604c = zzbb.zzb(bArr, a, i2);
        return a + i2;
    }
}
