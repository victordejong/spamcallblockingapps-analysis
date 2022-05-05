package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.ey */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ey.class */
public final class RunnableC2771ey implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f16832a;

    /* renamed from: b */
    private final /* synthetic */ boolean f16833b;

    /* renamed from: c */
    private final /* synthetic */ zzhb f16834c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2771ey(zzhb zzhbVar, AtomicReference atomicReference, boolean z) {
        this.f16834c = zzhbVar;
        this.f16832a = atomicReference;
        this.f16833b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16834c.zzh().m1757a(this.f16832a, this.f16833b);
    }
}
