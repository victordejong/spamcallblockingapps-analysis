package p037i.p065c.p067b0.p074e.p079f.p084e;

import java.util.Iterator;
import p037i.p065c.p067b0.p071b.AbstractC0469a0;
import p037i.p065c.p067b0.p071b.AbstractC0473c0;
/* renamed from: i.c.b0.e.f.e.d */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/d.class */
public final class C0531d<T> implements Iterable<T> {

    /* renamed from: f */
    final AbstractC0469a0<T> f1214f;

    /* renamed from: g */
    final T f1215g;

    public C0531d(AbstractC0469a0<T> a0Var, T t) {
        this.f1214f = a0Var;
        this.f1215g = t;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        AbstractC0473c0<? super T> aVar = new a<>(this.f1215g);
        this.f1214f.subscribe(aVar);
        return aVar.b();
    }
}
