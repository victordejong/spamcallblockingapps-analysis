package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.eg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/eg.class */
final class RunnableC2753eg implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzan f16781a;

    /* renamed from: b */
    private final /* synthetic */ zzm f16782b;

    /* renamed from: c */
    private final /* synthetic */ zzgb f16783c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2753eg(zzgb zzgbVar, zzan zzanVar, zzm zzmVar) {
        this.f16783c = zzgbVar;
        this.f16781a = zzanVar;
        this.f16782b = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzke zzkeVar;
        zzke zzkeVar2;
        zzan a = this.f16783c.m1798a(this.f16781a, this.f16782b);
        zzkeVar = this.f16783c.f17231a;
        zzkeVar.m1694d();
        zzkeVar2 = this.f16783c.f17231a;
        zzkeVar2.m1716a(a, this.f16782b);
    }
}
