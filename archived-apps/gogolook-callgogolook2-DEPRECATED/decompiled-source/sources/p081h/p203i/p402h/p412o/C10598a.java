package p081h.p203i.p402h.p412o;

import java.util.Map;
import p081h.p203i.p402h.AbstractC10537h;
import p081h.p203i.p402h.C10538i;
import p081h.p203i.p402h.EnumC10529a;
import p081h.p203i.p402h.EnumC10531c;
import p081h.p203i.p402h.p405k.C10549b;
import p081h.p203i.p402h.p412o.p413b.EnumC10599a;
import p081h.p203i.p402h.p412o.p414c.C10605b;
import p081h.p203i.p402h.p412o.p414c.C10606c;
import p081h.p203i.p402h.p412o.p414c.C10610f;
/* renamed from: h.i.h.o.a */
/* loaded from: classes2-dex2jar.jar:h/i/h/o/a.class */
public final class C10598a implements AbstractC10537h {
    /* renamed from: a */
    public static C10549b m11289a(C10610f fVar, int i, int i2, int i3) {
        C10605b a = fVar.m11214a();
        if (a != null) {
            int c = a.m11264c();
            int b = a.m11265b();
            int i4 = i3 << 1;
            int i5 = c + i4;
            int i6 = i4 + b;
            int max = Math.max(i, i5);
            int max2 = Math.max(i2, i6);
            int min = Math.min(max / i5, max2 / i6);
            int i7 = (max - (c * min)) / 2;
            int i8 = (max2 - (b * min)) / 2;
            C10549b bVar = new C10549b(max, max2);
            int i9 = 0;
            while (i9 < b) {
                int i10 = 0;
                while (i10 < c) {
                    if (a.m11268a(i10, i9) == 1) {
                        bVar.m11447a(i7, i8, min, min);
                    }
                    i10++;
                    i7 += min;
                }
                i9++;
                i8 += min;
            }
            return bVar;
        }
        throw new IllegalStateException();
    }

    @Override // p081h.p203i.p402h.AbstractC10537h
    /* renamed from: a */
    public C10549b mo11288a(String str, EnumC10529a aVar, int i, int i2, Map<EnumC10531c, ?> map) throws C10538i {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        } else if (aVar != EnumC10529a.QR_CODE) {
            throw new IllegalArgumentException("Can only encode QR_CODE, but got ".concat(String.valueOf(aVar)));
        } else if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        } else {
            EnumC10599a aVar2 = EnumC10599a.L;
            int i3 = 4;
            EnumC10599a aVar3 = aVar2;
            if (map != null) {
                if (map.containsKey(EnumC10531c.ERROR_CORRECTION)) {
                    aVar2 = EnumC10599a.valueOf(map.get(EnumC10531c.ERROR_CORRECTION).toString());
                }
                i3 = 4;
                aVar3 = aVar2;
                if (map.containsKey(EnumC10531c.MARGIN)) {
                    i3 = Integer.parseInt(map.get(EnumC10531c.MARGIN).toString());
                    aVar3 = aVar2;
                }
            }
            return m11289a(C10606c.m11246a(str, aVar3, map), i, i2, i3);
        }
    }
}
