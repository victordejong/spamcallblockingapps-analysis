package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/u.class */
public final class C2622u extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ String f16112c;

    /* renamed from: d */
    private final /* synthetic */ zzk f16113d;

    /* renamed from: e */
    private final /* synthetic */ zzx f16114e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2622u(zzx zzxVar, String str, zzk zzkVar) {
        super(zzxVar);
        this.f16114e = zzxVar;
        this.f16112c = str;
        this.f16113d = zzkVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16114e.f16527r;
        zzmVar.getMaxUserProperties(this.f16112c, this.f16113d);
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: b */
    protected final void mo2217b() {
        this.f16113d.zza((Bundle) null);
    }
}
