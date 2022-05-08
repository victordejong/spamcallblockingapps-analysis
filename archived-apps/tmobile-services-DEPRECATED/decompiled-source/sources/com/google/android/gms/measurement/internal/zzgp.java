package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgp.class */
final class zzgp implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ String f9355f;

    /* renamed from: g */
    private final /* synthetic */ String f9356g;

    /* renamed from: h */
    private final /* synthetic */ String f9357h;

    /* renamed from: i */
    private final /* synthetic */ long f9358i;

    /* renamed from: j */
    private final /* synthetic */ zzfw f9359j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgp(zzfw zzfwVar, String str, String str2, String str3, long j) {
        this.f9359j = zzfwVar;
        this.f9355f = str;
        this.f9356g = str2;
        this.f9357h = str3;
        this.f9358i = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzki zzkiVar;
        zzki zzkiVar2;
        String str = this.f9355f;
        if (str == null) {
            zzkiVar2 = this.f9359j.f9302a;
            zzkiVar2.m11062l0().m11373O().m11215Q(this.f9356g, null);
            return;
        }
        zzig zzigVar = new zzig(this.f9357h, str, this.f9358i);
        zzkiVar = this.f9359j.f9302a;
        zzkiVar.m11062l0().m11373O().m11215Q(this.f9356g, zzigVar);
    }
}
