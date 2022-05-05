package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/h.class */
public final class C2609h extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ String f16078c;

    /* renamed from: d */
    private final /* synthetic */ zzx f16079d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2609h(zzx zzxVar, String str) {
        super(zzxVar);
        this.f16079d = zzxVar;
        this.f16078c = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16079d.f16527r;
        zzmVar.beginAdUnitExposure(this.f16078c, this.f16529b);
    }
}
