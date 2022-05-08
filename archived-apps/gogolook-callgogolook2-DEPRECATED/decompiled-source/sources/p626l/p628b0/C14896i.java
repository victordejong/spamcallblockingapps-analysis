package p626l.p628b0;
/* renamed from: l.b0.i */
/* loaded from: classes3-dex2jar.jar:l/b0/i.class */
public class C14896i extends C14895h {
    /* renamed from: a */
    public static final int m796a(int i, int i2) {
        int i3 = i;
        if (i < i2) {
            i3 = i2;
        }
        return i3;
    }

    /* renamed from: a */
    public static final int m795a(int i, int i2, int i3) {
        if (i2 <= i3) {
            return i < i2 ? i2 : i > i3 ? i3 : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i3 + " is less than minimum " + i2 + '.');
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static final long m794a(long j, long j2) {
        char c = j;
        if (j < j2) {
            c = j2;
        }
        return c;
    }

    /* renamed from: b */
    public static final int m793b(int i, int i2) {
        int i3 = i;
        if (i > i2) {
            i3 = i2;
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static final long m792b(long j, long j2) {
        char c = j;
        if (j > j2) {
            c = j2;
        }
        return c;
    }

    /* renamed from: c */
    public static final C14885b m791c(int i, int i2) {
        return C14885b.f32935d.m799a(i, i2, -1);
    }

    /* renamed from: d */
    public static final C14888d m790d(int i, int i2) {
        return i2 <= Integer.MIN_VALUE ? C14888d.f32944f.m797a() : new C14888d(i, i2 - 1);
    }
}
