package p037i.p038a.p039a.p041d;
/* renamed from: i.a.a.d.c */
/* loaded from: classes2-dex2jar.jar:i/a/a/d/c.class */
public final class C0356c {
    /* renamed from: a */
    private static boolean m353a(char c) {
        return c >= ' ' && c <= '~';
    }

    /* renamed from: b */
    public static boolean m352b(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (!m353a(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }
}
