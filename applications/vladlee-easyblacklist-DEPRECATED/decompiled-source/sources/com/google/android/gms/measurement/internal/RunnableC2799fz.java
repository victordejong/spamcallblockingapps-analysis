package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.fz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fz.class */
public final class RunnableC2799fz implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f16906a;

    /* renamed from: b */
    private final /* synthetic */ zzm f16907b;

    /* renamed from: c */
    private final /* synthetic */ boolean f16908c;

    /* renamed from: d */
    private final /* synthetic */ zzij f16909d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2799fz(zzij zzijVar, AtomicReference atomicReference, zzm zzmVar, boolean z) {
        this.f16909d = zzijVar;
        this.f16906a = atomicReference;
        this.f16907b = zzmVar;
        this.f16908c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        zzeo zzeoVar;
        synchronized (this.f16906a) {
            try {
                zzeoVar = this.f16909d.f17257b;
            } catch (RemoteException e) {
                this.f16909d.zzr().zzf().zza("Failed to get user properties", e);
                atomicReference = this.f16906a;
            }
            if (zzeoVar == null) {
                this.f16909d.zzr().zzf().zza("Failed to get user properties");
                this.f16906a.notify();
                return;
            }
            this.f16906a.set(zzeoVar.zza(this.f16907b, this.f16908c));
            this.f16909d.m1745j();
            atomicReference = this.f16906a;
            atomicReference.notify();
        }
    }
}
