package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.iy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/iy.class */
final class RunnableC1968iy implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzbdu f8669a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1968iy(zzbdu zzbduVar) {
        this.f8669a = zzbduVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbdi zzbdiVar;
        zzbdiVar = this.f8669a.f11761a;
        zzbdiVar.destroy();
    }
}
