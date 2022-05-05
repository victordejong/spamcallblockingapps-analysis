package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.gd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gd.class */
public final class RunnableC2804gd implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzm f16920a;

    /* renamed from: b */
    private final /* synthetic */ boolean f16921b;

    /* renamed from: c */
    private final /* synthetic */ zzij f16922c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2804gd(zzij zzijVar, zzm zzmVar, boolean z) {
        this.f16922c = zzijVar;
        this.f16920a = zzmVar;
        this.f16921b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        zzeoVar = this.f16922c.f17257b;
        if (zzeoVar == null) {
            this.f16922c.zzr().zzf().zza("Discarding data. Failed to send app launch");
            return;
        }
        try {
            zzeoVar.zza(this.f16920a);
            if (this.f16921b) {
                this.f16922c.zzj().zzad();
            }
            this.f16922c.m1766a(zzeoVar, (AbstractSafeParcelable) null, this.f16920a);
            this.f16922c.m1745j();
        } catch (RemoteException e) {
            this.f16922c.zzr().zzf().zza("Failed to send app launch to the service", e);
        }
    }
}
