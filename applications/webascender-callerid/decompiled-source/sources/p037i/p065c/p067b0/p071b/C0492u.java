package p037i.p065c.p067b0.p071b;

import i.c.b0.e.k.m;
import java.util.Objects;
/* renamed from: i.c.b0.b.u */
/* loaded from: classes2-dex2jar.jar:i/c/b0/b/u.class */
public final class C0492u<T> {

    /* renamed from: b */
    static final C0492u<Object> f1189b = new C0492u<>(null);

    /* renamed from: a */
    final Object f1190a;

    private C0492u(Object obj) {
        this.f1190a = obj;
    }

    /* renamed from: a */
    public static <T> C0492u<T> m79a() {
        return (C0492u<T>) f1189b;
    }

    /* renamed from: b */
    public static <T> C0492u<T> m78b(Throwable th) {
        Objects.requireNonNull(th, "error is null");
        return new C0492u<>(m.error(th));
    }

    /* renamed from: c */
    public static <T> C0492u<T> m77c(T t) {
        Objects.requireNonNull(t, "value is null");
        return new C0492u<>(t);
    }

    /* renamed from: d */
    public Throwable m76d() {
        Object obj = this.f1190a;
        if (m.isError(obj)) {
            return m.getError(obj);
        }
        return null;
    }

    /* renamed from: e */
    public T m75e() {
        Object obj = this.f1190a;
        if (obj == null || m.isError(obj)) {
            return null;
        }
        return (T) this.f1190a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C0492u) {
            return Objects.equals(this.f1190a, ((C0492u) obj).f1190a);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m74f() {
        return this.f1190a == null;
    }

    /* renamed from: g */
    public boolean m73g() {
        return m.isError(this.f1190a);
    }

    /* renamed from: h */
    public boolean m72h() {
        Object obj = this.f1190a;
        return obj != null && !m.isError(obj);
    }

    public int hashCode() {
        Object obj = this.f1190a;
        return obj != null ? obj.hashCode() : 0;
    }

    public String toString() {
        Object obj = this.f1190a;
        if (obj == null) {
            return "OnCompleteNotification";
        }
        if (m.isError(obj)) {
            return "OnErrorNotification[" + m.getError(obj) + "]";
        }
        return "OnNextNotification[" + this.f1190a + "]";
    }
}
