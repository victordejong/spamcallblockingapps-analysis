package p012b.p076s.p078b.p079a.p086s0.p093x;

import p012b.p076s.p078b.p079a.p080a1.C1184p;
/* renamed from: b.s.b.a.s0.x.i0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/i0.class */
public final class C1468i0 {
    /* renamed from: a */
    public static int m33223a(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] != 71) {
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public static long m33225a(C1184p pVar, int i, int i2) {
        pVar.m34358e(i);
        if (pVar.m34372a() < 5) {
            return -9223372036854775807L;
        }
        int f = pVar.m34357f();
        if ((8388608 & f) != 0 || ((2096896 & f) >> 8) != i2) {
            return -9223372036854775807L;
        }
        boolean z = true;
        if (!((f & 32) != 0) || pVar.m34344r() < 7 || pVar.m34372a() < 7) {
            return -9223372036854775807L;
        }
        if ((pVar.m34344r() & 16) != 16) {
            z = false;
        }
        if (!z) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        pVar.m34366a(bArr, 0, 6);
        return m33224a(bArr);
    }

    /* renamed from: a */
    public static long m33224a(byte[] bArr) {
        return ((bArr[0] & 255) << 25) | ((bArr[1] & 255) << 17) | ((bArr[2] & 255) << 9) | ((bArr[3] & 255) << 1) | ((255 & bArr[4]) >> 7);
    }
}
