package p530d.p541c.p543b0.p557i;
/* renamed from: d.c.b0.i.h */
/* loaded from: classes2-dex2jar.jar:d/c/b0/i/h.class */
public final class C9806h<T> {

    /* renamed from: a */
    public final float f37007a;

    /* renamed from: b */
    public int f37008b;

    /* renamed from: c */
    public int f37009c;

    /* renamed from: d */
    public int f37010d;

    /* renamed from: e */
    public T[] f37011e;

    public C9806h() {
        this(16, 0.75f);
    }

    public C9806h(int i, float f) {
        this.f37007a = f;
        int a = C9807i.m1987a(i);
        this.f37008b = a - 1;
        this.f37010d = (int) (f * a);
        this.f37011e = (T[]) new Object[a];
    }

    /* renamed from: a */
    public static int m1993a(int i) {
        int i2 = i * (-1640531527);
        return i2 ^ (i2 >>> 16);
    }

    /* renamed from: a */
    public boolean m1992a(int i, T[] tArr, int i2) {
        int i3;
        T t;
        this.f37009c--;
        while (true) {
            int i4 = i + 1;
            while (true) {
                i3 = i4 & i2;
                t = tArr[i3];
                if (t == null) {
                    tArr[i] = null;
                    return true;
                }
                int a = m1993a(t.hashCode()) & i2;
                if (i > i3) {
                    if (i >= a && a > i3) {
                        break;
                    }
                    i4 = i3 + 1;
                } else if (i < a && a <= i3) {
                    i4 = i3 + 1;
                }
            }
            tArr[i] = t;
            i = i3;
        }
    }

    /* renamed from: a */
    public boolean m1991a(T t) {
        T t2;
        T[] tArr = this.f37011e;
        int i = this.f37008b;
        int a = m1993a(t.hashCode()) & i;
        T t3 = tArr[a];
        int i2 = a;
        if (t3 != null) {
            if (t3.equals(t)) {
                return false;
            }
            do {
                i2 = (a + 1) & i;
                t2 = tArr[i2];
                if (t2 != null) {
                    a = i2;
                }
            } while (!t2.equals(t));
            return false;
        }
        tArr[i2] = t;
        int i3 = this.f37009c + 1;
        this.f37009c = i3;
        if (i3 < this.f37010d) {
            return true;
        }
        m1990b();
        return true;
    }

    /* renamed from: a */
    public Object[] m1994a() {
        return this.f37011e;
    }

    /* renamed from: b */
    public void m1990b() {
        int i;
        T[] tArr = this.f37011e;
        int length = tArr.length;
        int i2 = length << 1;
        int i3 = i2 - 1;
        T[] tArr2 = (T[]) new Object[i2];
        for (int i4 = this.f37009c; i4 != 0; i4--) {
            do {
                length--;
            } while (tArr[length] == null);
            int a = m1993a(tArr[length].hashCode()) & i3;
            int i5 = a;
            if (tArr2[a] != null) {
                int i6 = a;
                do {
                    i = (i6 + 1) & i3;
                    i6 = i;
                } while (tArr2[i] != null);
                i5 = i;
            }
            tArr2[i5] = tArr[length];
        }
        this.f37008b = i3;
        this.f37010d = (int) (i2 * this.f37007a);
        this.f37011e = tArr2;
    }

    /* renamed from: b */
    public boolean m1989b(T t) {
        int i;
        T t2;
        T[] tArr = this.f37011e;
        int i2 = this.f37008b;
        int a = m1993a(t.hashCode()) & i2;
        T t3 = tArr[a];
        if (t3 == null) {
            return false;
        }
        int i3 = a;
        if (t3.equals(t)) {
            return m1992a(a, tArr, i2);
        }
        do {
            i = (i3 + 1) & i2;
            t2 = tArr[i];
            if (t2 == null) {
                return false;
            }
            i3 = i;
        } while (!t2.equals(t));
        return m1992a(i, tArr, i2);
    }

    /* renamed from: c */
    public int m1988c() {
        return this.f37009c;
    }
}
