package com.google.android.gms.internal.firebase_messaging;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzp.class */
final class zzp extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f7856a;

    public zzp(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.f7856a = System.identityHashCode(th);
            return;
        }
        throw new NullPointerException("The referent cannot be null");
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != zzp.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzp zzpVar = (zzp) obj;
        return this.f7856a == zzpVar.f7856a && get() == zzpVar.get();
    }

    public final int hashCode() {
        return this.f7856a;
    }
}
