package p037i.p038a.p039a.p042e.p044n;
/* renamed from: i.a.a.e.n.a */
/* loaded from: classes2-dex2jar.jar:i/a/a/e/n/a.class */
public final class C0371a {
    /* renamed from: a */
    public static boolean m329a(String str) {
        if (str.isEmpty() || str.length() > 255) {
            return false;
        }
        return str.matches("[aA-zZ][aA-zZ0-9_\\-.]*");
    }
}
