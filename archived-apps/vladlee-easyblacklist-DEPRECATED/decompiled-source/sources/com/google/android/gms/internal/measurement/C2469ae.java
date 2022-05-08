package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzx;
/* renamed from: com.google.android.gms.internal.measurement.ae */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ae.class */
final class C2469ae extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ Activity f15849c;

    /* renamed from: d */
    private final /* synthetic */ zzx.C2634d f15850d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2469ae(zzx.C2634d dVar, Activity activity) {
        super(zzx.this);
        this.f15850d = dVar;
        this.f15849c = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = zzx.this.f16527r;
        zzmVar.onActivityStarted(ObjectWrapper.wrap(this.f15849c), this.f16529b);
    }
}
