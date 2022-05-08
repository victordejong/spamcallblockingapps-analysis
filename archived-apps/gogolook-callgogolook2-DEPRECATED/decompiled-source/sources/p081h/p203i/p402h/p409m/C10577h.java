package p081h.p203i.p402h.p409m;

import java.util.Map;
import p081h.p203i.p402h.C10538i;
import p081h.p203i.p402h.EnumC10529a;
import p081h.p203i.p402h.EnumC10531c;
import p081h.p203i.p402h.p405k.C10549b;
/* renamed from: h.i.h.m.h */
/* loaded from: classes2-dex2jar.jar:h/i/h/m/h.class */
public class C10577h extends AbstractC10583n {
    /* renamed from: a */
    public static int m11338a(String str, int i) {
        int i2 = 0;
        int i3 = 1;
        for (int length = str.length() - 1; length >= 0; length--) {
            i2 += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(length)) * i3;
            int i4 = i3 + 1;
            i3 = i4;
            if (i4 > i) {
                i3 = 1;
            }
        }
        return i2 % 47;
    }

    /* renamed from: a */
    public static int m11337a(boolean[] zArr, int i, int[] iArr) {
        int length = iArr.length;
        int i2 = i;
        int i3 = 0;
        while (i3 < length) {
            zArr[i2] = iArr[i3] != 0;
            i3++;
            i2++;
        }
        return 9;
    }

    /* renamed from: a */
    public static void m11339a(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = 1;
            if (((1 << (8 - i2)) & i) == 0) {
                i3 = 0;
            }
            iArr[i2] = i3;
        }
    }

    @Override // p081h.p203i.p402h.p409m.AbstractC10583n, p081h.p203i.p402h.AbstractC10537h
    /* renamed from: a */
    public C10549b mo11288a(String str, EnumC10529a aVar, int i, int i2, Map<EnumC10531c, ?> map) throws C10538i {
        if (aVar == EnumC10529a.CODE_93) {
            return super.mo11288a(str, aVar, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_93, but got ".concat(String.valueOf(aVar)));
    }

    @Override // p081h.p203i.p402h.p409m.AbstractC10583n
    /* renamed from: a */
    public boolean[] mo11330a(String str) {
        int length = str.length();
        if (length <= 80) {
            int[] iArr = new int[9];
            int length2 = str.length();
            m11339a(C10576g.f24075a[47], iArr);
            boolean[] zArr = new boolean[((length2 + 2 + 2) * 9) + 1];
            int a = m11337a(zArr, 0, iArr);
            for (int i = 0; i < length; i++) {
                m11339a(C10576g.f24075a["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(i))], iArr);
                a += m11337a(zArr, a, iArr);
            }
            int a2 = m11338a(str, 20);
            m11339a(C10576g.f24075a[a2], iArr);
            int a3 = a + m11337a(zArr, a, iArr);
            m11339a(C10576g.f24075a[m11338a(str + "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".charAt(a2), 15)], iArr);
            int a4 = a3 + m11337a(zArr, a3, iArr);
            m11339a(C10576g.f24075a[47], iArr);
            zArr[a4 + m11337a(zArr, a4, iArr)] = true;
            return zArr;
        }
        throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
    }
}
