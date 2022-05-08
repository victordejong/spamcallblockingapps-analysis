package com.google.a.b;

import com.google.a.a.d;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/a/b/f.class */
public final class f extends m<Object> {

    /* renamed from: a  reason: collision with root package name */
    static final f f3694a = new f();

    /* renamed from: b  reason: collision with root package name */
    static final af<Object> f3695b = new af<Object>() { // from class: com.google.a.b.f.1
        @Override // java.util.Iterator, java.util.ListIterator
        public final boolean hasNext() {
            return false;
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return false;
        }

        @Override // java.util.Iterator, java.util.ListIterator
        public final Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return 0;
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return -1;
        }
    };
    private static final Object[] d = new Object[0];

    private f() {
    }

    @Override // com.google.a.b.m
    /* renamed from: a */
    public final af<Object> listIterator(int i) {
        d.b(i, 0);
        return f3695b;
    }

    @Override // com.google.a.b.m
    public final m<Object> a(int i, int i2) {
        d.a(i, i2, 0);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.a.b.k
    public final boolean a() {
        return false;
    }

    @Override // com.google.a.b.m, com.google.a.b.k
    public final ae<Object> b() {
        return q.a();
    }

    @Override // com.google.a.b.m
    public final af<Object> c() {
        return f3695b;
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return false;
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public final boolean containsAll(Collection<?> collection) {
        return collection.isEmpty();
    }

    @Override // com.google.a.b.m, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        return obj instanceof List ? ((List) obj).isEmpty() : false;
    }

    @Override // java.util.List
    public final Object get(int i) {
        d.a(i, 0);
        throw new AssertionError("unreachable");
    }

    @Override // com.google.a.b.m, java.util.Collection, java.util.List
    public final int hashCode() {
        return 1;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        return -1;
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return true;
    }

    @Override // com.google.a.b.m, com.google.a.b.k, java.util.Collection, java.lang.Iterable, java.util.List
    public final /* synthetic */ Iterator iterator() {
        return q.a();
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        return -1;
    }

    @Override // com.google.a.b.m, java.util.List
    public final /* bridge */ /* synthetic */ ListIterator listIterator() {
        return f3695b;
    }

    @Override // java.util.Collection, java.util.List
    public final int size() {
        return 0;
    }

    @Override // com.google.a.b.m, java.util.List
    public final /* synthetic */ List subList(int i, int i2) {
        d.a(i, i2, 0);
        return this;
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return d;
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public final <T> T[] toArray(T[] tArr) {
        if (tArr.length > 0) {
            tArr[0] = null;
        }
        return tArr;
    }

    @Override // com.google.a.b.k
    public final String toString() {
        return "[]";
    }
}
