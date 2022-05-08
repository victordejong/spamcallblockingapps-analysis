package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ax */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ax.class */
final /* synthetic */ class RunnableC1751ax implements Runnable {

    /* renamed from: a */
    private final zzaif f8276a;

    private RunnableC1751ax(zzaif zzaifVar) {
        this.f8276a = zzaifVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Runnable m4745a(zzaif zzaifVar) {
        return new RunnableC1751ax(zzaifVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8276a.destroy();
    }
}
