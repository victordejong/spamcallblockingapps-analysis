package p037i.p065c.p067b0.p074e.p079f.p084e;

import java.util.Iterator;
import p037i.p065c.p067b0.p071b.AbstractC0469a0;
/* renamed from: i.c.b0.e.f.e.b */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/b.class */
public final class C0528b<T> implements Iterable<T> {

    /* renamed from: f */
    final AbstractC0469a0<? extends T> f1209f;

    /* renamed from: g */
    final int f1210g;

    public C0528b(AbstractC0469a0<? extends T> a0Var, int i) {
        this.f1209f = a0Var;
        this.f1210g = i;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a(this.f1210g);
        this.f1209f.subscribe(aVar);
        return aVar;
    }
}
