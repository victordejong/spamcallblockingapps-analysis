package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.uf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/uf.class */
final /* synthetic */ class RunnableC2273uf implements Runnable {

    /* renamed from: a */
    private final zzccd f10556a;

    private RunnableC2273uf(zzccd zzccdVar) {
        this.f10556a = zzccdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Runnable m4464a(zzccd zzccdVar) {
        return new RunnableC2273uf(zzccdVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10556a.zzakx();
    }
}
