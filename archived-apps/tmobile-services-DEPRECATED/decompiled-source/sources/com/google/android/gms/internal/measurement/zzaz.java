package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzaz.class */
public final class zzaz extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ zzt f8236j;

    /* renamed from: k */
    private final /* synthetic */ zzag f8237k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaz(zzag zzagVar, zzt zztVar) {
        super(zzagVar);
        this.f8237k = zzagVar;
        this.f8236j = zztVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8237k.f8187h;
        zzvVar.generateEventId(this.f8236j);
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: b */
    protected final void mo13398b() {
        this.f8236j.zza(null);
    }
}
