package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abj.class */
final class abj extends zzdfp<T> {

    /* renamed from: a */
    private boolean f7161a;

    /* renamed from: b */
    private final /* synthetic */ Object f7162b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abj(Object obj) {
        this.f7162b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f7161a;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    public final T next() {
        if (!this.f7161a) {
            this.f7161a = true;
            return this.f7162b;
        }
        throw new NoSuchElementException();
    }
}
