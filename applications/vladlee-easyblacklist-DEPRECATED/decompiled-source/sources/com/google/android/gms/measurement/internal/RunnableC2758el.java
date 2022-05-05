package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.el */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/el.class */
final class RunnableC2758el implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzkl f16794a;

    /* renamed from: b */
    private final /* synthetic */ zzm f16795b;

    /* renamed from: c */
    private final /* synthetic */ zzgb f16796c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2758el(zzgb zzgbVar, zzkl zzklVar, zzm zzmVar) {
        this.f16796c = zzgbVar;
        this.f16794a = zzklVar;
        this.f16795b = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzke zzkeVar;
        zzke zzkeVar2;
        zzke zzkeVar3;
        zzkeVar = this.f16796c.f17231a;
        zzkeVar.m1694d();
        if (this.f16794a.zza() == null) {
            zzkeVar3 = this.f16796c.f17231a;
            zzkeVar3.m1700b(this.f16794a, this.f16795b);
            return;
        }
        zzkeVar2 = this.f16796c.f17231a;
        zzkeVar2.m1713a(this.f16794a, this.f16795b);
    }
}
