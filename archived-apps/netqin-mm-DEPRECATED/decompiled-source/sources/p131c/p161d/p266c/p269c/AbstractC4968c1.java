package p131c.p161d.p266c.p269c;

import java.util.Iterator;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.c.c1 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/c1.class */
public abstract class AbstractC4968c1<F, T> implements Iterator<T> {

    /* renamed from: a */
    public final Iterator<? extends F> f17599a;

    public AbstractC4968c1(Iterator<? extends F> it) {
        C4933n.m24795a(it);
        this.f17599a = it;
    }

    /* renamed from: a */
    public abstract T mo8028a(F f);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f17599a.hasNext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Iterator
    public final T next() {
        return (T) mo8028a(this.f17599a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f17599a.remove();
    }
}
