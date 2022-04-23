package p037i.p065c.p067b0.p074e.p079f.p084e;

import i.c.b0.b.v;
import java.util.Iterator;
import p037i.p065c.p067b0.p071b.AbstractC0469a0;
/* renamed from: i.c.b0.e.f.e.c */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/c.class */
public final class C0530c<T> implements Iterable<T> {

    /* renamed from: f */
    final AbstractC0469a0<T> f1211f;

    public C0530c(AbstractC0469a0<T> a0Var) {
        this.f1211f = a0Var;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a();
        v.wrap(this.f1211f).materialize().subscribe(aVar);
        return aVar;
    }
}
