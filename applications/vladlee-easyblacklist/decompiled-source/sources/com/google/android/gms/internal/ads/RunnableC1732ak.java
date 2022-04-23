package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ak */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ak.class */
final class RunnableC1732ak implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f7515a;

    /* renamed from: b */
    private final /* synthetic */ zzaih f7516b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1732ak(zzaih zzaihVar, String str) {
        this.f7516b = zzaihVar;
        this.f7515a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbdi zzbdiVar;
        zzbdiVar = this.f7516b.f10932a;
        zzbdiVar.loadUrl(this.f7515a);
    }
}
