package p037i.p038a.p039a.p045f;

import p037i.p038a.p039a.p041d.C0355b;
/* renamed from: i.a.a.f.p */
/* loaded from: classes2-dex2jar.jar:i/a/a/f/p.class */
public final class C0378p {

    /* renamed from: a */
    private static final ThreadLocal<char[]> f966a = new ThreadLocal<>();

    /* renamed from: a */
    public static String m308a(long j) {
        if (j == 0) {
            return m307b();
        }
        char[] c = m306c();
        C0355b.m354f(j, c, 0);
        return new String(c);
    }

    /* renamed from: b */
    public static String m307b() {
        return "0000000000000000";
    }

    /* renamed from: c */
    private static char[] m306c() {
        ThreadLocal<char[]> threadLocal = f966a;
        char[] cArr = threadLocal.get();
        char[] cArr2 = cArr;
        if (cArr == null) {
            cArr2 = new char[16];
            threadLocal.set(cArr2);
        }
        return cArr2;
    }

    /* renamed from: d */
    public static boolean m305d(CharSequence charSequence) {
        return charSequence != null && charSequence.length() == 16 && !"0000000000000000".contentEquals(charSequence) && C0355b.m355e(charSequence);
    }
}
