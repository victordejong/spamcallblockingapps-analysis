package p033i.p064c.p066b0.p073e.p078f.p083e;

import i.c.b0.b.v;
import java.util.Iterator;
import p033i.p064c.p066b0.p070b.AbstractC0449a0;
/* renamed from: i.c.b0.e.f.e.c */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/c.class */
public final class C0510c<T> implements Iterable<T> {

    /* renamed from: f */
    final AbstractC0449a0<T> f1086f;

    public C0510c(AbstractC0449a0<T> a0Var) {
        this.f1086f = a0Var;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a();
        v.wrap(this.f1086f).materialize().subscribe(aVar);
        return aVar;
    }
}
