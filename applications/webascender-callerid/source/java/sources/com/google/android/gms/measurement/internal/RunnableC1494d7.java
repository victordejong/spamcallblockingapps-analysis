package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.d7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/d7.class */
final class RunnableC1494d7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ C1480b7 f4213f;

    /* renamed from: g */
    final /* synthetic */ C1480b7 f4214g;

    /* renamed from: h */
    final /* synthetic */ long f4215h;

    /* renamed from: i */
    final /* synthetic */ boolean f4216i;

    /* renamed from: j */
    final /* synthetic */ j7 f4217j;

    RunnableC1494d7(j7 j7Var, C1480b7 c1480b7, C1480b7 c1480b72, long j, boolean z) {
        this.f4217j = j7Var;
        this.f4213f = c1480b7;
        this.f4214g = c1480b72;
        this.f4215h = j;
        this.f4216i = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        j7.F(this.f4217j, this.f4213f, this.f4214g, this.f4215h, this.f4216i, (Bundle) null);
    }
}
