package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzn;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.gm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gm.class */
public final class RunnableC2813gm implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f16959a;

    /* renamed from: b */
    private final /* synthetic */ String f16960b;

    /* renamed from: c */
    private final /* synthetic */ zzm f16961c;

    /* renamed from: d */
    private final /* synthetic */ zzn f16962d;

    /* renamed from: e */
    private final /* synthetic */ zzij f16963e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2813gm(zzij zzijVar, String str, String str2, zzm zzmVar, zzn zznVar) {
        this.f16963e = zzijVar;
        this.f16959a = str;
        this.f16960b = str2;
        this.f16961c = zzmVar;
        this.f16962d = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        ArrayList<Bundle> arrayList = new ArrayList<>();
        ArrayList<Bundle> arrayList2 = arrayList;
        ArrayList<Bundle> arrayList3 = arrayList;
        try {
            try {
                zzeoVar = this.f16963e.f17257b;
                if (zzeoVar == null) {
                    arrayList2 = arrayList;
                    this.f16963e.zzr().zzf().zza("Failed to get conditional properties", this.f16959a, this.f16960b);
                    arrayList3 = arrayList;
                } else {
                    ArrayList<Bundle> zzb = zzkm.zzb(zzeoVar.zza(this.f16959a, this.f16960b, this.f16961c));
                    arrayList2 = zzb;
                    this.f16963e.m1745j();
                    arrayList3 = zzb;
                }
            } catch (RemoteException e) {
                arrayList2 = arrayList3;
                this.f16963e.zzr().zzf().zza("Failed to get conditional properties", this.f16959a, this.f16960b, e);
            }
        } finally {
            this.f16963e.zzp().zza(this.f16962d, arrayList2);
        }
    }
}
