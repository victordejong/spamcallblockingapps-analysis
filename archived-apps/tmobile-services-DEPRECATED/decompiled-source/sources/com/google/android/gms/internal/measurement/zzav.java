package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzav.class */
public final class zzav extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ String f8228j;

    /* renamed from: k */
    private final /* synthetic */ zzag f8229k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzav(zzag zzagVar, String str) {
        super(zzagVar);
        this.f8229k = zzagVar;
        this.f8228j = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8229k.f8187h;
        zzvVar.beginAdUnitExposure(this.f8228j, this.f8190g);
    }
}
