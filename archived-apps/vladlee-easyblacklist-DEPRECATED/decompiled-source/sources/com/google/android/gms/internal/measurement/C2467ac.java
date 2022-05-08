package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzx;
/* renamed from: com.google.android.gms.internal.measurement.ac */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ac.class */
final class C2467ac extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ Activity f15844c;

    /* renamed from: d */
    private final /* synthetic */ Bundle f15845d;

    /* renamed from: e */
    private final /* synthetic */ zzx.C2634d f15846e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2467ac(zzx.C2634d dVar, Activity activity, Bundle bundle) {
        super(zzx.this);
        this.f15846e = dVar;
        this.f15844c = activity;
        this.f15845d = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = zzx.this.f16527r;
        zzmVar.onActivityCreated(ObjectWrapper.wrap(this.f15844c), this.f15845d, this.f16529b);
    }
}
