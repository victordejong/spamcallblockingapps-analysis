package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzx;
/* renamed from: com.google.android.gms.internal.measurement.af */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/af.class */
final class C2470af extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ Activity f15851c;

    /* renamed from: d */
    private final /* synthetic */ zzx.C2634d f15852d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2470af(zzx.C2634d dVar, Activity activity) {
        super(zzx.this);
        this.f15852d = dVar;
        this.f15851c = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = zzx.this.f16527r;
        zzmVar.onActivityStopped(ObjectWrapper.wrap(this.f15851c), this.f16529b);
    }
}
