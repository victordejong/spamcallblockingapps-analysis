package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;
import com.google.android.gms.measurement.internal.zzha;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/j.class */
public final class C2611j extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ zzha f16082c;

    /* renamed from: d */
    private final /* synthetic */ zzx f16083d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2611j(zzx zzxVar, zzha zzhaVar) {
        super(zzxVar);
        this.f16083d = zzxVar;
        this.f16082c = zzhaVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16083d.f16527r;
        zzmVar.setEventInterceptor(new zzx.BinderC2633c(this.f16082c));
    }
}
