package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.gj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gj.class */
public final class RunnableC2810gj implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ boolean f16942a = true;

    /* renamed from: b */
    private final /* synthetic */ boolean f16943b;

    /* renamed from: c */
    private final /* synthetic */ zzv f16944c;

    /* renamed from: d */
    private final /* synthetic */ zzm f16945d;

    /* renamed from: e */
    private final /* synthetic */ zzv f16946e;

    /* renamed from: f */
    private final /* synthetic */ zzij f16947f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2810gj(zzij zzijVar, boolean z, zzv zzvVar, zzm zzmVar, zzv zzvVar2) {
        this.f16947f = zzijVar;
        this.f16943b = z;
        this.f16944c = zzvVar;
        this.f16945d = zzmVar;
        this.f16946e = zzvVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        zzeoVar = this.f16947f.f17257b;
        if (zzeoVar == null) {
            this.f16947f.zzr().zzf().zza("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.f16942a) {
            this.f16947f.m1766a(zzeoVar, this.f16943b ? null : this.f16944c, this.f16945d);
        } else {
            try {
                if (TextUtils.isEmpty(this.f16946e.zza)) {
                    zzeoVar.zza(this.f16944c, this.f16945d);
                } else {
                    zzeoVar.zza(this.f16944c);
                }
            } catch (RemoteException e) {
                this.f16947f.zzr().zzf().zza("Failed to send conditional user property to the service", e);
            }
        }
        this.f16947f.m1745j();
    }
}
