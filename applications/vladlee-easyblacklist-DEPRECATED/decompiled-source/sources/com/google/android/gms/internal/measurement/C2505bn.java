package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.bn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bn.class */
final class C2505bn extends AbstractC2502bk {

    /* renamed from: a */
    private final C2504bm f15890a = new C2504bm();

    @Override // com.google.android.gms.internal.measurement.AbstractC2502bk
    /* renamed from: a */
    public final void mo2314a(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        } else if (th2 != null) {
            this.f15890a.m2917a(th).add(th2);
        } else {
            throw new NullPointerException("The suppressed exception cannot be null.");
        }
    }
}
