package androidx.core.p036f;
/* renamed from: androidx.core.f.f */
/* loaded from: classes-dex2jar.jar:androidx/core/f/f.class */
public final class C0687f {
    /* renamed from: a */
    public static int m8550a(int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public static <T> T m8549a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    /* renamed from: a */
    public static <T> T m8548a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }
}
