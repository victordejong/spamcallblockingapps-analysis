package p131c.p161d.p367h;
/* renamed from: c.d.h.s */
/* loaded from: classes2-dex2jar.jar:c/d/h/s.class */
public final class C6367s {

    /* renamed from: a */
    public static final AbstractC6361q<?> f20033a = new C6364r();

    /* renamed from: b */
    public static final AbstractC6361q<?> f20034b = m21072c();

    /* renamed from: a */
    public static AbstractC6361q<?> m21074a() {
        AbstractC6361q<?> qVar = f20034b;
        if (qVar != null) {
            return qVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* renamed from: b */
    public static AbstractC6361q<?> m21073b() {
        return f20033a;
    }

    /* renamed from: c */
    public static AbstractC6361q<?> m21072c() {
        try {
            return (AbstractC6361q) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
