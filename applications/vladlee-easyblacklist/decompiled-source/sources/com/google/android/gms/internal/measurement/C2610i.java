package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;
/* renamed from: com.google.android.gms.internal.measurement.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/i.class */
final class C2610i extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ long f16080c;

    /* renamed from: d */
    private final /* synthetic */ zzx f16081d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2610i(zzx zzxVar, long j) {
        super(zzxVar);
        this.f16081d = zzxVar;
        this.f16080c = j;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16081d.f16527r;
        zzmVar.setSessionTimeoutDuration(this.f16080c);
    }
}
