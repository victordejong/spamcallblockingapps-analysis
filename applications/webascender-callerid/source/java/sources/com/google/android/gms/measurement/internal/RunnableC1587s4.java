package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.s4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/s4.class */
final /* synthetic */ class RunnableC1587s4 implements Runnable {

    /* renamed from: f */
    private final k5 f4494f;

    /* renamed from: g */
    private final String f4495g;

    /* renamed from: h */
    private final Bundle f4496h;

    RunnableC1587s4(k5 k5Var, String str, Bundle bundle) {
        this.f4494f = k5Var;
        this.f4495g = str;
        this.f4496h = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4494f.F(this.f4495g, this.f4496h);
    }
}
