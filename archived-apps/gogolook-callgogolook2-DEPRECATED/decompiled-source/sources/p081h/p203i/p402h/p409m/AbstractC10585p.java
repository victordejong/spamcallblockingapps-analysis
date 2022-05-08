package p081h.p203i.p402h.p409m;

import p081h.p203i.p402h.C10532d;
/* renamed from: h.i.h.m.p */
/* loaded from: classes2-dex2jar.jar:h/i/h/m/p.class */
public abstract class AbstractC10585p extends AbstractC10582m {

    /* renamed from: a */
    public static final int[] f24081a = {1, 1, 1};

    /* renamed from: b */
    public static final int[] f24082b = {1, 1, 1, 1, 1};

    /* renamed from: c */
    public static final int[] f24083c = {1, 1, 1, 1, 1, 1};

    /* renamed from: d */
    public static final int[][] f24084d = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};

    /* renamed from: e */
    public static final int[][] f24085e = new int[20];

    /* JADX WARN: Type inference failed for: r0v10, types: [int[], int[][]] */
    /* JADX WARN: Type inference failed for: r0v8, types: [int[], int[][]] */
    static {
        System.arraycopy(f24084d, 0, f24085e, 0, 10);
        for (int i = 10; i < 20; i++) {
            int[] iArr = f24084d[i - 10];
            int[] iArr2 = new int[iArr.length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                iArr2[i2] = iArr[(iArr.length - i2) - 1];
            }
            f24085e[i] = iArr2;
        }
    }

    /* renamed from: a */
    public static boolean m11334a(CharSequence charSequence) throws C10532d {
        int length = charSequence.length();
        if (length == 0) {
            return false;
        }
        int i = length - 1;
        return m11333b(charSequence.subSequence(0, i)) == Character.digit(charSequence.charAt(i), 10);
    }

    /* renamed from: b */
    public static int m11333b(CharSequence charSequence) throws C10532d {
        int length = charSequence.length();
        int i = 0;
        for (int i2 = length - 1; i2 >= 0; i2 -= 2) {
            int charAt = charSequence.charAt(i2) - '0';
            if (charAt < 0 || charAt > 9) {
                throw C10532d.m11496a();
            }
            i += charAt;
        }
        int i3 = i * 3;
        for (int i4 = length - 2; i4 >= 0; i4 -= 2) {
            int charAt2 = charSequence.charAt(i4) - '0';
            if (charAt2 < 0 || charAt2 > 9) {
                throw C10532d.m11496a();
            }
            i3 += charAt2;
        }
        return (1000 - i3) % 10;
    }
}
