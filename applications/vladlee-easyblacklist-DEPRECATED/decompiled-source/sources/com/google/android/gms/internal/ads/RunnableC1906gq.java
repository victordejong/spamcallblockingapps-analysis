package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.gq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gq.class */
final class RunnableC1906gq implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzazx f8513a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1906gq(zzazx zzazxVar) {
        this.f8513a = zzazxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbah zzbahVar;
        zzbah zzbahVar2;
        zzbahVar = this.f8513a.f11576r;
        if (zzbahVar != null) {
            zzbahVar2 = this.f8513a.f11576r;
            zzbahVar2.onPaused();
        }
    }
}
