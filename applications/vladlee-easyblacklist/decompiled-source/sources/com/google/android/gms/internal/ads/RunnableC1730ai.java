package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ai */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ai.class */
final class RunnableC1730ai implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f7395a;

    /* renamed from: b */
    private final /* synthetic */ zzaih f7396b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1730ai(zzaih zzaihVar, String str) {
        this.f7396b = zzaihVar;
        this.f7395a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbdi zzbdiVar;
        zzbdiVar = this.f7396b.f10932a;
        zzbdiVar.loadData(this.f7395a, "text/html", "UTF-8");
    }
}
