package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.y */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/y.class */
public final class C2626y extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ boolean f16122c;

    /* renamed from: d */
    private final /* synthetic */ zzx f16123d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2626y(zzx zzxVar, boolean z) {
        super(zzxVar);
        this.f16123d = zzxVar;
        this.f16122c = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16123d.f16527r;
        zzmVar.setDataCollectionEnabled(this.f16122c);
    }
}
