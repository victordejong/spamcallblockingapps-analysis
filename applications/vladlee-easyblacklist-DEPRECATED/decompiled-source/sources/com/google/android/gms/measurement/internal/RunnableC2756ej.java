package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.ej */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ej.class */
final class RunnableC2756ej implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzan f16789a;

    /* renamed from: b */
    private final /* synthetic */ String f16790b;

    /* renamed from: c */
    private final /* synthetic */ zzgb f16791c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2756ej(zzgb zzgbVar, zzan zzanVar, String str) {
        this.f16791c = zzgbVar;
        this.f16789a = zzanVar;
        this.f16790b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzke zzkeVar;
        zzke zzkeVar2;
        zzkeVar = this.f16791c.f17231a;
        zzkeVar.m1694d();
        zzkeVar2 = this.f16791c.f17231a;
        zzkeVar2.m1715a(this.f16789a, this.f16790b);
    }
}
