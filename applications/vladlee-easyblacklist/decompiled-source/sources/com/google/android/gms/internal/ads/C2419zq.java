package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.zq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zq.class */
final class C2419zq implements zzcoz<zzcbb> {

    /* renamed from: a */
    private final /* synthetic */ zzczf f10769a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2419zq(zzczf zzczfVar) {
        this.f10769a = zzczfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcoz
    public final /* synthetic */ void onSuccess(zzcbb zzcbbVar) {
        zzcbb zzcbbVar2;
        zzcbb zzcbbVar3 = zzcbbVar;
        synchronized (this.f10769a) {
            this.f10769a.f14080d = zzcbbVar3;
            zzcbbVar2 = this.f10769a.f14080d;
            zzcbbVar2.zzagf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcoz
    public final void zzamx() {
        synchronized (this.f10769a) {
            this.f10769a.f14080d = null;
        }
    }
}
