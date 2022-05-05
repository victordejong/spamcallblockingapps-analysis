package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apf.class */
public final class apf implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzgw f8105a;

    /* renamed from: b */
    private final /* synthetic */ zzpg f8106b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public apf(zzpg zzpgVar, zzgw zzgwVar) {
        this.f8106b = zzpgVar;
        this.f8105a = zzgwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpd zzpdVar;
        zzpdVar = this.f8106b.f15314b;
        zzpdVar.zzk(this.f8105a);
    }
}
