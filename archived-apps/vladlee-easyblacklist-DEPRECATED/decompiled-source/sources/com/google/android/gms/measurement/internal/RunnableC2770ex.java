package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.ex */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ex.class */
public final class RunnableC2770ex implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f16830a;

    /* renamed from: b */
    private final /* synthetic */ zzhb f16831b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2770ex(zzhb zzhbVar, AtomicReference atomicReference) {
        this.f16831b = zzhbVar;
        this.f16830a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16831b.zzh().zza(this.f16830a);
    }
}
