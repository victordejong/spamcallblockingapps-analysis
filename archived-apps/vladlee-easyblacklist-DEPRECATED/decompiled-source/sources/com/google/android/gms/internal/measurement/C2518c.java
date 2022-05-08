package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/c.class */
public final class C2518c extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ String f15906c;

    /* renamed from: d */
    private final /* synthetic */ String f15907d;

    /* renamed from: e */
    private final /* synthetic */ zzk f15908e;

    /* renamed from: f */
    private final /* synthetic */ zzx f15909f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2518c(zzx zzxVar, String str, String str2, zzk zzkVar) {
        super(zzxVar);
        this.f15909f = zzxVar;
        this.f15906c = str;
        this.f15907d = str2;
        this.f15908e = zzkVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f15909f.f16527r;
        zzmVar.getConditionalUserProperties(this.f15906c, this.f15907d, this.f15908e);
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: b */
    protected final void mo2217b() {
        this.f15908e.zza((Bundle) null);
    }
}
