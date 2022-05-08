package p081h.p203i.p204a.p224e.p259j.p276q;

import gogolook.callgogolook2.gson.UserProfile;
import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
/* renamed from: h.i.a.e.j.q.t2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/t2.class */
public abstract class AbstractC8736t2 implements Serializable, Iterable<Byte> {

    /* renamed from: b */
    public static final AbstractC8736t2 f19984b = new C8567c3(C8591e4.f19672b);

    /* renamed from: c */
    public static final AbstractC8785y2 f19985c;

    /* renamed from: a */
    public int f19986a = 0;

    static {
        f19985c = C8709q2.m17240a() ? new C8581d3(null) : new C8763w2(null);
        new C8754v2();
    }

    /* renamed from: a */
    public static int m17181a(byte b) {
        return b & 255;
    }

    /* renamed from: a */
    public static AbstractC8736t2 m17177a(String str) {
        return new C8567c3(str.getBytes(C8591e4.f19671a));
    }

    /* renamed from: a */
    public static AbstractC8736t2 m17175a(byte[] bArr) {
        return new C8567c3(bArr);
    }

    /* renamed from: a */
    public static AbstractC8736t2 m17174a(byte[] bArr, int i, int i2) {
        m17171b(i, i + i2, bArr.length);
        return new C8567c3(f19985c.mo16999a(bArr, i, i2));
    }

    /* renamed from: b */
    public static int m17171b(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
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
            sb2.append(UserProfile.CARD_CATE_SEPARATOR);
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

    /* renamed from: h */
    public static C8549a3 m17169h(int i) {
        return new C8549a3(i, null);
    }

    /* renamed from: a */
    public abstract int mo17179a(int i, int i2, int i3);

    /* renamed from: a */
    public abstract AbstractC8736t2 mo17180a(int i, int i2);

    /* renamed from: a */
    public abstract String mo17176a(Charset charset);

    /* renamed from: a */
    public abstract void mo17178a(AbstractC8727s2 s2Var) throws IOException;

    /* renamed from: b */
    public final String m17173b() {
        return size() == 0 ? "" : mo17176a(C8591e4.f19671a);
    }

    /* renamed from: c */
    public abstract boolean mo17170c();

    public abstract boolean equals(Object obj);

    /* renamed from: g */
    public abstract byte mo17073g(int i);

    public final int hashCode() {
        int i = this.f19986a;
        int i2 = i;
        if (i == 0) {
            int size = size();
            int a = mo17179a(size, 0, size);
            i2 = a;
            if (a == 0) {
                i2 = 1;
            }
            this.f19986a = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new C8745u2(this);
    }

    /* renamed from: q */
    public final int m17168q() {
        return this.f19986a;
    }

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }
}
