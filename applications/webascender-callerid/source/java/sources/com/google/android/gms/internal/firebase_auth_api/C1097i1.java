package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.k1;
import java.util.ListIterator;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.i1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/i1.class */
final class C1097i1 implements ListIterator<String> {

    /* renamed from: f */
    final ListIterator<String> f3727f;

    /* renamed from: g */
    final /* synthetic */ int f3728g;

    /* renamed from: h */
    final /* synthetic */ k1 f3729h;

    C1097i1(k1 k1Var, int i) {
        this.f3729h = k1Var;
        this.f3728g = i;
        this.f3727f = k1.c(k1Var).listIterator(i);
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f3727f.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f3727f.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return this.f3727f.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f3727f.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ String previous() {
        return this.f3727f.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f3727f.previousIndex();
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
