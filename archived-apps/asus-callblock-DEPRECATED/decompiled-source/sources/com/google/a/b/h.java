package com.google.a.b;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/a/b/h.class */
final class h extends o<Object> {

    /* renamed from: a  reason: collision with root package name */
    static final h f3697a = new h();

    /* renamed from: b  reason: collision with root package name */
    private static final Object[] f3698b = new Object[0];

    private h() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.a.b.k
    public final boolean a() {
        return false;
    }

    @Override // com.google.a.b.o, com.google.a.b.k
    public final ae<Object> b() {
        return q.a();
    }

    @Override // com.google.a.b.o
    final boolean c() {
        return true;
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return false;
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public final boolean containsAll(Collection<?> collection) {
        return collection.isEmpty();
    }

    @Override // com.google.a.b.o, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        return obj instanceof Set ? ((Set) obj).isEmpty() : false;
    }

    @Override // com.google.a.b.o, java.util.Collection, java.util.Set
    public final int hashCode() {
        return 0;
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return true;
    }

    @Override // com.google.a.b.o, com.google.a.b.k, java.util.Collection, java.lang.Iterable, java.util.List
    public final /* synthetic */ Iterator iterator() {
        return q.a();
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return 0;
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return f3698b;
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
