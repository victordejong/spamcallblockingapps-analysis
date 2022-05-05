package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/o.class */
public final class C2616o extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ zzk f16092c;

    /* renamed from: d */
    private final /* synthetic */ zzx f16093d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2616o(zzx zzxVar, zzk zzkVar) {
        super(zzxVar);
        this.f16093d = zzxVar;
        this.f16092c = zzkVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16093d.f16527r;
        zzmVar.generateEventId(this.f16092c);
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: b */
    protected final void mo2217b() {
        this.f16092c.zza((Bundle) null);
    }
}
