package p131c.p161d.p170b.p224d.p252g.p253a;
/* renamed from: c.d.b.d.g.a.n80 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/n80.class */
public final class n80 {

    /* renamed from: a */
    public static final l80 f14219a = m26620c();

    /* renamed from: b */
    public static final l80 f14220b = new k80();

    /* renamed from: a */
    public static l80 m26622a() {
        return f14219a;
    }

    /* renamed from: b */
    public static l80 m26621b() {
        return f14220b;
    }

    /* renamed from: c */
    public static l80 m26620c() {
        try {
            return (l80) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
