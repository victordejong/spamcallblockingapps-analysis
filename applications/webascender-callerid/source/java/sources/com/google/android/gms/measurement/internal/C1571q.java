package com.google.android.gms.measurement.internal;

import java.util.Iterator;
/* renamed from: com.google.android.gms.measurement.internal.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/q.class */
final class C1571q implements Iterator<String> {

    /* renamed from: f */
    final Iterator<String> f4448f;

    /* renamed from: g */
    final /* synthetic */ r f4449g;

    C1571q(r rVar) {
        this.f4449g = rVar;
        this.f4448f = r.E1(rVar).keySet().iterator();
    }

    /* renamed from: a */
    public final String next() {
        return this.f4448f.next();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f4448f.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
