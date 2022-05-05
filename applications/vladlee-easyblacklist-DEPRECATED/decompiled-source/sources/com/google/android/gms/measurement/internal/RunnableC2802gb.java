package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.gb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gb.class */
public final class RunnableC2802gb implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f16915a;

    /* renamed from: b */
    private final /* synthetic */ zzm f16916b;

    /* renamed from: c */
    private final /* synthetic */ zzij f16917c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2802gb(zzij zzijVar, AtomicReference atomicReference, zzm zzmVar) {
        this.f16917c = zzijVar;
        this.f16915a = atomicReference;
        this.f16916b = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        zzeo zzeoVar;
        synchronized (this.f16915a) {
            try {
                zzeoVar = this.f16917c.f17257b;
            } catch (RemoteException e) {
                this.f16917c.zzr().zzf().zza("Failed to get app instance id", e);
                atomicReference = this.f16915a;
            }
            if (zzeoVar == null) {
                this.f16917c.zzr().zzf().zza("Failed to get app instance id");
                this.f16915a.notify();
                return;
            }
            this.f16915a.set(zzeoVar.zzc(this.f16916b));
            String str = (String) this.f16915a.get();
            if (str != null) {
                this.f16917c.zzf().m1788a(str);
                this.f16917c.zzs().f16686j.zza(str);
            }
            this.f16917c.m1745j();
            atomicReference = this.f16915a;
            atomicReference.notify();
        }
    }
}
