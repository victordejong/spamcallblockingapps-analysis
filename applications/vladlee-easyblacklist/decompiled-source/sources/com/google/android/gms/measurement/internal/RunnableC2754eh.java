package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.eh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/eh.class */
final class RunnableC2754eh implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzm f16784a;

    /* renamed from: b */
    private final /* synthetic */ zzgb f16785b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2754eh(zzgb zzgbVar, zzm zzmVar) {
        this.f16785b = zzgbVar;
        this.f16784a = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzke zzkeVar;
        zzke zzkeVar2;
        zzkeVar = this.f16785b.f17231a;
        zzkeVar.m1694d();
        zzkeVar2 = this.f16785b.f17231a;
        zzkeVar2.m1712a(this.f16784a);
    }
}
