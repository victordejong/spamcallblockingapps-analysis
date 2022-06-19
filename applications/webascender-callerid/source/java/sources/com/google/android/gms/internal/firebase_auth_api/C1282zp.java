package com.google.android.gms.internal.firebase_auth_api;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.zp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/zp.class */
final class C1282zp {

    /* renamed from: a */
    private final Object f3860a;

    /* renamed from: b */
    private final int f3861b;

    public C1282zp(Object obj, int i) {
        this.f3860a = obj;
        this.f3861b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1282zp)) {
            return false;
        }
        C1282zp c1282zp = (C1282zp) obj;
        return this.f3860a == c1282zp.f3860a && this.f3861b == c1282zp.f3861b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f3860a) * 65535) + this.f3861b;
    }
}
