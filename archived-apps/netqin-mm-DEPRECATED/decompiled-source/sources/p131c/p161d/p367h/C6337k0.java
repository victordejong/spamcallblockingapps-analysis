package p131c.p161d.p367h;
/* renamed from: c.d.h.k0 */
/* loaded from: classes2-dex2jar.jar:c/d/h/k0.class */
public final class C6337k0 {

    /* renamed from: a */
    public static final AbstractC6325i0 f19976a = m21307c();

    /* renamed from: b */
    public static final AbstractC6325i0 f19977b = new C6333j0();

    /* renamed from: a */
    public static AbstractC6325i0 m21309a() {
        return f19976a;
    }

    /* renamed from: b */
    public static AbstractC6325i0 m21308b() {
        return f19977b;
    }

    /* renamed from: c */
    public static AbstractC6325i0 m21307c() {
        try {
            return (AbstractC6325i0) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
