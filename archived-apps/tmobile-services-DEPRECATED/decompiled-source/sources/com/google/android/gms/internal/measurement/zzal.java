package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzal.class */
public final class zzal extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ String f8206j;

    /* renamed from: k */
    private final /* synthetic */ String f8207k;

    /* renamed from: l */
    private final /* synthetic */ Bundle f8208l;

    /* renamed from: m */
    private final /* synthetic */ zzag f8209m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzal(zzag zzagVar, String str, String str2, Bundle bundle) {
        super(zzagVar);
        this.f8209m = zzagVar;
        this.f8206j = str;
        this.f8207k = str2;
        this.f8208l = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8209m.f8187h;
        zzvVar.clearConditionalUserProperty(this.f8206j, this.f8207k, this.f8208l);
    }
}
