package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
/* renamed from: com.google.android.gms.measurement.internal.f8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/f8.class */
final class RunnableC1508f8 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ i8 f4247f;

    RunnableC1508f8(i8 i8Var) {
        this.f4247f = i8Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        j8 j8Var = this.f4247f.c;
        Context b = ((l5) j8Var).a.b();
        ((l5) this.f4247f.c).a.f();
        j8.x(j8Var, new ComponentName(b, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
