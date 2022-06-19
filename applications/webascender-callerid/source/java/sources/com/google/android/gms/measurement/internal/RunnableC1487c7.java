package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.c7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/c7.class */
final class RunnableC1487c7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ Bundle f4197f;

    /* renamed from: g */
    final /* synthetic */ C1480b7 f4198g;

    /* renamed from: h */
    final /* synthetic */ C1480b7 f4199h;

    /* renamed from: i */
    final /* synthetic */ long f4200i;

    /* renamed from: j */
    final /* synthetic */ j7 f4201j;

    RunnableC1487c7(j7 j7Var, Bundle bundle, C1480b7 c1480b7, C1480b7 c1480b72, long j) {
        this.f4201j = j7Var;
        this.f4197f = bundle;
        this.f4198g = c1480b7;
        this.f4199h = c1480b72;
        this.f4200i = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        j7.E(this.f4201j, this.f4197f, this.f4198g, this.f4199h, this.f4200i);
    }
}
