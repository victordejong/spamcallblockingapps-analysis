package androidx.work;
/* renamed from: androidx.work.m */
/* loaded from: classes-dex2jar.jar:androidx/work/m.class */
public abstract class AbstractC0541m {

    /* renamed from: a */
    private static AbstractC0541m f2676a;

    /* renamed from: b */
    private static final int f2677b = 20;

    public AbstractC0541m(int i) {
    }

    /* renamed from: c */
    public static AbstractC0541m m4308c() {
        AbstractC0541m abstractC0541m;
        synchronized (AbstractC0541m.class) {
            try {
                if (f2676a == null) {
                    f2676a = new a(3);
                }
                abstractC0541m = f2676a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC0541m;
    }

    /* renamed from: e */
    public static void m4306e(AbstractC0541m abstractC0541m) {
        synchronized (AbstractC0541m.class) {
            try {
                f2676a = abstractC0541m;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: f */
    public static String m4305f(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        int i = f2677b;
        if (length >= i) {
            sb.append(str.substring(0, i));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public abstract void m4310a(String str, String str2, Throwable... thArr);

    /* renamed from: b */
    public abstract void m4309b(String str, String str2, Throwable... thArr);

    /* renamed from: d */
    public abstract void m4307d(String str, String str2, Throwable... thArr);

    /* renamed from: g */
    public abstract void m4304g(String str, String str2, Throwable... thArr);

    /* renamed from: h */
    public abstract void m4303h(String str, String str2, Throwable... thArr);
}
