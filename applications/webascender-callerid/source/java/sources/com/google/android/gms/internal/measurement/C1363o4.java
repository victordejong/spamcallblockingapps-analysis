package com.google.android.gms.internal.measurement;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.measurement.o4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/o4.class */
final class C1363o4 extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f3939a;

    public C1363o4(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        this.f3939a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != C1363o4.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        C1363o4 c1363o4 = (C1363o4) obj;
        return this.f3939a == c1363o4.f3939a && get() == c1363o4.get();
    }

    public final int hashCode() {
        return this.f3939a;
    }
}
