package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzap.class */
public final class zzap extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ Boolean f8218j;

    /* renamed from: k */
    private final /* synthetic */ zzag f8219k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzap(zzag zzagVar, Boolean bool) {
        super(zzagVar);
        this.f8219k = zzagVar;
        this.f8218j = bool;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzv zzvVar2;
        if (this.f8218j != null) {
            zzvVar2 = this.f8219k.f8187h;
            zzvVar2.setMeasurementEnabled(this.f8218j.booleanValue(), this.f8189f);
            return;
        }
        zzvVar = this.f8219k.f8187h;
        zzvVar.clearMeasurementEnabled(this.f8189f);
    }
}
