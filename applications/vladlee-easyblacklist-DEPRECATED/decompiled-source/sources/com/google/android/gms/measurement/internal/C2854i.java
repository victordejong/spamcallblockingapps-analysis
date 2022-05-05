package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/i.class */
public final class C2854i implements Iterator<String> {

    /* renamed from: a */
    private Iterator<String> f17070a;

    /* renamed from: b */
    private final /* synthetic */ zzam f17071b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2854i(zzam zzamVar) {
        Bundle bundle;
        this.f17071b = zzamVar;
        bundle = this.f17071b.f17106a;
        this.f17070a = bundle.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f17070a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f17070a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
