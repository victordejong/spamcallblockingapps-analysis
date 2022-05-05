package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.gr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gr.class */
final class RunnableC2818gr implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzeo f16975a;

    /* renamed from: b */
    private final /* synthetic */ zzjb f16976b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2818gr(zzjb zzjbVar, zzeo zzeoVar) {
        this.f16976b = zzjbVar;
        this.f16975a = zzeoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f16976b) {
            this.f16976b.f17264b = false;
            if (!this.f16976b.f17263a.zzab()) {
                this.f16976b.f17263a.zzr().zzw().zza("Connected to remote service");
                this.f16976b.f17263a.m1767a(this.f16975a);
            }
        }
    }
}
