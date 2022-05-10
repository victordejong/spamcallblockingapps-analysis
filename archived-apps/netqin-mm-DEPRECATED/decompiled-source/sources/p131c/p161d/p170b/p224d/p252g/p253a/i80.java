package p131c.p161d.p170b.p224d.p252g.p253a;
/* renamed from: c.d.b.d.g.a.i80 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/i80.class */
public final class i80 implements o80 {

    /* renamed from: a */
    public o80[] f13502a;

    public i80(o80... o80VarArr) {
        this.f13502a = o80VarArr;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.o80
    /* renamed from: a */
    public final m80 mo26211a(Class<?> cls) {
        o80[] o80VarArr;
        for (o80 o80Var : this.f13502a) {
            if (o80Var.mo26210b(cls)) {
                return o80Var.mo26211a(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.o80
    /* renamed from: b */
    public final boolean mo26210b(Class<?> cls) {
        for (o80 o80Var : this.f13502a) {
            if (o80Var.mo26210b(cls)) {
                return true;
            }
        }
        return false;
    }
}
