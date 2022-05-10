package p131c.p161d.p367h;

import com.android.volley.Request;
import com.android.volley.toolbox.HttpHeaderParser;
import com.google.protobuf.Utf8;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.RandomAccess;
import p131c.p161d.p367h.AbstractC6354n0;
/* renamed from: c.d.h.y */
/* loaded from: classes2-dex2jar.jar:c/d/h/y.class */
public final class C6381y {

    /* renamed from: a */
    public static final Charset f20053a = Charset.forName(Request.DEFAULT_PARAMS_ENCODING);

    /* renamed from: b */
    public static final byte[] f20054b;

    /* renamed from: c.d.h.y$a */
    /* loaded from: classes2-dex2jar.jar:c/d/h/y$a.class */
    public interface AbstractC6382a extends AbstractC6390i<Boolean> {
    }

    /* renamed from: c.d.h.y$b */
    /* loaded from: classes2-dex2jar.jar:c/d/h/y$b.class */
    public interface AbstractC6383b extends AbstractC6390i<Double> {
    }

    /* renamed from: c.d.h.y$c */
    /* loaded from: classes2-dex2jar.jar:c/d/h/y$c.class */
    public interface AbstractC6384c {
        int getNumber();
    }

    /* renamed from: c.d.h.y$d */
    /* loaded from: classes2-dex2jar.jar:c/d/h/y$d.class */
    public interface AbstractC6385d<T extends AbstractC6384c> {
        /* renamed from: a */
        T mo6797a(int i);
    }

    /* renamed from: c.d.h.y$e */
    /* loaded from: classes2-dex2jar.jar:c/d/h/y$e.class */
    public interface AbstractC6386e {
        /* renamed from: a */
        boolean mo6796a(int i);
    }

    /* renamed from: c.d.h.y$f */
    /* loaded from: classes2-dex2jar.jar:c/d/h/y$f.class */
    public interface AbstractC6387f extends AbstractC6390i<Float> {
    }

    /* renamed from: c.d.h.y$g */
    /* loaded from: classes2-dex2jar.jar:c/d/h/y$g.class */
    public interface AbstractC6388g extends AbstractC6390i<Integer> {
        @Override // p131c.p161d.p367h.C6381y.AbstractC6390i
        /* renamed from: b */
        AbstractC6390i<Integer> mo20996b(int i);

        /* renamed from: g */
        void mo21001g(int i);

        int getInt(int i);
    }

    /* renamed from: c.d.h.y$h */
    /* loaded from: classes2-dex2jar.jar:c/d/h/y$h.class */
    public interface AbstractC6389h extends AbstractC6390i<Long> {
    }

    /* renamed from: c.d.h.y$i */
    /* loaded from: classes2-dex2jar.jar:c/d/h/y$i.class */
    public interface AbstractC6390i<E> extends List<E>, RandomAccess {
        /* renamed from: L */
        boolean mo21000L();

        /* renamed from: b */
        AbstractC6390i<E> mo20996b(int i);

        /* renamed from: l */
        void mo20999l();
    }

    static {
        Charset.forName(HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
        byte[] bArr = new byte[0];
        f20054b = bArr;
        ByteBuffer.wrap(bArr);
        AbstractC6327j.m21465a(f20054b);
    }

    /* renamed from: a */
    public static int m21011a(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* renamed from: a */
    public static int m21010a(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: a */
    public static int m21006a(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: a */
    public static int m21005a(byte[] bArr) {
        return m21004a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static int m21004a(byte[] bArr, int i, int i2) {
        int a = m21011a(i2, bArr, i, i2);
        int i3 = a;
        if (a == 0) {
            i3 = 1;
        }
        return i3;
    }

    /* renamed from: a */
    public static <T> T m21009a(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    /* renamed from: a */
    public static Object m21008a(Object obj, Object obj2) {
        AbstractC6354n0.AbstractC6355a h = ((AbstractC6354n0) obj).mo6926h();
        h.mo21178a((AbstractC6354n0) obj2);
        return h.mo6938B();
    }

    /* renamed from: a */
    public static <T> T m21007a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: b */
    public static boolean m21003b(byte[] bArr) {
        return Utf8.m6891a(bArr);
    }

    /* renamed from: c */
    public static String m21002c(byte[] bArr) {
        return new String(bArr, f20053a);
    }
}
