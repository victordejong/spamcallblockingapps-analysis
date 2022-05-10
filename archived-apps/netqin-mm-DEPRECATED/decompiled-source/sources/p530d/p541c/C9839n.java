package p530d.p541c;

import io.reactivex.internal.util.NotificationLite;
import p530d.p541c.p543b0.p545b.C9650a;
/* renamed from: d.c.n */
/* loaded from: classes2-dex2jar.jar:d/c/n.class */
public final class C9839n<T> {

    /* renamed from: b */
    public static final C9839n<Object> f37064b = new C9839n<>(null);

    /* renamed from: a */
    public final Object f37065a;

    public C9839n(Object obj) {
        this.f37065a = obj;
    }

    /* renamed from: a */
    public static <T> C9839n<T> m1874a(T t) {
        C9650a.m2095a((Object) t, "value is null");
        return new C9839n<>(t);
    }

    /* renamed from: a */
    public static <T> C9839n<T> m1873a(Throwable th) {
        C9650a.m2095a(th, "error is null");
        return new C9839n<>(NotificationLite.error(th));
    }

    /* renamed from: c */
    public static <T> C9839n<T> m1871c() {
        return (C9839n<T>) f37064b;
    }

    /* renamed from: a */
    public Throwable m1875a() {
        Object obj = this.f37065a;
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    /* renamed from: b */
    public boolean m1872b() {
        return NotificationLite.isError(this.f37065a);
    }

    public boolean equals(Object obj) {
        if (obj instanceof C9839n) {
            return C9650a.m2096a(this.f37065a, ((C9839n) obj).f37065a);
        }
        return false;
    }

    public int hashCode() {
        Object obj = this.f37065a;
        return obj != null ? obj.hashCode() : 0;
    }

    public String toString() {
        Object obj = this.f37065a;
        if (obj == null) {
            return "OnCompleteNotification";
        }
        if (NotificationLite.isError(obj)) {
            return "OnErrorNotification[" + NotificationLite.getError(obj) + "]";
        }
        return "OnNextNotification[" + this.f37065a + "]";
    }
}
