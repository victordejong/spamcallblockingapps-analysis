package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.al */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/al.class */
final class RunnableC1737al implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f7557a;

    /* renamed from: b */
    private final /* synthetic */ zzaih f7558b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1737al(zzaih zzaihVar, String str) {
        this.f7558b = zzaihVar;
        this.f7557a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbdi zzbdiVar;
        zzbdiVar = this.f7558b.f10932a;
        zzbdiVar.loadData(this.f7557a, "text/html", "UTF-8");
    }
}
