package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.nl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nl.class */
final /* synthetic */ class RunnableC2090nl implements Runnable {

    /* renamed from: a */
    private final zzbdi f10240a;

    private RunnableC2090nl(zzbdi zzbdiVar) {
        this.f10240a = zzbdiVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Runnable m4487a(zzbdi zzbdiVar) {
        return new RunnableC2090nl(zzbdiVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10240a.destroy();
    }
}
