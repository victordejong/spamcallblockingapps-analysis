package p131c.p161d.p266c.p269c;

import java.util.Iterator;
/* renamed from: c.d.c.c.u */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/u.class */
public abstract class AbstractC5028u<T> extends AbstractC5040z implements Iterator<T> {
    @Override // p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract Iterator<T> delegate();

    @Override // java.util.Iterator
    public boolean hasNext() {
        return delegate().hasNext();
    }

    @Override // java.util.Iterator
    public T next() {
        return delegate().next();
    }
}
