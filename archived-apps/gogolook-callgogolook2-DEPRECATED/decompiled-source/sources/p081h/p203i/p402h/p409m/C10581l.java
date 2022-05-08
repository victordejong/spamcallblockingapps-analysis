package p081h.p203i.p402h.p409m;

import java.util.Map;
import p081h.p203i.p402h.C10538i;
import p081h.p203i.p402h.EnumC10529a;
import p081h.p203i.p402h.EnumC10531c;
import p081h.p203i.p402h.p405k.C10549b;
/* renamed from: h.i.h.m.l */
/* loaded from: classes2-dex2jar.jar:h/i/h/m/l.class */
public final class C10581l extends AbstractC10583n {

    /* renamed from: a */
    public static final int[] f24077a = {1, 1, 1, 1};

    /* renamed from: b */
    public static final int[] f24078b = {3, 1, 1};

    /* renamed from: c */
    public static final int[][] f24079c = {new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    @Override // p081h.p203i.p402h.p409m.AbstractC10583n, p081h.p203i.p402h.AbstractC10537h
    /* renamed from: a */
    public C10549b mo11288a(String str, EnumC10529a aVar, int i, int i2, Map<EnumC10531c, ?> map) throws C10538i {
        if (aVar == EnumC10529a.ITF) {
            return super.mo11288a(str, aVar, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode ITF, but got ".concat(String.valueOf(aVar)));
    }

    @Override // p081h.p203i.p402h.p409m.AbstractC10583n
    /* renamed from: a */
    public boolean[] mo11330a(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("The length of the input should be even");
        } else if (length <= 80) {
            boolean[] zArr = new boolean[(length * 9) + 9];
            int a = AbstractC10583n.m11335a(zArr, 0, f24077a, true);
            for (int i = 0; i < length; i += 2) {
                int digit = Character.digit(str.charAt(i), 10);
                int digit2 = Character.digit(str.charAt(i + 1), 10);
                int[] iArr = new int[10];
                for (int i2 = 0; i2 < 5; i2++) {
                    int i3 = i2 * 2;
                    int[][] iArr2 = f24079c;
                    iArr[i3] = iArr2[digit][i2];
                    iArr[i3 + 1] = iArr2[digit2][i2];
                }
                a += AbstractC10583n.m11335a(zArr, a, iArr, true);
            }
            AbstractC10583n.m11335a(zArr, a, f24078b, true);
            return zArr;
        } else {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
    }
}
