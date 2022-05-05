package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;
/* renamed from: com.google.android.gms.internal.measurement.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/f.class */
final class C2603f extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ long f16071c;

    /* renamed from: d */
    private final /* synthetic */ zzx f16072d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2603f(zzx zzxVar, long j) {
        super(zzxVar);
        this.f16072d = zzxVar;
        this.f16071c = j;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16072d.f16527r;
        zzmVar.setMinimumSessionDuration(this.f16071c);
    }
}
