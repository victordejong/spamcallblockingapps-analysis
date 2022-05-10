package p131c.p161d.p170b.p224d.p252g.p258f;

import java.util.Iterator;
import java.util.Map;
/* renamed from: c.d.b.d.g.f.u4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/u4.class */
public final class C4601u4 extends C4459a5 {

    /* renamed from: b */
    public final /* synthetic */ C4567p4 f16905b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4601u4(C4567p4 p4Var) {
        super(p4Var, null);
        this.f16905b = p4Var;
    }

    public /* synthetic */ C4601u4(C4567p4 p4Var, C4588s4 s4Var) {
        this(p4Var);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4459a5, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new C4581r4(this.f16905b, null);
    }
}
