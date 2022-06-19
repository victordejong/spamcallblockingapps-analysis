package com.google.android.gms.common.api.internal;
/* renamed from: com.google.android.gms.common.api.internal.y2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/y2.class */
final class RunnableC0881y2 implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ LifecycleCallback f3464f;

    /* renamed from: g */
    private final /* synthetic */ String f3465g;

    /* renamed from: h */
    private final /* synthetic */ z2 f3466h;

    RunnableC0881y2(z2 z2Var, LifecycleCallback lifecycleCallback, String str) {
        this.f3466h = z2Var;
        this.f3464f = lifecycleCallback;
        this.f3465g = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (z2.a(this.f3466h) > 0) {
            this.f3464f.m3633f(z2.c(this.f3466h) != null ? z2.c(this.f3466h).getBundle(this.f3465g) : null);
        }
        if (z2.a(this.f3466h) >= 2) {
            this.f3464f.m3629j();
        }
        if (z2.a(this.f3466h) >= 3) {
            this.f3464f.m3631h();
        }
        if (z2.a(this.f3466h) >= 4) {
            this.f3464f.m3628k();
        }
        if (z2.a(this.f3466h) >= 5) {
            this.f3464f.m3632g();
        }
    }
}
