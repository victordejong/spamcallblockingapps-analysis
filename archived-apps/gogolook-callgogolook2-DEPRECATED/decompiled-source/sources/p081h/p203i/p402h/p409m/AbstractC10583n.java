package p081h.p203i.p402h.p409m;

import java.util.Map;
import p081h.p203i.p402h.AbstractC10537h;
import p081h.p203i.p402h.C10538i;
import p081h.p203i.p402h.EnumC10529a;
import p081h.p203i.p402h.EnumC10531c;
import p081h.p203i.p402h.p405k.C10549b;
/* renamed from: h.i.h.m.n */
/* loaded from: classes2-dex2jar.jar:h/i/h/m/n.class */
public abstract class AbstractC10583n implements AbstractC10537h {
    /* renamed from: a */
    public static int m11335a(boolean[] zArr, int i, int[] iArr, boolean z) {
        int i2 = 0;
        for (int i3 : iArr) {
            int i4 = 0;
            while (i4 < i3) {
                zArr[i] = z;
                i4++;
                i++;
            }
            i2 += i3;
            z = !z;
        }
        return i2;
    }

    /* renamed from: a */
    public static C10549b m11336a(boolean[] zArr, int i, int i2, int i3) {
        int length = zArr.length;
        int i4 = i3 + length;
        int max = Math.max(i, i4);
        int max2 = Math.max(1, i2);
        int i5 = max / i4;
        int i6 = (max - (length * i5)) / 2;
        C10549b bVar = new C10549b(max, max2);
        int i7 = 0;
        while (i7 < length) {
            if (zArr[i7]) {
                bVar.m11447a(i6, 0, i5, max2);
            }
            i7++;
            i6 += i5;
        }
        return bVar;
    }

    /* renamed from: a */
    public int mo11332a() {
        return 10;
    }

    @Override // p081h.p203i.p402h.AbstractC10537h
    /* renamed from: a */
    public C10549b mo11288a(String str, EnumC10529a aVar, int i, int i2, Map<EnumC10531c, ?> map) throws C10538i {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        } else if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Negative size is not allowed. Input: " + i + 'x' + i2);
        } else {
            int a = mo11332a();
            int i3 = a;
            if (map != null) {
                i3 = a;
                if (map.containsKey(EnumC10531c.MARGIN)) {
                    i3 = Integer.parseInt(map.get(EnumC10531c.MARGIN).toString());
                }
            }
            return m11336a(mo11330a(str), i, i2, i3);
        }
    }

    /* renamed from: a */
    public abstract boolean[] mo11330a(String str);
}
