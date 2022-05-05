package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/n.class */
public final class C2615n extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ zzk f16090c;

    /* renamed from: d */
    private final /* synthetic */ zzx f16091d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2615n(zzx zzxVar, zzk zzkVar) {
        super(zzxVar);
        this.f16091d = zzxVar;
        this.f16090c = zzkVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16091d.f16527r;
        zzmVar.getCurrentScreenName(this.f16090c);
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: b */
    protected final void mo2217b() {
        this.f16090c.zza((Bundle) null);
    }
}
