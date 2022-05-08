package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/v.class */
public final class C2623v extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ zzk f16115c;

    /* renamed from: d */
    private final /* synthetic */ int f16116d;

    /* renamed from: e */
    private final /* synthetic */ zzx f16117e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2623v(zzx zzxVar, zzk zzkVar, int i) {
        super(zzxVar);
        this.f16117e = zzxVar;
        this.f16115c = zzkVar;
        this.f16116d = i;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16117e.f16527r;
        zzmVar.getTestFlag(this.f16115c, this.f16116d);
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: b */
    protected final void mo2217b() {
        this.f16115c.zza((Bundle) null);
    }
}
