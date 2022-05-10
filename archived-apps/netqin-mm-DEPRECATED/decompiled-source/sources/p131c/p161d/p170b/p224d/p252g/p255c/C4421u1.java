package p131c.p161d.p170b.p224d.p252g.p255c;

import java.util.Iterator;
import java.util.Map;
/* renamed from: c.d.b.d.g.c.u1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/u1.class */
public final class C4421u1 extends C4318a2 {

    /* renamed from: b */
    public final /* synthetic */ C4406r1 f16640b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4421u1(C4406r1 r1Var) {
        super(r1Var, null);
        this.f16640b = r1Var;
    }

    public /* synthetic */ C4421u1(C4406r1 r1Var, C4411s1 s1Var) {
        this(r1Var);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4318a2, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new C4416t1(this.f16640b, null);
    }
}
