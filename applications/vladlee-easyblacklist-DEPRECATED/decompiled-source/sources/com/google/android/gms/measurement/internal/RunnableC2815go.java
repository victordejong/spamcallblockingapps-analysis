package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
/* renamed from: com.google.android.gms.measurement.internal.go */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/go.class */
final class RunnableC2815go implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ ComponentName f16970a;

    /* renamed from: b */
    private final /* synthetic */ zzjb f16971b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2815go(zzjb zzjbVar, ComponentName componentName) {
        this.f16971b = zzjbVar;
        this.f16970a = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzij.m1763a(this.f16971b.f17263a, this.f16970a);
    }
}
