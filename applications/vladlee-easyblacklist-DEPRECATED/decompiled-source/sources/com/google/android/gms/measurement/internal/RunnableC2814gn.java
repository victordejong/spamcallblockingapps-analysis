package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzn;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.gn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gn.class */
public final class RunnableC2814gn implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f16964a;

    /* renamed from: b */
    private final /* synthetic */ String f16965b;

    /* renamed from: c */
    private final /* synthetic */ boolean f16966c;

    /* renamed from: d */
    private final /* synthetic */ zzm f16967d;

    /* renamed from: e */
    private final /* synthetic */ zzn f16968e;

    /* renamed from: f */
    private final /* synthetic */ zzij f16969f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2814gn(zzij zzijVar, String str, String str2, boolean z, zzm zzmVar, zzn zznVar) {
        this.f16969f = zzijVar;
        this.f16964a = str;
        this.f16965b = str2;
        this.f16966c = z;
        this.f16967d = zzmVar;
        this.f16968e = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        Bundle bundle = new Bundle();
        Bundle bundle2 = bundle;
        Bundle bundle3 = bundle;
        try {
            try {
                zzeoVar = this.f16969f.f17257b;
                if (zzeoVar == null) {
                    bundle2 = bundle;
                    this.f16969f.zzr().zzf().zza("Failed to get user properties", this.f16964a, this.f16965b);
                    bundle3 = bundle;
                } else {
                    Bundle zza = zzkm.zza(zzeoVar.zza(this.f16964a, this.f16965b, this.f16966c, this.f16967d));
                    bundle2 = zza;
                    this.f16969f.m1745j();
                    bundle3 = zza;
                }
            } catch (RemoteException e) {
                bundle2 = bundle3;
                this.f16969f.zzr().zzf().zza("Failed to get user properties", this.f16964a, e);
            }
        } finally {
            this.f16969f.zzp().zza(this.f16968e, bundle2);
        }
    }
}
