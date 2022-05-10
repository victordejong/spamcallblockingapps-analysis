package p131c.p161d.p266c.p269c;
/* renamed from: c.d.c.c.f0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/f0.class */
public final class C4980f0 {
    /* renamed from: a */
    public static int m24729a(int i) {
        return (int) (Integer.rotateLeft((int) (i * (-862048943)), 15) * 461845907);
    }

    /* renamed from: a */
    public static int m24728a(int i, double d) {
        int max = Math.max(i, 2);
        int highestOneBit = Integer.highestOneBit(max);
        double d2 = highestOneBit;
        Double.isNaN(d2);
        if (max <= ((int) (d * d2))) {
            return highestOneBit;
        }
        int i2 = highestOneBit << 1;
        if (i2 <= 0) {
            i2 = 1073741824;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m24726a(Object obj) {
        return m24729a(obj == null ? 0 : obj.hashCode());
    }

    /* renamed from: a */
    public static boolean m24727a(int i, int i2, double d) {
        double d2 = i2;
        Double.isNaN(d2);
        return ((double) i) > d * d2 && i2 < 1073741824;
    }
}
