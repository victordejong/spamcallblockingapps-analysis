package p573f.p595z;
/* renamed from: f.z.f */
/* loaded from: classes2-dex2jar.jar:f/z/f.class */
public class C10084f extends C10083e {
    /* renamed from: a */
    public static final int m1571a(int i, int i2) {
        int i3 = i;
        if (i < i2) {
            i3 = i2;
        }
        return i3;
    }

    /* renamed from: a */
    public static final int m1570a(int i, int i2, int i3) {
        if (i2 <= i3) {
            return i < i2 ? i2 : i > i3 ? i3 : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i3 + " is less than minimum " + i2 + '.');
    }

    /* renamed from: b */
    public static final int m1569b(int i, int i2) {
        int i3 = i;
        if (i > i2) {
            i3 = i2;
        }
        return i3;
    }

    /* renamed from: c */
    public static final C10077a m1568c(int i, int i2) {
        return C10077a.f37200d.m1577a(i, i2, -1);
    }

    /* renamed from: d */
    public static final C10080c m1567d(int i, int i2) {
        return i2 <= Integer.MIN_VALUE ? C10080c.f37209f.m1572a() : new C10080c(i, i2 - 1);
    }
}
