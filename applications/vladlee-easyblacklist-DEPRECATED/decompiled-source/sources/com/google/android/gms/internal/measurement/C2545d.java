package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/d.class */
public final class C2545d extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ boolean f15962c;

    /* renamed from: d */
    private final /* synthetic */ zzx f15963d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2545d(zzx zzxVar, boolean z) {
        super(zzxVar);
        this.f15963d = zzxVar;
        this.f15962c = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f15963d.f16527r;
        zzmVar.setMeasurementEnabled(this.f15962c, this.f16528a);
    }
}
