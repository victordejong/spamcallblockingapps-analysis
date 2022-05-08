package p031h.p032b;

import java.util.Objects;
/* renamed from: h.b.b */
/* loaded from: classes2-dex2jar.jar:h/b/b.class */
public final class C0288b {
    /* renamed from: a */
    public static <T> void m472a(T t, Class<T> cls) {
        if (t == null) {
            throw new IllegalStateException(cls.getCanonicalName() + " must be set");
        }
    }

    /* renamed from: b */
    public static <T> T m471b(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: c */
    public static <T> T m470c(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }
}
