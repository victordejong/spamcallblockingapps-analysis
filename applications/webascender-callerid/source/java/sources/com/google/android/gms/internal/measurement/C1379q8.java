package com.google.android.gms.internal.measurement;

import java.util.ListIterator;
/* renamed from: com.google.android.gms.internal.measurement.q8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/q8.class */
final class C1379q8 implements ListIterator<String> {

    /* renamed from: f */
    final ListIterator<String> f3953f;

    /* renamed from: g */
    final /* synthetic */ int f3954g;

    /* renamed from: h */
    final /* synthetic */ t8 f3955h;

    C1379q8(t8 t8Var, int i) {
        this.f3955h = t8Var;
        this.f3954g = i;
        this.f3953f = t8.c(t8Var).listIterator(i);
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f3953f.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f3953f.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return this.f3953f.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f3953f.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ String previous() {
        return this.f3953f.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f3953f.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
