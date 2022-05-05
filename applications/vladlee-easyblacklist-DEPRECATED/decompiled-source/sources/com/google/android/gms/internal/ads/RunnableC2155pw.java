package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.pw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pw.class */
final /* synthetic */ class RunnableC2155pw implements Runnable {

    /* renamed from: a */
    private final zzbdi f10349a;

    private RunnableC2155pw(zzbdi zzbdiVar) {
        this.f10349a = zzbdiVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Runnable m4482a(zzbdi zzbdiVar) {
        return new RunnableC2155pw(zzbdiVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10349a.destroy();
    }
}
