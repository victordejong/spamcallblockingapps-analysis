package com.google.android.gms.internal.ads;

import java.util.ListIterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akh.class */
final class akh implements ListIterator<String> {

    /* renamed from: a */
    private ListIterator<String> f7521a;

    /* renamed from: b */
    private final /* synthetic */ int f7522b;

    /* renamed from: c */
    private final /* synthetic */ zzdut f7523c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public akh(zzdut zzdutVar, int i) {
        zzdsl zzdslVar;
        this.f7523c = zzdutVar;
        this.f7522b = i;
        zzdslVar = this.f7523c.f14591a;
        this.f7521a = zzdslVar.listIterator(this.f7522b);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f7521a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f7521a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f7521a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f7521a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f7521a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f7521a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
