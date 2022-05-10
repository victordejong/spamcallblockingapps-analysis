package p131c.p161d.p170b.p173b.p176i.p180v.p181a;
/* renamed from: c.d.b.b.i.v.a.c */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/v/a/c.class */
public final class C2599c<T> implements AbstractC2598b<T> {

    /* renamed from: a */
    public final T f9665a;

    static {
        new C2599c(null);
    }

    public C2599c(T t) {
        this.f9665a = t;
    }

    /* renamed from: a */
    public static <T> AbstractC2598b<T> m29454a(T t) {
        C2600d.m29451a(t, "instance cannot be null");
        return new C2599c(t);
    }

    @Override // p571e.p572a.AbstractC9866a
    public T get() {
        return this.f9665a;
    }
}
