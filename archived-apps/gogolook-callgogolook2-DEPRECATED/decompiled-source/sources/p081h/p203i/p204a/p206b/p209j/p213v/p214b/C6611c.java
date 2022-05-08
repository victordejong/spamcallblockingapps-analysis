package p081h.p203i.p204a.p206b.p209j.p213v.p214b;

import p081h.p203i.p204a.p206b.p209j.p213v.AbstractC6608a;
/* renamed from: h.i.a.b.j.v.b.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/v/b/c.class */
public final class C6611c<T> implements AbstractC6610b<T>, AbstractC6608a<T> {

    /* renamed from: a */
    public final T f16426a;

    static {
        new C6611c(null);
    }

    public C6611c(T t) {
        this.f16426a = t;
    }

    /* renamed from: a */
    public static <T> AbstractC6610b<T> m22241a(T t) {
        C6612d.m22238a(t, "instance cannot be null");
        return new C6611c(t);
    }

    @Override // javax.inject.Provider
    public T get() {
        return this.f16426a;
    }
}
