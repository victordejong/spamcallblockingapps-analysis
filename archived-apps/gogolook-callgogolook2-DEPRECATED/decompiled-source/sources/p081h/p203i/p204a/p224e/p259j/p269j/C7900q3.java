package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.j.q3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/q3.class */
public final class C7900q3 extends C7947w3 {

    /* renamed from: b */
    public final /* synthetic */ C7876n3 f18522b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7900q3(C7876n3 n3Var) {
        super(n3Var, null);
        this.f18522b = n3Var;
    }

    public /* synthetic */ C7900q3(C7876n3 n3Var, C7886o3 o3Var) {
        this(n3Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7947w3, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new C7893p3(this.f18522b, null);
    }
}
