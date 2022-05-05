package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.xx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xx.class */
public final class C2372xx implements zzdgt<zzbke> {

    /* renamed from: a */
    private final /* synthetic */ zzcoz f10703a;

    /* renamed from: b */
    private final /* synthetic */ zzcwl f10704b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2372xx(zzcwl zzcwlVar, zzcoz zzcozVar) {
        this.f10704b = zzcwlVar;
        this.f10703a = zzcozVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(zzbke zzbkeVar) {
        zzbke zzbkeVar2 = zzbkeVar;
        synchronized (this.f10704b) {
            this.f10704b.f13995h = null;
            this.f10703a.onSuccess(zzbkeVar2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        zzcxt zzcxtVar;
        synchronized (this.f10704b) {
            this.f10704b.f13995h = null;
            zzcxtVar = this.f10704b.f13992e;
            ((zzbka) zzcxtVar.zzaog()).zzadd().onAdFailedToLoad(zzcfb.zzd(th));
            zzdad.zzc(th, "AppOpenAdLoader.onFailure");
            this.f10703a.zzamx();
        }
    }
}
