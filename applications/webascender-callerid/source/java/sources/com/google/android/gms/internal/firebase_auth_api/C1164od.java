package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.od;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.od */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/od.class */
final class C1164od extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f3766a;

    public C1164od(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        this.f3766a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != od.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        C1164od c1164od = (C1164od) obj;
        return this.f3766a == c1164od.f3766a && get() == c1164od.get();
    }

    public final int hashCode() {
        return this.f3766a;
    }
}
