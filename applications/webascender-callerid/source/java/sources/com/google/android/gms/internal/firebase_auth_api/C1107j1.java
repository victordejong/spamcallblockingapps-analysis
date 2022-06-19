package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.k1;
import java.util.Iterator;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.j1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/j1.class */
final class C1107j1 implements Iterator<String> {

    /* renamed from: f */
    final Iterator<String> f3736f;

    /* renamed from: g */
    final /* synthetic */ k1 f3737g;

    C1107j1(k1 k1Var) {
        this.f3737g = k1Var;
        this.f3736f = k1.c(k1Var).iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3736f.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.f3736f.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
