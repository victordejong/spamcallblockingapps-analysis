package p033i.p064c.p066b0.p073e.p078f.p083e;

import java.util.Iterator;
import p033i.p064c.p066b0.p070b.AbstractC0449a0;
/* renamed from: i.c.b0.e.f.e.b */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/b.class */
public final class C0508b<T> implements Iterable<T> {

    /* renamed from: f */
    final AbstractC0449a0<? extends T> f1084f;

    /* renamed from: g */
    final int f1085g;

    public C0508b(AbstractC0449a0<? extends T> a0Var, int i) {
        this.f1084f = a0Var;
        this.f1085g = i;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a(this.f1085g);
        this.f1084f.subscribe(aVar);
        return aVar;
    }
}
