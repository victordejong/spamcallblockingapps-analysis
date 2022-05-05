package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;
/* renamed from: com.google.android.gms.internal.measurement.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/b.class */
final class C2491b extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ String f15873c;

    /* renamed from: d */
    private final /* synthetic */ zzx f15874d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2491b(zzx zzxVar, String str) {
        super(zzxVar);
        this.f15874d = zzxVar;
        this.f15873c = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f15874d.f16527r;
        zzmVar.setUserId(this.f15873c, this.f16528a);
    }
}
