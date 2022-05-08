package com.google.android.gms.internal.icing;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgt.class */
final class zzgt implements Iterator<String> {

    /* renamed from: f */
    private Iterator<String> f8113f;

    /* renamed from: g */
    private final /* synthetic */ zzgr f8114g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgt(zzgr zzgrVar) {
        zzeo zzeoVar;
        this.f8114g = zzgrVar;
        zzeoVar = this.f8114g.f8101f;
        this.f8113f = zzeoVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8113f.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f8113f.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
