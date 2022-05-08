package com.google.android.gms.internal.ads;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agw.class */
final class agw extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f7341a;

    public agw(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.f7341a = System.identityHashCode(th);
            return;
        }
        throw new NullPointerException("The referent cannot be null");
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        agw agwVar = (agw) obj;
        return this.f7341a == agwVar.f7341a && get() == agwVar.get();
    }

    public final int hashCode() {
        return this.f7341a;
    }
}
