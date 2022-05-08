package p081h.p203i.p401g;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: h.i.g.z */
/* loaded from: classes2-dex2jar.jar:h/i/g/z.class */
public final class C10516z {

    /* renamed from: a */
    public static final Charset f23903a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final Charset f23904b = Charset.forName("ISO-8859-1");

    /* renamed from: c */
    public static final byte[] f23905c = new byte[0];

    /* renamed from: h.i.g.z$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/z$a.class */
    public interface AbstractC10517a {
        int getNumber();
    }

    /* renamed from: h.i.g.z$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/z$b.class */
    public interface AbstractC10518b<T extends AbstractC10517a> {
    }

    /* renamed from: h.i.g.z$c */
    /* loaded from: classes2-dex2jar.jar:h/i/g/z$c.class */
    public interface AbstractC10519c extends AbstractC10520d<Integer> {
        /* renamed from: d */
        AbstractC10519c mo11538d(int i);

        /* renamed from: e */
        void mo11537e(int i);

        int getInt(int i);
    }

    /* renamed from: h.i.g.z$d */
    /* loaded from: classes2-dex2jar.jar:h/i/g/z$d.class */
    public interface AbstractC10520d<E> extends List<E>, RandomAccess {
        /* renamed from: d */
        void mo11536d();
    }

    static {
        ByteBuffer.wrap(f23905c);
        AbstractC10267h.m12937a(f23905c);
    }

    /* renamed from: a */
    public static int m11548a(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    /* renamed from: a */
    public static int m11547a(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: a */
    public static int m11546a(AbstractC10517a aVar) {
        return aVar.getNumber();
    }

    /* renamed from: a */
    public static int m11544a(List<? extends AbstractC10517a> list) {
        int i = 1;
        for (AbstractC10517a aVar : list) {
            i = (i * 31) + m11546a(aVar);
        }
        return i;
    }

    /* renamed from: a */
    public static int m11543a(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: a */
    public static int m11542a(byte[] bArr) {
        return m11541a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static int m11541a(byte[] bArr, int i, int i2) {
        int a = m11548a(i2, bArr, i, i2);
        int i3 = a;
        if (a == 0) {
            i3 = 1;
        }
        return i3;
    }

    /* renamed from: a */
    public static <T> T m11545a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    /* renamed from: b */
    public static boolean m11540b(byte[] bArr) {
        return C10289j1.m12756a(bArr);
    }

    /* renamed from: c */
    public static String m11539c(byte[] bArr) {
        return new String(bArr, f23903a);
    }
}
