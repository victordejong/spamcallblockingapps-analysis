package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/l.class */
public final class C2613l extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ zzk f16086c;

    /* renamed from: d */
    private final /* synthetic */ zzx f16087d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2613l(zzx zzxVar, zzk zzkVar) {
        super(zzxVar);
        this.f16087d = zzxVar;
        this.f16086c = zzkVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16087d.f16527r;
        zzmVar.getCachedAppInstanceId(this.f16086c);
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: b */
    protected final void mo2217b() {
        this.f16086c.zza((Bundle) null);
    }
}
