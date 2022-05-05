package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/e.class */
public final class C2572e extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ Activity f16021c;

    /* renamed from: d */
    private final /* synthetic */ String f16022d;

    /* renamed from: e */
    private final /* synthetic */ String f16023e;

    /* renamed from: f */
    private final /* synthetic */ zzx f16024f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2572e(zzx zzxVar, Activity activity, String str, String str2) {
        super(zzxVar);
        this.f16024f = zzxVar;
        this.f16021c = activity;
        this.f16022d = str;
        this.f16023e = str2;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16024f.f16527r;
        zzmVar.setCurrentScreen(ObjectWrapper.wrap(this.f16021c), this.f16022d, this.f16023e, this.f16528a);
    }
}
