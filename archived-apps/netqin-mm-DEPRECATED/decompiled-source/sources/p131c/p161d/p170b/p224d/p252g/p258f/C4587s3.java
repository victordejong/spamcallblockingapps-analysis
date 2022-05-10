package p131c.p161d.p170b.p224d.p252g.p258f;
/* renamed from: c.d.b.d.g.f.s3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/s3.class */
public final class C4587s3 implements AbstractC4624y3 {

    /* renamed from: a */
    public AbstractC4624y3[] f16879a;

    public C4587s3(AbstractC4624y3... y3VarArr) {
        this.f16879a = y3VarArr;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4624y3
    /* renamed from: a */
    public final boolean mo25124a(Class<?> cls) {
        for (AbstractC4624y3 y3Var : this.f16879a) {
            if (y3Var.mo25124a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4624y3
    /* renamed from: b */
    public final AbstractC4630z3 mo25123b(Class<?> cls) {
        AbstractC4624y3[] y3VarArr;
        for (AbstractC4624y3 y3Var : this.f16879a) {
            if (y3Var.mo25124a(cls)) {
                return y3Var.mo25123b(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
