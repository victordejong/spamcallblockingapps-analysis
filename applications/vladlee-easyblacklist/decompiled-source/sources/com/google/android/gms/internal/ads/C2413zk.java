package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.zk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zk.class */
public final class C2413zk implements zzdgt<zzcbb> {

    /* renamed from: a */
    private final /* synthetic */ zzcoz f10760a;

    /* renamed from: b */
    private final /* synthetic */ zzcyt f10761b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2413zk(zzcyt zzcytVar, zzcoz zzcozVar) {
        this.f10761b = zzcytVar;
        this.f10760a = zzcozVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(zzcbb zzcbbVar) {
        zzcxz zzcxzVar;
        zzcbb zzcbbVar2 = zzcbbVar;
        synchronized (this.f10761b) {
            this.f10760a.onSuccess(zzcbbVar2);
            zzcxzVar = this.f10761b.f14056d;
            zzcxzVar.onAdMetadataChanged();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        zzcxt zzcxtVar;
        synchronized (this.f10761b) {
            zzcxtVar = this.f10761b.f14057e;
            ((zzcbi) zzcxtVar.zzaog()).zzadd().onAdFailedToLoad(zzcfb.zzd(th));
            zzdad.zzc(th, "RewardedAdLoader.onFailure");
            this.f10760a.zzamx();
        }
    }
}
