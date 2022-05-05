package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* renamed from: com.google.android.gms.internal.measurement.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/t.class */
final class C2621t extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ zzk f16110c;

    /* renamed from: d */
    private final /* synthetic */ zzx f16111d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2621t(zzx zzxVar, zzk zzkVar) {
        super(zzxVar);
        this.f16111d = zzxVar;
        this.f16110c = zzkVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16111d.f16527r;
        zzmVar.getAppInstanceId(this.f16110c);
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: b */
    protected final void mo2217b() {
        this.f16110c.zza((Bundle) null);
    }
}
