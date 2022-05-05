package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.dz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/dz.class */
public final class RunnableC2745dz implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzhc f16759a;

    /* renamed from: b */
    private final /* synthetic */ zzga f16760b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2745dz(zzga zzgaVar, zzhc zzhcVar) {
        this.f16760b = zzgaVar;
        this.f16759a = zzhcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzga.m1809a(this.f16760b, this.f16759a);
        this.f16760b.m1814a();
    }
}
