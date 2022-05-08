package p626l.p641z.p643d;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p626l.p641z.p643d.p644e0.AbstractC15141a;
/* renamed from: l.z.d.a */
/* loaded from: classes3-dex2jar.jar:l/z/d/a.class */
public final class C15130a<T> implements Iterator<T>, AbstractC15141a {

    /* renamed from: a */
    public int f33129a;

    /* renamed from: b */
    public final T[] f33130b;

    public C15130a(T[] tArr) {
        C15149k.m377b(tArr, "array");
        this.f33130b = tArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f33129a < this.f33130b.length;
    }

    @Override // java.util.Iterator
    public T next() {
        try {
            T[] tArr = this.f33130b;
            int i = this.f33129a;
            this.f33129a = i + 1;
            return tArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f33129a--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
