package com.google.android.gms.internal.firebase_messaging;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.firebase_messaging.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/c.class */
final class C2459c extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f15819a;

    public C2459c(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.f15819a = System.identityHashCode(th);
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
        C2459c cVar = (C2459c) obj;
        return this.f15819a == cVar.f15819a && get() == cVar.get();
    }

    public final int hashCode() {
        return this.f15819a;
    }
}
