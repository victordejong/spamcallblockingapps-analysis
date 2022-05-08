package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.gp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gp.class */
final class RunnableC2816gp implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzeo f16972a;

    /* renamed from: b */
    private final /* synthetic */ zzjb f16973b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2816gp(zzjb zzjbVar, zzeo zzeoVar) {
        this.f16973b = zzjbVar;
        this.f16972a = zzeoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f16973b) {
            this.f16973b.f17264b = false;
            if (!this.f16973b.f17263a.zzab()) {
                this.f16973b.f17263a.zzr().zzx().zza("Connected to service");
                this.f16973b.f17263a.m1767a(this.f16972a);
            }
        }
    }
}
