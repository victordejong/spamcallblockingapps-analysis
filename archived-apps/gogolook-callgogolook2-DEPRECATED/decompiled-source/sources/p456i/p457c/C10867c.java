package p456i.p457c;
/* renamed from: i.c.c */
/* loaded from: classes2-dex2jar.jar:i/c/c.class */
public final class C10867c {
    /* renamed from: a */
    public static <T> T m10385a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    /* renamed from: a */
    public static <T> T m10383a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: a */
    public static <T> void m10384a(T t, Class<T> cls) {
        if (t == null) {
            throw new IllegalStateException(cls.getCanonicalName() + " must be set");
        }
    }
}
