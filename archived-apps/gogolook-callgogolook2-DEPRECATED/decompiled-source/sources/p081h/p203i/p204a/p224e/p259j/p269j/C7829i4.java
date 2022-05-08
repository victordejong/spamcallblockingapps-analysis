package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.Iterator;
/* renamed from: h.i.a.e.j.j.i4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/i4.class */
public final class C7829i4 implements Iterator<String> {

    /* renamed from: a */
    public Iterator<String> f18355a;

    /* renamed from: b */
    public final /* synthetic */ C7812g4 f18356b;

    public C7829i4(C7812g4 g4Var) {
        AbstractC7785d2 d2Var;
        this.f18356b = g4Var;
        d2Var = this.f18356b.f18266a;
        this.f18355a = d2Var.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f18355a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f18355a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
