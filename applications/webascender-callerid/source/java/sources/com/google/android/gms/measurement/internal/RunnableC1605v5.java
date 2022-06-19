package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.v5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/v5.class */
final /* synthetic */ class RunnableC1605v5 implements Runnable {

    /* renamed from: f */
    private final u6 f4538f;

    /* renamed from: g */
    private final Bundle f4539g;

    RunnableC1605v5(u6 u6Var, Bundle bundle) {
        this.f4538f = u6Var;
        this.f4539g = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4538f.H(this.f4539g);
    }
}
