package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.gk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gk.class */
public final class RunnableC2811gk implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f16948a;

    /* renamed from: b */
    private final /* synthetic */ String f16949b;

    /* renamed from: c */
    private final /* synthetic */ String f16950c;

    /* renamed from: d */
    private final /* synthetic */ String f16951d;

    /* renamed from: e */
    private final /* synthetic */ boolean f16952e;

    /* renamed from: f */
    private final /* synthetic */ zzm f16953f;

    /* renamed from: g */
    private final /* synthetic */ zzij f16954g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2811gk(zzij zzijVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z, zzm zzmVar) {
        this.f16954g = zzijVar;
        this.f16948a = atomicReference;
        this.f16949b = str;
        this.f16950c = str2;
        this.f16951d = str3;
        this.f16952e = z;
        this.f16953f = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        zzeo zzeoVar;
        AtomicReference atomicReference2;
        List<zzkl> zza;
        synchronized (this.f16948a) {
            try {
                zzeoVar = this.f16954g.f17257b;
            } catch (RemoteException e) {
                this.f16954g.zzr().zzf().zza("Failed to get user properties", zzew.m1855a(this.f16949b), this.f16950c, e);
                this.f16948a.set(Collections.emptyList());
                atomicReference = this.f16948a;
            }
            if (zzeoVar == null) {
                this.f16954g.zzr().zzf().zza("Failed to get user properties", zzew.m1855a(this.f16949b), this.f16950c, this.f16951d);
                this.f16948a.set(Collections.emptyList());
                this.f16948a.notify();
                return;
            }
            if (TextUtils.isEmpty(this.f16949b)) {
                atomicReference2 = this.f16948a;
                zza = zzeoVar.zza(this.f16950c, this.f16951d, this.f16952e, this.f16953f);
            } else {
                atomicReference2 = this.f16948a;
                zza = zzeoVar.zza(this.f16949b, this.f16950c, this.f16951d, this.f16952e);
            }
            atomicReference2.set(zza);
            this.f16954g.m1745j();
            atomicReference = this.f16948a;
            atomicReference.notify();
        }
    }
}
