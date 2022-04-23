package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.fb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fb.class */
public final class RunnableC2775fb implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Bundle f16843a;

    /* renamed from: b */
    private final /* synthetic */ zzhb f16844b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2775fb(zzhb zzhbVar, Bundle bundle) {
        this.f16844b = zzhbVar;
        this.f16843a = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhb.m1779b(this.f16844b, this.f16843a);
    }
}
