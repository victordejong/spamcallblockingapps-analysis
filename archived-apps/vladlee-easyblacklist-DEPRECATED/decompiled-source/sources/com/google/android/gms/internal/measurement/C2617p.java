package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/p.class */
public final class C2617p extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ String f16094c;

    /* renamed from: d */
    private final /* synthetic */ String f16095d;

    /* renamed from: e */
    private final /* synthetic */ boolean f16096e;

    /* renamed from: f */
    private final /* synthetic */ zzk f16097f;

    /* renamed from: g */
    private final /* synthetic */ zzx f16098g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2617p(zzx zzxVar, String str, String str2, boolean z, zzk zzkVar) {
        super(zzxVar);
        this.f16098g = zzxVar;
        this.f16094c = str;
        this.f16095d = str2;
        this.f16096e = z;
        this.f16097f = zzkVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16098g.f16527r;
        zzmVar.getUserProperties(this.f16094c, this.f16095d, this.f16096e, this.f16097f);
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: b */
    protected final void mo2217b() {
        this.f16097f.zza((Bundle) null);
    }
}
