package p037i.p038a.p039a.p045f;

import p037i.p038a.p039a.p041d.C0355b;
/* renamed from: i.a.a.f.u */
/* loaded from: classes2-dex2jar.jar:i/a/a/f/u.class */
public final class C0383u {

    /* renamed from: a */
    private static final ThreadLocal<char[]> f968a = new ThreadLocal<>();

    /* renamed from: a */
    public static String m301a(long j, long j2) {
        if (j == 0 && j2 == 0) {
            return m300b();
        }
        char[] c = m299c();
        C0355b.m354f(j, c, 0);
        C0355b.m354f(j2, c, 16);
        return new String(c);
    }

    /* renamed from: b */
    public static String m300b() {
        return "00000000000000000000000000000000";
    }

    /* renamed from: c */
    private static char[] m299c() {
        ThreadLocal<char[]> threadLocal = f968a;
        char[] cArr = threadLocal.get();
        char[] cArr2 = cArr;
        if (cArr == null) {
            cArr2 = new char[32];
            threadLocal.set(cArr2);
        }
        return cArr2;
    }

    /* renamed from: d */
    public static boolean m298d(CharSequence charSequence) {
        return charSequence != null && charSequence.length() == 32 && !"00000000000000000000000000000000".contentEquals(charSequence) && C0355b.m355e(charSequence);
    }
}
