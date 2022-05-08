package com.google.android.gms.internal.icing;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzcy.class */
final class zzcy<K> implements Iterator<Map.Entry<K, Object>> {
    private Iterator<Map.Entry<K, Object>> zzjc;

    public zzcy(Iterator<Map.Entry<K, Object>> it) {
        this.zzjc = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzjc.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zzjc.next();
        return next.getValue() instanceof zzcv ? new zzcx(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zzjc.remove();
    }
}
