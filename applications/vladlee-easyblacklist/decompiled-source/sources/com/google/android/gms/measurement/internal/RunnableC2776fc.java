package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.fc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fc.class */
public final class RunnableC2776fc implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Bundle f16845a;

    /* renamed from: b */
    private final /* synthetic */ zzhb f16846b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2776fc(zzhb zzhbVar, Bundle bundle) {
        this.f16846b = zzhbVar;
        this.f16845a = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhb.m1790a(this.f16846b, this.f16845a);
    }
}
