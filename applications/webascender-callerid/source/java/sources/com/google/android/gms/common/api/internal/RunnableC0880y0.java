package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.C0834f;
/* renamed from: com.google.android.gms.common.api.internal.y0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/y0.class */
final class RunnableC0880y0 implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ z0 f3463f;

    RunnableC0880y0(z0 z0Var) {
        this.f3463f = z0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0834f.a.y(this.f3463f.a).g(String.valueOf(C0834f.a.r(this.f3463f.a).getClass().getName()).concat(" disconnecting because it was signed out."));
    }
}
