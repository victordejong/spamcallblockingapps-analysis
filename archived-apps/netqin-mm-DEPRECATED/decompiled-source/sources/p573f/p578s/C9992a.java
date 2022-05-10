package p573f.p578s;
/* renamed from: f.s.a */
/* loaded from: classes2-dex2jar.jar:f/s/a.class */
public class C9992a {
    /* renamed from: a */
    public static final <T extends Comparable<?>> int m1690a(T t, T t2) {
        if (t == t2) {
            return 0;
        }
        if (t == null) {
            return -1;
        }
        if (t2 == null) {
            return 1;
        }
        return t.compareTo(t2);
    }
}
