package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.ho */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ho.class */
public final class CallableC2842ho implements Callable<String> {

    /* renamed from: a */
    private final /* synthetic */ zzm f17032a;

    /* renamed from: b */
    private final /* synthetic */ zzke f17033b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallableC2842ho(zzke zzkeVar, zzm zzmVar) {
        this.f17033b = zzkeVar;
        this.f17032a = zzmVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() {
        C2744dy c = this.f17033b.m1695c(this.f17032a);
        if (c != null) {
            return c.m2099d();
        }
        this.f17033b.zzr().zzi().zza("App info was null when attempting to get app instance id");
        return null;
    }
}
