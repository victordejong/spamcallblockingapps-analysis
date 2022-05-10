package p573f.p590w.p592c;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: f.w.c.g */
/* loaded from: classes2-dex2jar.jar:f/w/c/g.class */
public final class C10049g<T> implements Iterator<T> {

    /* renamed from: a */
    public int f37184a;

    /* renamed from: b */
    public final T[] f37185b;

    public C10049g(T[] tArr) {
        C10059q.m1637b(tArr, "array");
        this.f37185b = tArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f37184a < this.f37185b.length;
    }

    @Override // java.util.Iterator
    public T next() {
        try {
            T[] tArr = this.f37185b;
            int i = this.f37184a;
            this.f37184a = i + 1;
            return tArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f37184a--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
