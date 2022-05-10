package p131c.p161d.p266c.p269c;

import com.google.common.collect.Iterators;
import com.google.common.collect.Multisets;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
/* renamed from: c.d.c.c.y */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/y.class */
public abstract class AbstractC5036y<E> extends AbstractC5022s<E> implements AbstractC4997j0<E> {
    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    public int add(E e, int i) {
        return delegate().add(e, i);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    public int count(Object obj) {
        return delegate().count(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract AbstractC4997j0<E> delegate();

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract /* bridge */ /* synthetic */ Object delegate();

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract /* bridge */ /* synthetic */ Collection delegate();

    public abstract Set<E> elementSet();

    public abstract Set<AbstractC4997j0.AbstractC4998a<E>> entrySet();

    @Override // java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    public boolean equals(Object obj) {
        return obj == this || delegate().equals(obj);
    }

    @Override // java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    public int hashCode() {
        return delegate().hashCode();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    public int remove(Object obj, int i) {
        return delegate().remove(obj, i);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    public int setCount(E e, int i) {
        return delegate().setCount(e, i);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    public boolean setCount(E e, int i, int i2) {
        return delegate().setCount(e, i, i2);
    }

    public boolean standardAdd(E e) {
        add(e, 1);
        return true;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s
    public boolean standardAddAll(Collection<? extends E> collection) {
        return Multisets.m8086a((AbstractC4997j0) this, (Collection) collection);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s
    public void standardClear() {
        Iterators.m8258b(entrySet().iterator());
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s
    public boolean standardContains(Object obj) {
        return count(obj) > 0;
    }

    public int standardCount(Object obj) {
        for (AbstractC4997j0.AbstractC4998a<E> aVar : entrySet()) {
            if (C4928k.m24808a(aVar.getElement(), obj)) {
                return aVar.getCount();
            }
        }
        return 0;
    }

    public boolean standardEquals(Object obj) {
        return Multisets.m8089a(this, obj);
    }

    public int standardHashCode() {
        return entrySet().hashCode();
    }

    public Iterator<E> standardIterator() {
        return Multisets.m8092a((AbstractC4997j0) this);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s
    public boolean standardRemove(Object obj) {
        boolean z = true;
        if (remove(obj, 1) <= 0) {
            z = false;
        }
        return z;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s
    public boolean standardRemoveAll(Collection<?> collection) {
        return Multisets.m8080b(this, collection);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s
    public boolean standardRetainAll(Collection<?> collection) {
        return Multisets.m8077c(this, collection);
    }

    public int standardSetCount(E e, int i) {
        return Multisets.m8088a(this, e, i);
    }

    public boolean standardSetCount(E e, int i, int i2) {
        return Multisets.m8087a(this, e, i, i2);
    }

    public int standardSize() {
        return Multisets.m8081b((AbstractC4997j0<?>) this);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s
    public String standardToString() {
        return entrySet().toString();
    }
}
