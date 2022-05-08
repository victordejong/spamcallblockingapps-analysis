package p081h.p203i.p204a.p224e.p259j.p266g;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* renamed from: h.i.a.e.j.g.h1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/h1.class */
public final class C7602h1 {

    /* renamed from: a */
    public static final Charset f17862a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final byte[] f17863b;

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f17863b = bArr;
        ByteBuffer.wrap(bArr);
        byte[] bArr2 = f17863b;
        AbstractC7618j0.m20094a(bArr2, 0, bArr2.length, false);
    }

    /* renamed from: a */
    public static int m20135a(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    /* renamed from: a */
    public static int m20134a(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: a */
    public static int m20129a(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: a */
    public static int m20128a(byte[] bArr) {
        int length = bArr.length;
        int a = m20135a(length, bArr, 0, length);
        int i = a;
        if (a == 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: a */
    public static <T> T m20132a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    /* renamed from: a */
    public static Object m20131a(Object obj, Object obj2) {
        AbstractC7634l2 d = ((AbstractC7627k2) obj).mo20087d();
        d.mo19817a((AbstractC7627k2) obj2);
        return d.mo20074a();
    }

    /* renamed from: a */
    public static <T> T m20130a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: a */
    public static boolean m20133a(AbstractC7627k2 k2Var) {
        return false;
    }

    /* renamed from: b */
    public static boolean m20127b(byte[] bArr) {
        return C7565c4.m20287a(bArr);
    }

    /* renamed from: c */
    public static String m20126c(byte[] bArr) {
        return new String(bArr, f17862a);
    }
}
