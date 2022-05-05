package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.fd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/fd.class */
public final class C2607fd extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ String f16073c;

    /* renamed from: d */
    private final /* synthetic */ String f16074d;

    /* renamed from: e */
    private final /* synthetic */ Bundle f16075e;

    /* renamed from: f */
    private final /* synthetic */ zzx f16076f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2607fd(zzx zzxVar, String str, String str2, Bundle bundle) {
        super(zzxVar);
        this.f16076f = zzxVar;
        this.f16073c = str;
        this.f16074d = str2;
        this.f16075e = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16076f.f16527r;
        zzmVar.clearConditionalUserProperty(this.f16073c, this.f16074d, this.f16075e);
    }
}
