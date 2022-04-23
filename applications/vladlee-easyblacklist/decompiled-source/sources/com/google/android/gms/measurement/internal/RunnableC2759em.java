package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.em */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/em.class */
final class RunnableC2759em implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f16797a;

    /* renamed from: b */
    private final /* synthetic */ String f16798b;

    /* renamed from: c */
    private final /* synthetic */ String f16799c;

    /* renamed from: d */
    private final /* synthetic */ long f16800d;

    /* renamed from: e */
    private final /* synthetic */ zzgb f16801e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2759em(zzgb zzgbVar, String str, String str2, String str3, long j) {
        this.f16801e = zzgbVar;
        this.f16797a = str;
        this.f16798b = str2;
        this.f16799c = str3;
        this.f16800d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzif zzifVar;
        zzke zzkeVar;
        zzii zzv;
        String str;
        zzke zzkeVar2;
        String str2 = this.f16797a;
        if (str2 == null) {
            zzkeVar2 = this.f16801e.f17231a;
            zzv = zzkeVar2.m1689g().zzv();
            str = this.f16798b;
            zzifVar = null;
        } else {
            zzifVar = new zzif(this.f16799c, str2, this.f16800d);
            zzkeVar = this.f16801e.f17231a;
            zzv = zzkeVar.m1689g().zzv();
            str = this.f16798b;
        }
        zzv.zza(str, zzifVar);
    }
}
