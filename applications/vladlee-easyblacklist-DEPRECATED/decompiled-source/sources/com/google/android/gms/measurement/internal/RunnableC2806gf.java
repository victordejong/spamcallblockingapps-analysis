package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzn;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.gf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gf.class */
public final class RunnableC2806gf implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzan f16924a;

    /* renamed from: b */
    private final /* synthetic */ String f16925b;

    /* renamed from: c */
    private final /* synthetic */ zzn f16926c;

    /* renamed from: d */
    private final /* synthetic */ zzij f16927d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2806gf(zzij zzijVar, zzan zzanVar, String str, zzn zznVar) {
        this.f16927d = zzijVar;
        this.f16924a = zzanVar;
        this.f16925b = str;
        this.f16926c = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        r9 = null;
        byte[] bArr = null;
        byte[] bArr2 = null;
        try {
            try {
                zzeoVar = this.f16927d.f17257b;
                if (zzeoVar == null) {
                    bArr = null;
                    this.f16927d.zzr().zzf().zza("Discarding data. Failed to send event to service to bundle");
                } else {
                    byte[] zza = zzeoVar.zza(this.f16924a, this.f16925b);
                    bArr = zza;
                    this.f16927d.m1745j();
                    bArr2 = zza;
                }
            } catch (RemoteException e) {
                bArr = bArr2;
                this.f16927d.zzr().zzf().zza("Failed to send event to the service to bundle", e);
            }
        } finally {
            this.f16927d.zzp().zza(this.f16926c, bArr);
        }
    }
}
