package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.ab */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ab.class */
public final class C2466ab extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ Bundle f15842c;

    /* renamed from: d */
    private final /* synthetic */ zzx f15843d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2466ab(zzx zzxVar, Bundle bundle) {
        super(zzxVar);
        this.f15843d = zzxVar;
        this.f15842c = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f15843d.f16527r;
        zzmVar.setConditionalUserProperty(this.f15842c, this.f16528a);
    }
}
