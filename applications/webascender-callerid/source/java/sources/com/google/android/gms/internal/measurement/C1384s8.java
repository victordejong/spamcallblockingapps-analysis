package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* renamed from: com.google.android.gms.internal.measurement.s8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/s8.class */
final class C1384s8 implements Iterator<String> {

    /* renamed from: f */
    final Iterator<String> f3958f;

    /* renamed from: g */
    final /* synthetic */ t8 f3959g;

    C1384s8(t8 t8Var) {
        this.f3959g = t8Var;
        this.f3958f = t8.c(t8Var).iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3958f.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.f3958f.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
