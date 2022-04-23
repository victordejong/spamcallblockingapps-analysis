package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;
/* renamed from: com.google.android.gms.internal.measurement.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/g.class */
final class C2608g extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ zzx f16077c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2608g(zzx zzxVar) {
        super(zzxVar);
        this.f16077c = zzxVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16077c.f16527r;
        zzmVar.resetAnalyticsData(this.f16528a);
    }
}
