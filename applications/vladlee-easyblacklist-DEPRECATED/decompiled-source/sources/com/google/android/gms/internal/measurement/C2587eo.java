package com.google.android.gms.internal.measurement;

import java.util.ListIterator;
/* renamed from: com.google.android.gms.internal.measurement.eo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/eo.class */
final class C2587eo implements ListIterator<String> {

    /* renamed from: a */
    private ListIterator<String> f16040a;

    /* renamed from: b */
    private final /* synthetic */ int f16041b;

    /* renamed from: c */
    private final /* synthetic */ zzia f16042c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2587eo(zzia zziaVar, int i) {
        zzfv zzfvVar;
        this.f16042c = zziaVar;
        this.f16041b = i;
        zzfvVar = this.f16042c.f16314a;
        this.f16040a = zzfvVar.listIterator(this.f16041b);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f16040a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f16040a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f16040a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f16040a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f16040a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f16040a.previousIndex();
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
