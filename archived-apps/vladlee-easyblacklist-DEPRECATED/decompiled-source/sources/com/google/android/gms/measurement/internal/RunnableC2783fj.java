package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.fj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fj.class */
public final class RunnableC2783fj implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ boolean f16866a;

    /* renamed from: b */
    private final /* synthetic */ zzhb f16867b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2783fj(zzhb zzhbVar, boolean z) {
        this.f16867b = zzhbVar;
        this.f16866a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zzab = this.f16867b.f16804x.zzab();
        boolean zzaa = this.f16867b.f16804x.zzaa();
        this.f16867b.f16804x.m1808a(this.f16866a);
        if (zzaa == this.f16866a) {
            this.f16867b.f16804x.zzr().zzx().zza("Default data collection state already set to", Boolean.valueOf(this.f16866a));
        }
        if (this.f16867b.f16804x.zzab() == zzab || this.f16867b.f16804x.zzab() != this.f16867b.f16804x.zzaa()) {
            this.f16867b.f16804x.zzr().zzk().zza("Default data collection is different than actual status", Boolean.valueOf(this.f16866a), Boolean.valueOf(zzab));
        }
        this.f16867b.m1778e();
    }
}
