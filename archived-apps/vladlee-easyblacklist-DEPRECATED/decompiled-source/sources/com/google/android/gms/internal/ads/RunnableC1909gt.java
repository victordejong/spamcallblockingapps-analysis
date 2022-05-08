package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.gt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gt.class */
final /* synthetic */ class RunnableC1909gt implements Runnable {

    /* renamed from: a */
    private final zzbag f8517a;

    private RunnableC1909gt(zzbag zzbagVar) {
        this.f8517a = zzbagVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Runnable m4721a(zzbag zzbagVar) {
        return new RunnableC1909gt(zzbagVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8517a.stop();
    }
}
