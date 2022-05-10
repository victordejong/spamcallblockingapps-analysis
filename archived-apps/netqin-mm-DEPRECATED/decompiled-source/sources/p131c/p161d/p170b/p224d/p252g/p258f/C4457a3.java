package p131c.p161d.p170b.p224d.p252g.p258f;
/* renamed from: c.d.b.d.g.f.a3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/a3.class */
public final class C4457a3 {

    /* renamed from: a */
    public static final AbstractC4629z2<?> f16681a = new C4464b3();

    /* renamed from: b */
    public static final AbstractC4629z2<?> f16682b = m25566c();

    /* renamed from: a */
    public static AbstractC4629z2<?> m25568a() {
        return f16681a;
    }

    /* renamed from: b */
    public static AbstractC4629z2<?> m25567b() {
        AbstractC4629z2<?> z2Var = f16682b;
        if (z2Var != null) {
            return z2Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* renamed from: c */
    public static AbstractC4629z2<?> m25566c() {
        try {
            return (AbstractC4629z2) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
