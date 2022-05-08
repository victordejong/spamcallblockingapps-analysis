package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/q.class */
public final class C2618q extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ zzk f16099c;

    /* renamed from: d */
    private final /* synthetic */ zzx f16100d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2618q(zzx zzxVar, zzk zzkVar) {
        super(zzxVar);
        this.f16100d = zzxVar;
        this.f16099c = zzkVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16100d.f16527r;
        zzmVar.getCurrentScreenClass(this.f16099c);
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: b */
    protected final void mo2217b() {
        this.f16099c.zza((Bundle) null);
    }
}
