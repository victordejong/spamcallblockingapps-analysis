package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/k.class */
public final class C2612k extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ String f16084c;

    /* renamed from: d */
    private final /* synthetic */ zzx f16085d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2612k(zzx zzxVar, String str) {
        super(zzxVar);
        this.f16085d = zzxVar;
        this.f16084c = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16085d.f16527r;
        zzmVar.endAdUnitExposure(this.f16084c, this.f16529b);
    }
}
