package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzx;
/* renamed from: com.google.android.gms.internal.measurement.ag */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ag.class */
final class C2471ag extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ Activity f15853c;

    /* renamed from: d */
    private final /* synthetic */ zzx.C2634d f15854d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2471ag(zzx.C2634d dVar, Activity activity) {
        super(zzx.this);
        this.f15854d = dVar;
        this.f15853c = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = zzx.this.f16527r;
        zzmVar.onActivityPaused(ObjectWrapper.wrap(this.f15853c), this.f16529b);
    }
}
