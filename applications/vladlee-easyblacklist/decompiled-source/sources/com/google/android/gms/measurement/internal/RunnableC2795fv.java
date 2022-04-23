package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.fv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fv.class */
public final class RunnableC2795fv implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzif f16897a;

    /* renamed from: b */
    private final /* synthetic */ zzii f16898b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2795fv(zzii zziiVar, zzif zzifVar) {
        this.f16898b = zziiVar;
        this.f16897a = zzifVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzii.m1772a(this.f16898b, this.f16897a, false);
        zzii zziiVar = this.f16898b;
        zziiVar.f17250a = null;
        zziiVar.zzh().m1765a((zzif) null);
    }
}
