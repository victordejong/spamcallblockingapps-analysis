package p067i.p068a.p069a.p075f;

import p067i.p068a.p069a.p071d.C2023b;
/* renamed from: i.a.a.f.u */
/* loaded from: classes2-dex2jar.jar:i/a/a/f/u.class */
public final class C2051u {

    /* renamed from: a */
    private static final ThreadLocal<char[]> f5647a = new ThreadLocal<>();

    /* renamed from: a */
    public static String m301a(long j, long j2) {
        if (j == 0 && j2 == 0) {
            return m300b();
        }
        char[] m299c = m299c();
        C2023b.m354f(j, m299c, 0);
        C2023b.m354f(j2, m299c, 16);
        return new String(m299c);
    }

    /* renamed from: b */
    public static String m300b() {
        return "00000000000000000000000000000000";
    }

    /* renamed from: c */
    private static char[] m299c() {
        ThreadLocal<char[]> threadLocal = f5647a;
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
        return charSequence != null && charSequence.length() == 32 && !"00000000000000000000000000000000".contentEquals(charSequence) && C2023b.m355e(charSequence);
    }
}
