package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abd.class */
abstract class abd<E> extends zzdfo<E> {

    /* renamed from: a */
    private final int f7151a;

    /* renamed from: b */
    private int f7152b;

    /* JADX INFO: Access modifiers changed from: protected */
    public abd(int i, int i2) {
        zzdei.zzt(i2, i);
        this.f7151a = i;
        this.f7152b = i2;
    }

    /* renamed from: a */
    protected abstract E mo5497a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f7152b < this.f7151a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f7152b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i = this.f7152b;
            this.f7152b = i + 1;
            return mo5497a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f7152b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i = this.f7152b - 1;
            this.f7152b = i;
            return mo5497a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f7152b - 1;
    }
}
