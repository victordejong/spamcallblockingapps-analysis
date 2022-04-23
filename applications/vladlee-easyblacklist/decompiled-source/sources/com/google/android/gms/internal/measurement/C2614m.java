package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/m.class */
public final class C2614m extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ zzk f16088c;

    /* renamed from: d */
    private final /* synthetic */ zzx f16089d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2614m(zzx zzxVar, zzk zzkVar) {
        super(zzxVar);
        this.f16089d = zzxVar;
        this.f16088c = zzkVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16089d.f16527r;
        zzmVar.getGmpAppId(this.f16088c);
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: b */
    protected final void mo2217b() {
        this.f16088c.zza((Bundle) null);
    }
}
