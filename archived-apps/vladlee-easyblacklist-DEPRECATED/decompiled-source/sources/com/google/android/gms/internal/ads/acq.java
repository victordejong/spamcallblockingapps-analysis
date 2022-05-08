package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acq.class */
public final class acq implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzde f7227a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public acq(zzde zzdeVar) {
        this.f7227a = zzdeVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        zzei zzeiVar;
        ConditionVariable conditionVariable2;
        if (this.f7227a.f14236b == null) {
            conditionVariable = zzde.f14234d;
            synchronized (conditionVariable) {
                if (this.f7227a.f14236b == null) {
                    boolean z = false;
                    try {
                        z = zzzn.zzckx.get().booleanValue();
                    } catch (IllegalStateException e) {
                        z = false;
                    }
                    if (z) {
                        try {
                            zzeiVar = this.f7227a.f14237c;
                            zzde.f14233a = new zzsr(zzeiVar.f14727a, "ADSHIELD", null);
                        } catch (Throwable th) {
                        }
                    }
                    this.f7227a.f14236b = Boolean.valueOf(z);
                    conditionVariable2 = zzde.f14234d;
                    conditionVariable2.open();
                }
            }
        }
    }
}
