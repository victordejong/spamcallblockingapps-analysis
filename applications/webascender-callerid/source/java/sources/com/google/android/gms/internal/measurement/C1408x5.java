package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.x5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/x5.class */
final class C1408x5 {

    /* renamed from: a */
    private final Object f3975a;

    /* renamed from: b */
    private final int f3976b;

    public C1408x5(Object obj, int i) {
        this.f3975a = obj;
        this.f3976b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1408x5)) {
            return false;
        }
        C1408x5 c1408x5 = (C1408x5) obj;
        return this.f3975a == c1408x5.f3975a && this.f3976b == c1408x5.f3976b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f3975a) * 65535) + this.f3976b;
    }
}
