package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aii.class */
final class aii<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: a */
    private Iterator<Map.Entry<K, Object>> f7419a;

    public aii(Iterator<Map.Entry<K, Object>> it) {
        this.f7419a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f7419a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f7419a.next();
        return next.getValue() instanceof zzdsf ? new aih(next, (byte) 0) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f7419a.remove();
    }
}
