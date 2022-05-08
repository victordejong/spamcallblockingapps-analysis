package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzau.class */
public final class zzau extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ String f8226j;

    /* renamed from: k */
    private final /* synthetic */ zzag f8227k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzau(zzag zzagVar, String str) {
        super(zzagVar);
        this.f8227k = zzagVar;
        this.f8226j = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8227k.f8187h;
        zzvVar.endAdUnitExposure(this.f8226j, this.f8190g);
    }
}
