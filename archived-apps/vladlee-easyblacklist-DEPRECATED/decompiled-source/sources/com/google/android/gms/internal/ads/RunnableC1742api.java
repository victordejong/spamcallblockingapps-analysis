package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.api */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/api.class */
public final class RunnableC1742api implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f8116a;

    /* renamed from: b */
    private final /* synthetic */ long f8117b;

    /* renamed from: c */
    private final /* synthetic */ zzpg f8118c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1742api(zzpg zzpgVar, int i, long j) {
        this.f8118c = zzpgVar;
        this.f8116a = i;
        this.f8117b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpd zzpdVar;
        zzpdVar = this.f8118c.f15314b;
        zzpdVar.zze(this.f8116a, this.f8117b);
    }
}
