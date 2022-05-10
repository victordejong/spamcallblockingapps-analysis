package p131c.p161d.p170b.p188c.p210w0.p217x;

import p131c.p161d.p170b.p188c.p203g1.C2904v;
/* renamed from: c.d.b.c.w0.x.i0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/i0.class */
public final class C3161i0 {
    /* renamed from: a */
    public static int m27675a(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] != 71) {
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public static long m27677a(C2904v vVar, int i, int i2) {
        vVar.m28538e(i);
        if (vVar.m28552a() < 5) {
            return -9223372036854775807L;
        }
        int g = vVar.m28535g();
        if ((8388608 & g) != 0 || ((2096896 & g) >> 8) != i2) {
            return -9223372036854775807L;
        }
        boolean z = true;
        if (!((g & 32) != 0) || vVar.m28524r() < 7 || vVar.m28552a() < 7) {
            return -9223372036854775807L;
        }
        if ((vVar.m28524r() & 16) != 16) {
            z = false;
        }
        if (!z) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        vVar.m28546a(bArr, 0, 6);
        return m27676a(bArr);
    }

    /* renamed from: a */
    public static long m27676a(byte[] bArr) {
        return ((bArr[0] & 255) << 25) | ((bArr[1] & 255) << 17) | ((bArr[2] & 255) << 9) | ((bArr[3] & 255) << 1) | ((255 & bArr[4]) >> 7);
    }
}
