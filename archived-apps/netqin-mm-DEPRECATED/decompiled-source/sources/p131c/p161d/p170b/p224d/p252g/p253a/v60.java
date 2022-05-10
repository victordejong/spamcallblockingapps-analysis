package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzekb;
import com.google.android.gms.internal.ads.zzekj;
import com.google.android.gms.internal.ads.zzekk;
import com.google.android.gms.internal.ads.zzena;
import java.io.IOException;
/* renamed from: c.d.b.d.g.a.v60 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/v60.class */
public final class v60 {
    /* renamed from: a */
    public static int m26229a(int i, byte[] bArr, int i2, int i3, u60 u60Var) throws zzekj {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                return m26218b(bArr, i2, u60Var);
            }
            if (i5 == 1) {
                return i2 + 8;
            }
            if (i5 == 2) {
                return m26221a(bArr, i2, u60Var) + u60Var.f15450a;
            }
            if (i5 == 3) {
                int i6 = (i & (-8)) | 4;
                int i7 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int a = m26221a(bArr, i2, u60Var);
                    i7 = u60Var.f15450a;
                    i7 = i7;
                    i4 = a;
                    if (i7 == i6) {
                        break;
                    }
                    i2 = m26229a(i7, bArr, a, i3, u60Var);
                }
                if (i4 <= i3 && i7 == i6) {
                    return i4;
                }
                throw zzekj.zzbhe();
            } else if (i5 == 5) {
                return i2 + 4;
            } else {
                throw zzekj.zzbha();
            }
        } else {
            throw zzekj.zzbha();
        }
    }

    /* renamed from: a */
    public static int m26228a(int i, byte[] bArr, int i2, int i3, zzekk<?> zzekkVar, u60 u60Var) {
        w70 w70Var = (w70) zzekkVar;
        int a = m26221a(bArr, i2, u60Var);
        w70Var.mo12364k(u60Var.f15450a);
        while (a < i3) {
            int a2 = m26221a(bArr, a, u60Var);
            if (i != u60Var.f15450a) {
                break;
            }
            a = m26221a(bArr, a2, u60Var);
            w70Var.mo12364k(u60Var.f15450a);
        }
        return a;
    }

    /* renamed from: a */
    public static int m26227a(int i, byte[] bArr, int i2, int i3, zzena zzenaVar, u60 u60Var) throws zzekj {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int b = m26218b(bArr, i2, u60Var);
                zzenaVar.m12338a(i, Long.valueOf(u60Var.f15451b));
                return b;
            } else if (i5 == 1) {
                zzenaVar.m12338a(i, Long.valueOf(m26219b(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int a = m26221a(bArr, i2, u60Var);
                int i6 = u60Var.f15450a;
                if (i6 < 0) {
                    throw zzekj.zzbgy();
                } else if (i6 <= bArr.length - a) {
                    if (i6 == 0) {
                        zzenaVar.m12338a(i, zzeip.zzier);
                    } else {
                        zzenaVar.m12338a(i, zzeip.zzi(bArr, a, i6));
                    }
                    return a + i6;
                } else {
                    throw zzekj.zzbgx();
                }
            } else if (i5 == 3) {
                zzena e = zzena.m12329e();
                int i7 = (i & (-8)) | 4;
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int a2 = m26221a(bArr, i2, u60Var);
                    i8 = u60Var.f15450a;
                    if (i8 == i7) {
                        i4 = a2;
                        i8 = i8;
                        break;
                    }
                    i2 = m26227a(i8, bArr, a2, i3, e, u60Var);
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzekj.zzbhe();
                }
                zzenaVar.m12338a(i, e);
                return i4;
            } else if (i5 == 5) {
                zzenaVar.m12338a(i, Integer.valueOf(m26222a(bArr, i2)));
                return i2 + 4;
            } else {
                throw zzekj.zzbha();
            }
        } else {
            throw zzekj.zzbha();
        }
    }

    /* renamed from: a */
    public static int m26226a(int i, byte[] bArr, int i2, u60 u60Var) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            u60Var.f15450a = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            u60Var.f15450a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            u60Var.f15450a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            u60Var.f15450a = i9 | (b4 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                u60Var.f15450a = i9 | ((b4 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    /* renamed from: a */
    public static int m26225a(f90<?> f90Var, int i, byte[] bArr, int i2, int i3, zzekk<?> zzekkVar, u60 u60Var) throws IOException {
        int a = m26223a(f90Var, bArr, i2, i3, u60Var);
        zzekkVar.add(u60Var.f15452c);
        while (a < i3) {
            int a2 = m26221a(bArr, a, u60Var);
            if (i != u60Var.f15450a) {
                break;
            }
            a = m26223a(f90Var, bArr, a2, i3, u60Var);
            zzekkVar.add(u60Var.f15452c);
        }
        return a;
    }

    /* renamed from: a */
    public static int m26224a(f90 f90Var, byte[] bArr, int i, int i2, int i3, u60 u60Var) throws IOException {
        p80 p80Var = (p80) f90Var;
        Object a = p80Var.mo26425a();
        int a2 = p80Var.m26564a((p80) a, bArr, i, i2, i3, u60Var);
        p80Var.mo26417c((p80) a);
        u60Var.f15452c = a;
        return a2;
    }

    /* renamed from: a */
    public static int m26223a(f90 f90Var, byte[] bArr, int i, int i2, u60 u60Var) throws IOException {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = m26226a(b, bArr, i3, u60Var);
            i5 = u60Var.f15450a;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzekj.zzbgx();
        }
        Object a = f90Var.mo26425a();
        int i6 = i5 + i4;
        f90Var.mo26420a(a, bArr, i4, i6, u60Var);
        f90Var.mo26417c(a);
        u60Var.f15452c = a;
        return i6;
    }

    /* renamed from: a */
    public static int m26222a(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: a */
    public static int m26221a(byte[] bArr, int i, u60 u60Var) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return m26226a(b, bArr, i2, u60Var);
        }
        u60Var.f15450a = b;
        return i2;
    }

    /* renamed from: a */
    public static int m26220a(byte[] bArr, int i, zzekk<?> zzekkVar, u60 u60Var) throws IOException {
        w70 w70Var = (w70) zzekkVar;
        int a = m26221a(bArr, i, u60Var);
        int i2 = u60Var.f15450a + a;
        while (a < i2) {
            a = m26221a(bArr, a, u60Var);
            w70Var.mo12364k(u60Var.f15450a);
        }
        if (a == i2) {
            return a;
        }
        throw zzekj.zzbgx();
    }

    /* renamed from: b */
    public static int m26218b(byte[] bArr, int i, u60 u60Var) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            u60Var.f15451b = j;
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
        u60Var.f15451b = j2;
        return i3;
    }

    /* renamed from: b */
    public static long m26219b(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: c */
    public static double m26217c(byte[] bArr, int i) {
        return Double.longBitsToDouble(m26219b(bArr, i));
    }

    /* renamed from: c */
    public static int m26216c(byte[] bArr, int i, u60 u60Var) throws zzekj {
        int a = m26221a(bArr, i, u60Var);
        int i2 = u60Var.f15450a;
        if (i2 < 0) {
            throw zzekj.zzbgy();
        } else if (i2 == 0) {
            u60Var.f15452c = "";
            return a;
        } else {
            u60Var.f15452c = new String(bArr, a, i2, zzekb.f28088a);
            return a + i2;
        }
    }

    /* renamed from: d */
    public static float m26215d(byte[] bArr, int i) {
        return Float.intBitsToFloat(m26222a(bArr, i));
    }

    /* renamed from: d */
    public static int m26214d(byte[] bArr, int i, u60 u60Var) throws zzekj {
        int a = m26221a(bArr, i, u60Var);
        int i2 = u60Var.f15450a;
        if (i2 < 0) {
            throw zzekj.zzbgy();
        } else if (i2 == 0) {
            u60Var.f15452c = "";
            return a;
        } else {
            u60Var.f15452c = ea0.m27035c(bArr, a, i2);
            return a + i2;
        }
    }

    /* renamed from: e */
    public static int m26213e(byte[] bArr, int i, u60 u60Var) throws zzekj {
        int a = m26221a(bArr, i, u60Var);
        int i2 = u60Var.f15450a;
        if (i2 < 0) {
            throw zzekj.zzbgy();
        } else if (i2 > bArr.length - a) {
            throw zzekj.zzbgx();
        } else if (i2 == 0) {
            u60Var.f15452c = zzeip.zzier;
            return a;
        } else {
            u60Var.f15452c = zzeip.zzi(bArr, a, i2);
            return a + i2;
        }
    }
}
