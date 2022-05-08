package com.google.android.gms.internal.icing;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzen.class */
final class zzen<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: f */
    private Iterator<Map.Entry<K, Object>> f8018f;

    public zzen(Iterator<Map.Entry<K, Object>> it) {
        this.f8018f = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8018f.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f8018f.next();
        return next.getValue() instanceof zzei ? new zzek(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f8018f.remove();
    }
}
