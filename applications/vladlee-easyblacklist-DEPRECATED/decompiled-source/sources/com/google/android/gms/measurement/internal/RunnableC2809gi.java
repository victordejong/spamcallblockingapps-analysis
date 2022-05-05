package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.gi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gi.class */
public final class RunnableC2809gi implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f16936a;

    /* renamed from: b */
    private final /* synthetic */ String f16937b;

    /* renamed from: c */
    private final /* synthetic */ String f16938c;

    /* renamed from: d */
    private final /* synthetic */ String f16939d;

    /* renamed from: e */
    private final /* synthetic */ zzm f16940e;

    /* renamed from: f */
    private final /* synthetic */ zzij f16941f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2809gi(zzij zzijVar, AtomicReference atomicReference, String str, String str2, String str3, zzm zzmVar) {
        this.f16941f = zzijVar;
        this.f16936a = atomicReference;
        this.f16937b = str;
        this.f16938c = str2;
        this.f16939d = str3;
        this.f16940e = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        zzeo zzeoVar;
        AtomicReference atomicReference2;
        List<zzv> zza;
        synchronized (this.f16936a) {
            try {
                zzeoVar = this.f16941f.f17257b;
            } catch (RemoteException e) {
                this.f16941f.zzr().zzf().zza("Failed to get conditional properties", zzew.m1855a(this.f16937b), this.f16938c, e);
                this.f16936a.set(Collections.emptyList());
                atomicReference = this.f16936a;
            }
            if (zzeoVar == null) {
                this.f16941f.zzr().zzf().zza("Failed to get conditional properties", zzew.m1855a(this.f16937b), this.f16938c, this.f16939d);
                this.f16936a.set(Collections.emptyList());
                this.f16936a.notify();
                return;
            }
            if (TextUtils.isEmpty(this.f16937b)) {
                atomicReference2 = this.f16936a;
                zza = zzeoVar.zza(this.f16938c, this.f16939d, this.f16940e);
            } else {
                atomicReference2 = this.f16936a;
                zza = zzeoVar.zza(this.f16937b, this.f16938c, this.f16939d);
            }
            atomicReference2.set(zza);
            this.f16941f.m1745j();
            atomicReference = this.f16936a;
            atomicReference.notify();
        }
    }
}
