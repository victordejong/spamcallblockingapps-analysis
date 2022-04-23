package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzx;
/* renamed from: com.google.android.gms.internal.measurement.ai */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ai.class */
final class C2473ai extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ Activity f15857c;

    /* renamed from: d */
    private final /* synthetic */ zzk f15858d;

    /* renamed from: e */
    private final /* synthetic */ zzx.C2634d f15859e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2473ai(zzx.C2634d dVar, Activity activity, zzk zzkVar) {
        super(zzx.this);
        this.f15859e = dVar;
        this.f15857c = activity;
        this.f15858d = zzkVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = zzx.this.f16527r;
        zzmVar.onActivitySaveInstanceState(ObjectWrapper.wrap(this.f15857c), this.f15858d, this.f16529b);
    }
}
