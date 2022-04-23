package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/alh.class */
final class alh implements Iterator<E> {

    /* renamed from: a */
    private int f7562a = 0;

    /* renamed from: b */
    private final /* synthetic */ zzdww f7563b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public alh(zzdww zzdwwVar) {
        this.f7563b = zzdwwVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f7562a < this.f7563b.f14695a.size() || this.f7563b.f14696b.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [E, java.lang.Object] */
    @Override // java.util.Iterator
    public final E next() {
        while (this.f7562a >= this.f7563b.f14695a.size()) {
            this.f7563b.f14695a.add(this.f7563b.f14696b.next());
        }
        List<E> list = this.f7563b.f14695a;
        int i = this.f7562a;
        this.f7562a = i + 1;
        return list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
