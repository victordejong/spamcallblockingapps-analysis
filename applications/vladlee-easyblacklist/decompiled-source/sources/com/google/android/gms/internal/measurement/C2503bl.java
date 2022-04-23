package com.google.android.gms.internal.measurement;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.measurement.bl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bl.class */
final class C2503bl extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f15887a;

    public C2503bl(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.f15887a = System.identityHashCode(th);
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
        C2503bl blVar = (C2503bl) obj;
        return this.f15887a == blVar.f15887a && get() == blVar.get();
    }

    public final int hashCode() {
        return this.f15887a;
    }
}
