package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzn;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.ga */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ga.class */
public final class RunnableC2801ga implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzm f16912a;

    /* renamed from: b */
    private final /* synthetic */ zzn f16913b;

    /* renamed from: c */
    private final /* synthetic */ zzij f16914c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2801ga(zzij zzijVar, zzm zzmVar, zzn zznVar) {
        this.f16914c = zzijVar;
        this.f16912a = zzmVar;
        this.f16913b = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        String str = null;
        r9 = null;
        String str2 = null;
        try {
            try {
                zzeoVar = this.f16914c.f17257b;
                if (zzeoVar == null) {
                    this.f16914c.zzr().zzf().zza("Failed to get app instance id");
                } else {
                    String zzc = zzeoVar.zzc(this.f16912a);
                    if (zzc != null) {
                        this.f16914c.zzf().m1788a(zzc);
                        this.f16914c.zzs().f16686j.zza(zzc);
                    }
                    this.f16914c.m1745j();
                    str2 = zzc;
                }
            } catch (RemoteException e) {
                this.f16914c.zzr().zzf().zza("Failed to get app instance id", e);
            }
        } finally {
            this.f16914c.zzp().zza(this.f16913b, str);
        }
    }
}
