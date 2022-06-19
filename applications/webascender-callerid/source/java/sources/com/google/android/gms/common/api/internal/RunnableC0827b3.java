package com.google.android.gms.common.api.internal;
/* renamed from: com.google.android.gms.common.api.internal.b3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/b3.class */
final class RunnableC0827b3 implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ LifecycleCallback f3371f;

    /* renamed from: g */
    private final /* synthetic */ String f3372g;

    /* renamed from: h */
    private final /* synthetic */ a3 f3373h;

    RunnableC0827b3(a3 a3Var, LifecycleCallback lifecycleCallback, String str) {
        this.f3373h = a3Var;
        this.f3371f = lifecycleCallback;
        this.f3372g = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (a3.Z0(this.f3373h) > 0) {
            this.f3371f.m3633f(a3.b1(this.f3373h) != null ? a3.b1(this.f3373h).getBundle(this.f3372g) : null);
        }
        if (a3.Z0(this.f3373h) >= 2) {
            this.f3371f.m3629j();
        }
        if (a3.Z0(this.f3373h) >= 3) {
            this.f3371f.m3631h();
        }
        if (a3.Z0(this.f3373h) >= 4) {
            this.f3371f.m3628k();
        }
        if (a3.Z0(this.f3373h) >= 5) {
            this.f3371f.m3632g();
        }
    }
}
