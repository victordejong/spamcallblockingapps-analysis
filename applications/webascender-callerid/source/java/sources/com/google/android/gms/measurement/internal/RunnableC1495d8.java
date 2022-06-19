package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
/* renamed from: com.google.android.gms.measurement.internal.d8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/d8.class */
final class RunnableC1495d8 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ ComponentName f4218f;

    /* renamed from: g */
    final /* synthetic */ i8 f4219g;

    RunnableC1495d8(i8 i8Var, ComponentName componentName) {
        this.f4219g = i8Var;
        this.f4218f = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        j8.x(this.f4219g.c, this.f4218f);
    }
}
