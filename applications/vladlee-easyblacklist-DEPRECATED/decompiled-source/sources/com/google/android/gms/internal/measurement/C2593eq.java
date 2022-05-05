package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* renamed from: com.google.android.gms.internal.measurement.eq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/eq.class */
final class C2593eq implements Iterator<String> {

    /* renamed from: a */
    private Iterator<String> f16068a;

    /* renamed from: b */
    private final /* synthetic */ zzia f16069b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2593eq(zzia zziaVar) {
        zzfv zzfvVar;
        this.f16069b = zziaVar;
        zzfvVar = this.f16069b.f16314a;
        this.f16068a = zzfvVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f16068a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f16068a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
