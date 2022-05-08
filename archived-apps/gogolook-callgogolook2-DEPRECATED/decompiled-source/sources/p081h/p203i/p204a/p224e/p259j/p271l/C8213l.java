package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.Iterator;
/* renamed from: h.i.a.e.j.l.l */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/l.class */
public final class C8213l implements Iterator<String> {

    /* renamed from: a */
    public Iterator<String> f19024a;

    /* renamed from: b */
    public final /* synthetic */ C8171j f19025b;

    public C8213l(C8171j jVar) {
        AbstractC8108fa faVar;
        this.f19025b = jVar;
        faVar = this.f19025b.f18923a;
        this.f19024a = faVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f19024a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f19024a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
