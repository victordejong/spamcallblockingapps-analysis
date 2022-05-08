package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.go */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/go.class */
final class RunnableC1904go implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzazx f8509a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1904go(zzazx zzazxVar) {
        this.f8509a = zzazxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbah zzbahVar;
        zzbah zzbahVar2;
        zzbah zzbahVar3;
        zzbahVar = this.f8509a.f11576r;
        if (zzbahVar != null) {
            zzbahVar2 = this.f8509a.f11576r;
            zzbahVar2.onPaused();
            zzbahVar3 = this.f8509a.f11576r;
            zzbahVar3.zzxw();
        }
    }
}
