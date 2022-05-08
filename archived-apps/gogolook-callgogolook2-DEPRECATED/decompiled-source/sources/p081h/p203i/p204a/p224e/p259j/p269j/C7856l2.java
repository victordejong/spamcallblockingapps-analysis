package p081h.p203i.p204a.p224e.p259j.p269j;
/* renamed from: h.i.a.e.j.j.l2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/l2.class */
public final class C7856l2 implements AbstractC7913s2 {

    /* renamed from: a */
    public AbstractC7913s2[] f18403a;

    public C7856l2(AbstractC7913s2... s2VarArr) {
        this.f18403a = s2VarArr;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7913s2
    /* renamed from: a */
    public final boolean mo18996a(Class<?> cls) {
        for (AbstractC7913s2 s2Var : this.f18403a) {
            if (s2Var.mo18996a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7913s2
    /* renamed from: b */
    public final AbstractC7906r2 mo18995b(Class<?> cls) {
        AbstractC7913s2[] s2VarArr;
        for (AbstractC7913s2 s2Var : this.f18403a) {
            if (s2Var.mo18996a(cls)) {
                return s2Var.mo18995b(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
