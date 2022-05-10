package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4969d;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.C5002l0;
import p131c.p161d.p266c.p269c.C5006n;
import p131c.p161d.p266c.p269c.C5023s0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultiset.class */
public abstract class AbstractMapBasedMultiset<E> extends AbstractC4969d<E> implements Serializable {
    public static final long serialVersionUID = 0;
    public transient C5002l0<E> backingMap;
    public transient long size;

    /* renamed from: com.google.common.collect.AbstractMapBasedMultiset$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultiset$a.class */
    public class C7419a extends AbstractMapBasedMultiset<E>.AbstractC7421c<E> {
        public C7419a() {
            super();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultiset.AbstractC7421c
        /* renamed from: a */
        public E mo8434a(int i) {
            return AbstractMapBasedMultiset.this.backingMap.m24688c(i);
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultiset$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultiset$b.class */
    public class C7420b extends AbstractMapBasedMultiset<E>.AbstractC7421c<AbstractC4997j0.AbstractC4998a<E>> {
        public C7420b() {
            super();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultiset.AbstractC7421c
        /* renamed from: a */
        public AbstractC4997j0.AbstractC4998a<E> mo8434a(int i) {
            return AbstractMapBasedMultiset.this.backingMap.m24694b(i);
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultiset$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultiset$c.class */
    public abstract class AbstractC7421c<T> implements Iterator<T> {

        /* renamed from: a */
        public int f30456a;

        /* renamed from: b */
        public int f30457b = -1;

        /* renamed from: c */
        public int f30458c;

        public AbstractC7421c() {
            this.f30456a = AbstractMapBasedMultiset.this.backingMap.mo24672b();
            this.f30458c = AbstractMapBasedMultiset.this.backingMap.f17619d;
        }

        /* renamed from: a */
        public abstract T mo8434a(int i);

        /* renamed from: a */
        public final void m8435a() {
            if (AbstractMapBasedMultiset.this.backingMap.f17619d != this.f30458c) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            m8435a();
            return this.f30456a >= 0;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T a = mo8434a(this.f30456a);
                int i = this.f30456a;
                this.f30457b = i;
                this.f30456a = AbstractMapBasedMultiset.this.backingMap.mo24667f(i);
                return a;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            AbstractMapBasedMultiset abstractMapBasedMultiset;
            m8435a();
            C5006n.m24660a(this.f30457b != -1);
            AbstractMapBasedMultiset.this.size -= abstractMapBasedMultiset.backingMap.m24683g(this.f30457b);
            this.f30456a = AbstractMapBasedMultiset.this.backingMap.mo24674a(this.f30456a, this.f30457b);
            this.f30457b = -1;
            this.f30458c = AbstractMapBasedMultiset.this.backingMap.f17619d;
        }
    }

    public AbstractMapBasedMultiset(int i) {
        init(i);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int a = C5023s0.m24621a(objectInputStream);
        init(3);
        C5023s0.m24623a(this, objectInputStream, a);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        C5023s0.m24622a(this, objectOutputStream);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public final int add(E e, int i) {
        if (i == 0) {
            return count(e);
        }
        boolean z = true;
        C4933n.m24787a(i > 0, "occurrences cannot be negative: %s", i);
        int b = this.backingMap.m24691b(e);
        if (b == -1) {
            this.backingMap.m24695a((C5002l0<E>) e, i);
            this.size += i;
            return 0;
        }
        int d = this.backingMap.m24685d(b);
        long j = d;
        long j2 = i;
        long j3 = j + j2;
        if (j3 > 2147483647L) {
            z = false;
        }
        C4933n.m24785a(z, "too many occurrences: %s", j3);
        this.backingMap.m24693b(b, (int) j3);
        this.size += j2;
        return d;
    }

    public void addTo(AbstractC4997j0<? super E> j0Var) {
        C4933n.m24795a(j0Var);
        int b = this.backingMap.mo24672b();
        while (b >= 0) {
            j0Var.add((E) this.backingMap.m24688c(b), this.backingMap.m24685d(b));
            b = this.backingMap.mo24667f(b);
        }
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.backingMap.mo24676a();
        this.size = 0L;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    public final int count(Object obj) {
        return this.backingMap.m24696a(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d
    public final int distinctElements() {
        return this.backingMap.m24686d();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d
    public final Iterator<E> elementIterator() {
        return new C7419a();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d
    public final Iterator<AbstractC4997j0.AbstractC4998a<E>> entryIterator() {
        return new C7420b();
    }

    public abstract void init(int i);

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, p131c.p161d.p266c.p269c.AbstractC4997j0
    public final Iterator<E> iterator() {
        return Multisets.m8092a((AbstractC4997j0) this);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public final int remove(Object obj, int i) {
        if (i == 0) {
            return count(obj);
        }
        C4933n.m24787a(i > 0, "occurrences cannot be negative: %s", i);
        int b = this.backingMap.m24691b(obj);
        if (b == -1) {
            return 0;
        }
        int d = this.backingMap.m24685d(b);
        if (d > i) {
            this.backingMap.m24693b(b, d - i);
        } else {
            this.backingMap.m24683g(b);
            i = d;
        }
        this.size -= i;
        return d;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public final int setCount(E e, int i) {
        C5006n.m24663a(i, "count");
        C5002l0<E> l0Var = this.backingMap;
        int c = i == 0 ? l0Var.m24687c(e) : l0Var.m24695a((C5002l0<E>) e, i);
        this.size += i - c;
        return c;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public final boolean setCount(E e, int i, int i2) {
        C5006n.m24663a(i, "oldCount");
        C5006n.m24663a(i2, "newCount");
        int b = this.backingMap.m24691b(e);
        if (b == -1) {
            if (i != 0) {
                return false;
            }
            if (i2 <= 0) {
                return true;
            }
            this.backingMap.m24695a((C5002l0<E>) e, i2);
            this.size += i2;
            return true;
        } else if (this.backingMap.m24685d(b) != i) {
            return false;
        } else {
            if (i2 == 0) {
                this.backingMap.m24683g(b);
                this.size -= i;
                return true;
            }
            this.backingMap.m24693b(b, i2);
            this.size += i2 - i;
            return true;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    public final int size() {
        return Ints.m7808b(this.size);
    }
}
