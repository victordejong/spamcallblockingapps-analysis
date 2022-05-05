package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.zn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zn.class */
final class C2416zn implements zzcoz<zzcbb> {

    /* renamed from: a */
    private final /* synthetic */ zzcyz f10765a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2416zn(zzcyz zzcyzVar) {
        this.f10765a = zzcyzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcoz
    public final /* synthetic */ void onSuccess(zzcbb zzcbbVar) {
        zzcbb zzcbbVar2;
        zzcbb zzcbbVar3 = zzcbbVar;
        synchronized (this.f10765a) {
            this.f10765a.f14072e = zzcbbVar3;
            zzcbbVar2 = this.f10765a.f14072e;
            zzcbbVar2.zzagf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcoz
    public final void zzamx() {
        synchronized (this.f10765a) {
            this.f10765a.f14072e = null;
        }
    }
}
