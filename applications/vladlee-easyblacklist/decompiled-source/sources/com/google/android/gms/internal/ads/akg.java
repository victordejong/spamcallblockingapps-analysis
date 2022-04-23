package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akg.class */
final class akg implements Iterator<String> {

    /* renamed from: a */
    private Iterator<String> f7519a;

    /* renamed from: b */
    private final /* synthetic */ zzdut f7520b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public akg(zzdut zzdutVar) {
        zzdsl zzdslVar;
        this.f7520b = zzdutVar;
        zzdslVar = this.f7520b.f14591a;
        this.f7519a = zzdslVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f7519a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f7519a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
