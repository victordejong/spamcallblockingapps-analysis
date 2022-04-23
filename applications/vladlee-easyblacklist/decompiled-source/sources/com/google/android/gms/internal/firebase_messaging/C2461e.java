package com.google.android.gms.internal.firebase_messaging;
/* renamed from: com.google.android.gms.internal.firebase_messaging.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/e.class */
final class C2461e extends AbstractC2458b {

    /* renamed from: a */
    private final C2460d f15822a = new C2460d();

    @Override // com.google.android.gms.internal.firebase_messaging.AbstractC2458b
    /* renamed from: a */
    public final void mo2924a(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        } else if (th2 != null) {
            this.f15822a.m2926a(th).add(th2);
        } else {
            throw new NullPointerException("The suppressed exception cannot be null.");
        }
    }
}
