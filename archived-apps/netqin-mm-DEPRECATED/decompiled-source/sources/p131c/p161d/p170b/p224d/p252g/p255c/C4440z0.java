package p131c.p161d.p170b.p224d.p252g.p255c;
/* renamed from: c.d.b.d.g.c.z0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/z0.class */
public final class C4440z0 {

    /* renamed from: a */
    public static final AbstractC4432x0 f16661a = m25570c();

    /* renamed from: b */
    public static final AbstractC4432x0 f16662b = new C4436y0();

    /* renamed from: a */
    public static AbstractC4432x0 m25572a() {
        return f16661a;
    }

    /* renamed from: b */
    public static AbstractC4432x0 m25571b() {
        return f16662b;
    }

    /* renamed from: c */
    public static AbstractC4432x0 m25570c() {
        try {
            return (AbstractC4432x0) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
