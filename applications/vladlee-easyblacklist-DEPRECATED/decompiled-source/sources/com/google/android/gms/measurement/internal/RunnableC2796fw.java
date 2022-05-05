package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.fw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fw.class */
public final class RunnableC2796fw implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ boolean f16899a;

    /* renamed from: b */
    private final /* synthetic */ zzkl f16900b;

    /* renamed from: c */
    private final /* synthetic */ zzm f16901c;

    /* renamed from: d */
    private final /* synthetic */ zzij f16902d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2796fw(zzij zzijVar, boolean z, zzkl zzklVar, zzm zzmVar) {
        this.f16902d = zzijVar;
        this.f16899a = z;
        this.f16900b = zzklVar;
        this.f16901c = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        zzeoVar = this.f16902d.f17257b;
        if (zzeoVar == null) {
            this.f16902d.zzr().zzf().zza("Discarding data. Failed to set user attribute");
            return;
        }
        this.f16902d.m1766a(zzeoVar, this.f16899a ? null : this.f16900b, this.f16901c);
        this.f16902d.m1745j();
    }
}
