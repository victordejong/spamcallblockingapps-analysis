package p067i.p095c.p097b0.p101b;

import i.c.b0.e.k.m;
import java.util.Objects;
/* renamed from: i.c.b0.b.u */
/* loaded from: classes2-dex2jar.jar:i/c/b0/b/u.class */
public final class C2160u<T> {

    /* renamed from: b */
    static final C2160u<Object> f5868b = new C2160u<>(null);

    /* renamed from: a */
    final Object f5869a;

    private C2160u(Object obj) {
        this.f5869a = obj;
    }

    /* renamed from: a */
    public static <T> C2160u<T> m79a() {
        return (C2160u<T>) f5868b;
    }

    /* renamed from: b */
    public static <T> C2160u<T> m78b(Throwable th) {
        Objects.requireNonNull(th, "error is null");
        return new C2160u<>(m.error(th));
    }

    /* renamed from: c */
    public static <T> C2160u<T> m77c(T t) {
        Objects.requireNonNull(t, "value is null");
        return new C2160u<>(t);
    }

    /* renamed from: d */
    public Throwable m76d() {
        Object obj = this.f5869a;
        if (m.isError(obj)) {
            return m.getError(obj);
        }
        return null;
    }

    /* renamed from: e */
    public T m75e() {
        Object obj = this.f5869a;
        if (obj == null || m.isError(obj)) {
            return null;
        }
        return (T) this.f5869a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C2160u) {
            return Objects.equals(this.f5869a, ((C2160u) obj).f5869a);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m74f() {
        return this.f5869a == null;
    }

    /* renamed from: g */
    public boolean m73g() {
        return m.isError(this.f5869a);
    }

    /* renamed from: h */
    public boolean m72h() {
        Object obj = this.f5869a;
        return obj != null && !m.isError(obj);
    }

    public int hashCode() {
        Object obj = this.f5869a;
        return obj != null ? obj.hashCode() : 0;
    }

    public String toString() {
        Object obj = this.f5869a;
        if (obj == null) {
            return "OnCompleteNotification";
        }
        if (m.isError(obj)) {
            return "OnErrorNotification[" + m.getError(obj) + "]";
        }
        return "OnNextNotification[" + this.f5869a + "]";
    }
}
