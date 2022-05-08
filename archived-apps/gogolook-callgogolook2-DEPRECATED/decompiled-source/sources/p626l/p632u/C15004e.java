package p626l.p632u;

import androidx.lifecycle.SavedStateHandle;
import java.util.Collection;
import java.util.Iterator;
import p626l.p641z.p643d.C15132b;
import p626l.p641z.p643d.C15144f;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.p644e0.AbstractC15141a;
/* renamed from: l.u.e */
/* loaded from: classes3-dex2jar.jar:l/u/e.class */
public final class C15004e<T> implements Collection<T>, AbstractC15141a {

    /* renamed from: a */
    public final T[] f33035a;

    /* renamed from: b */
    public final boolean f33036b;

    public C15004e(T[] tArr, boolean z) {
        C15149k.m377b(tArr, SavedStateHandle.VALUES);
        this.f33035a = tArr;
        this.f33036b = z;
    }

    @Override // java.util.Collection
    public boolean add(T t) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: b */
    public int m630b() {
        return this.f33035a.length;
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return C15013i.m580b(this.f33035a, obj);
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<? extends Object> collection) {
        boolean z;
        C15149k.m377b(collection, "elements");
        if (!collection.isEmpty()) {
            Iterator<T> it = collection.iterator();
            while (true) {
                z = true;
                if (it.hasNext()) {
                    if (!contains(it.next())) {
                        z = false;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            z = true;
        }
        return z;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.f33035a.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return C15132b.m411a(this.f33035a);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return m630b();
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return C15020l.m566a(this.f33035a, this.f33036b);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) C15144f.m391a(this, tArr);
    }
}
