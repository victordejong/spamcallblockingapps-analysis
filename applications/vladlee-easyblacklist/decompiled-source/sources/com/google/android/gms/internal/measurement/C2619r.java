package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/r.class */
public final class C2619r extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ Bundle f16101c;

    /* renamed from: d */
    private final /* synthetic */ zzk f16102d;

    /* renamed from: e */
    private final /* synthetic */ zzx f16103e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2619r(zzx zzxVar, Bundle bundle, zzk zzkVar) {
        super(zzxVar);
        this.f16103e = zzxVar;
        this.f16101c = bundle;
        this.f16102d = zzkVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16103e.f16527r;
        zzmVar.performAction(this.f16101c, this.f16102d, this.f16528a);
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: b */
    protected final void mo2217b() {
        this.f16102d.zza((Bundle) null);
    }
}
