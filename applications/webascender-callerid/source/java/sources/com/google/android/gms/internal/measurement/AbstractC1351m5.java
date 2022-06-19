package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Locale;
/* renamed from: com.google.android.gms.internal.measurement.m5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/m5.class */
public abstract class AbstractC1351m5 implements Iterable<Byte>, Serializable {

    /* renamed from: g */
    public static final AbstractC1351m5 f3935g = new k5(C1396u6.f3966b);

    /* renamed from: h */
    private static final AbstractC1325h5 f3936h;

    /* renamed from: f */
    private int f3937f = 0;

    static {
        f3936h = C1412y4.m1879a() ? new l5((d5) null) : new f5((d5) null);
    }

    AbstractC1351m5() {
    }

    /* renamed from: n */
    public static AbstractC1351m5 m2039n(byte[] bArr, int i, int i2) {
        m2035t(i, i + i2, bArr.length);
        return new k5(f3936h.m2089a(bArr, i, i2));
    }

    /* renamed from: p */
    public static AbstractC1351m5 m2038p(String str) {
        return new k5(str.getBytes(C1396u6.f3965a));
    }

    /* renamed from: t */
    static int m2035t(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i < 0) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Beginning index: ");
                sb.append(i);
                sb.append(" < 0");
                throw new IndexOutOfBoundsException(sb.toString());
            } else if (i2 < i) {
                StringBuilder sb2 = new StringBuilder(66);
                sb2.append("Beginning index larger than ending index: ");
                sb2.append(i);
                sb2.append(", ");
                sb2.append(i2);
                throw new IndexOutOfBoundsException(sb2.toString());
            } else {
                StringBuilder sb3 = new StringBuilder(37);
                sb3.append("End index: ");
                sb3.append(i2);
                sb3.append(" >= ");
                sb3.append(i3);
                throw new IndexOutOfBoundsException(sb3.toString());
            }
        }
        return i4;
    }

    /* renamed from: c */
    public abstract byte m2047c(int i);

    /* renamed from: d */
    abstract byte m2046d(int i);

    public abstract boolean equals(Object obj);

    /* renamed from: g */
    public abstract int m2045g();

    /* renamed from: h */
    public abstract AbstractC1351m5 m2044h(int i, int i2);

    public final int hashCode() {
        int i = this.f3937f;
        int i2 = i;
        if (i == 0) {
            int m2045g = m2045g();
            int m2040m = m2040m(m2045g, 0, m2045g);
            i2 = m2040m;
            if (m2040m == 0) {
                i2 = 1;
            }
            this.f3937f = i2;
        }
        return i2;
    }

    /* renamed from: i */
    abstract void m2043i(C1299c5 c1299c5) throws IOException;

    @Override // java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
        return new d5(this);
    }

    /* renamed from: j */
    protected abstract String m2042j(Charset charset);

    /* renamed from: k */
    public abstract boolean m2041k();

    /* renamed from: m */
    protected abstract int m2040m(int i, int i2, int i3);

    /* renamed from: q */
    public final String m2037q(Charset charset) {
        return m2045g() == 0 ? "" : m2042j(charset);
    }

    /* renamed from: s */
    protected final int m2036s() {
        return this.f3937f;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(m2045g()), m2045g() <= 50 ? C1353m8.m2032a(this) : String.valueOf(C1353m8.m2032a(m2044h(0, 47))).concat("..."));
    }
}
