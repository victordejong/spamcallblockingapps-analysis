package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
/* renamed from: com.google.android.gms.measurement.internal.gq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gq.class */
final class RunnableC2817gq implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzjb f16974a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2817gq(zzjb zzjbVar) {
        this.f16974a = zzjbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzij zzijVar = this.f16974a.f17263a;
        Context zzn = this.f16974a.f17263a.zzn();
        this.f16974a.f17263a.zzu();
        zzij.m1763a(zzijVar, new ComponentName(zzn, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
