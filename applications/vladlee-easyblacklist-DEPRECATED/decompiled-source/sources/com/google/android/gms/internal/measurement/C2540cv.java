package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.cv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cv.class */
final class C2540cv<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: a */
    private Iterator<Map.Entry<K, Object>> f15956a;

    public C2540cv(Iterator<Map.Entry<K, Object>> it) {
        this.f15956a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f15956a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f15956a.next();
        return next.getValue() instanceof zzfp ? new C2539cu(next, (byte) 0) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f15956a.remove();
    }
}
