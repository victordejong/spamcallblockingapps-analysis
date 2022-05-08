package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.hc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hc.class */
public final class RunnableC2830hc implements Runnable {

    /* renamed from: a */
    long f17008a;

    /* renamed from: b */
    final /* synthetic */ C2824gx f17009b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2830hc(C2824gx gxVar, long j) {
        this.f17009b = gxVar;
        this.f17008a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17009b.f16989a.zzq().zza(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.hb

            /* renamed from: a */
            private final RunnableC2830hc f17007a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f17007a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                RunnableC2830hc hcVar = this.f17007a;
                C2824gx gxVar = hcVar.f17009b;
                long j = hcVar.f17008a;
                gxVar.f16989a.zzd();
                gxVar.f16989a.zzr().zzw().zza("Application going to the background");
                gxVar.f16989a.zzf().m1787a("auto", "_ab", j, new Bundle());
            }
        });
    }
}
