package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.tl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tl.class */
final /* synthetic */ class RunnableC2252tl implements Runnable {

    /* renamed from: a */
    private final zzccd f10510a;

    private RunnableC2252tl(zzccd zzccdVar) {
        this.f10510a = zzccdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Runnable m4465a(zzccd zzccdVar) {
        return new RunnableC2252tl(zzccdVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10510a.zzakx();
    }
}
