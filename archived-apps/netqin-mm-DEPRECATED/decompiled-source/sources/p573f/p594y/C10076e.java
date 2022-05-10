package p573f.p594y;

import p573f.p590w.p592c.C10059q;
/* renamed from: f.y.e */
/* loaded from: classes2-dex2jar.jar:f/y/e.class */
public final class C10076e {
    /* renamed from: a */
    public static final int m1582a(int i) {
        return 31 - Integer.numberOfLeadingZeros(i);
    }

    /* renamed from: a */
    public static final String m1580a(Object obj, Object obj2) {
        C10059q.m1637b(obj, "from");
        C10059q.m1637b(obj2, "until");
        return "Random range is empty: [" + obj + ", " + obj2 + ").";
    }

    /* renamed from: a */
    public static final void m1581a(int i, int i2) {
        if (!(i2 > i)) {
            throw new IllegalArgumentException(m1580a(Integer.valueOf(i), Integer.valueOf(i2)).toString());
        }
    }

    /* renamed from: b */
    public static final int m1579b(int i, int i2) {
        return (i >>> (32 - i2)) & ((-i2) >> 31);
    }
}
