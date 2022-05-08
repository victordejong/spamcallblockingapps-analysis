package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.fu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fu.class */
public final class RunnableC2794fu implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ boolean f16893a;

    /* renamed from: b */
    private final /* synthetic */ zzif f16894b;

    /* renamed from: c */
    private final /* synthetic */ zzif f16895c;

    /* renamed from: d */
    private final /* synthetic */ zzii f16896d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2794fu(zzii zziiVar, boolean z, zzif zzifVar, zzif zzifVar2) {
        this.f16896d = zziiVar;
        this.f16893a = z;
        this.f16894b = zzifVar;
        this.f16895c = zzifVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        boolean z2 = false;
        if (this.f16896d.zzt().zza(zzap.zzay)) {
            boolean z3 = this.f16893a && this.f16896d.f17250a != null;
            z = z3;
            if (z3) {
                zzii zziiVar = this.f16896d;
                zzii.m1772a(zziiVar, zziiVar.f17250a, true);
                z = z3;
            }
        } else {
            if (this.f16893a && this.f16896d.f17250a != null) {
                zzii zziiVar2 = this.f16896d;
                zzii.m1772a(zziiVar2, zziiVar2.f17250a, true);
            }
            z = false;
        }
        zzif zzifVar = this.f16894b;
        if (zzifVar == null || zzifVar.zzc != this.f16895c.zzc || !zzkm.m1609c(this.f16894b.zzb, this.f16895c.zzb) || !zzkm.m1609c(this.f16894b.zza, this.f16895c.zza)) {
            z2 = true;
        }
        if (z2) {
            Bundle bundle = new Bundle();
            zzii.zza(this.f16895c, bundle, true);
            zzif zzifVar2 = this.f16894b;
            if (zzifVar2 != null) {
                if (zzifVar2.zza != null) {
                    bundle.putString("_pn", this.f16894b.zza);
                }
                bundle.putString("_pc", this.f16894b.zzb);
                bundle.putLong("_pi", this.f16894b.zzc);
            }
            if (this.f16896d.zzt().zza(zzap.zzay) && z) {
                long b = this.f16896d.zzk().f17268b.m2034b();
                if (b > 0) {
                    this.f16896d.zzp().m1637a(bundle, b);
                }
            }
            this.f16896d.zzf().m1784a("auto", "_vs", bundle);
        }
        zzii zziiVar3 = this.f16896d;
        zziiVar3.f17250a = this.f16895c;
        zziiVar3.zzh().m1765a(this.f16895c);
    }
}
