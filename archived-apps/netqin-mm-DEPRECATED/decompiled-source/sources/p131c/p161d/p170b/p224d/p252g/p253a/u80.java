package p131c.p161d.p170b.p224d.p252g.p253a;
/* renamed from: c.d.b.d.g.a.u80 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/u80.class */
public final class u80 {

    /* renamed from: a */
    public static final t80 f15465a = m26302c();

    /* renamed from: b */
    public static final t80 f15466b = new v80();

    /* renamed from: a */
    public static t80 m26304a() {
        return f15465a;
    }

    /* renamed from: b */
    public static t80 m26303b() {
        return f15466b;
    }

    /* renamed from: c */
    public static t80 m26302c() {
        try {
            return (t80) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
