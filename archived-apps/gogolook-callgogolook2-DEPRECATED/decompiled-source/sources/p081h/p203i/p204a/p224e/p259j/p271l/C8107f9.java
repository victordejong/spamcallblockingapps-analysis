package p081h.p203i.p204a.p224e.p259j.p271l;
/* renamed from: h.i.a.e.j.l.f9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/f9.class */
public final class C8107f9 {

    /* renamed from: a */
    public static final AbstractC8068d9<?> f18842a = new C8050c9();

    /* renamed from: b */
    public static final AbstractC8068d9<?> f18843b = m18541a();

    /* renamed from: a */
    public static AbstractC8068d9<?> m18541a() {
        try {
            return (AbstractC8068d9) Class.forName("h.i.g.t").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: b */
    public static AbstractC8068d9<?> m18540b() {
        return f18842a;
    }

    /* renamed from: c */
    public static AbstractC8068d9<?> m18539c() {
        AbstractC8068d9<?> d9Var = f18843b;
        if (d9Var != null) {
            return d9Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
