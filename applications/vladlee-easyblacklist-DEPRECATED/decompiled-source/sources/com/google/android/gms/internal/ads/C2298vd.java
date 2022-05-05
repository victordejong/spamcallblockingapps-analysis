package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.vd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vd.class */
final class C2298vd implements zzdgt<zzbtu> {

    /* renamed from: a */
    private final /* synthetic */ zzbup f10613a;

    /* renamed from: b */
    private final /* synthetic */ zzcor f10614b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2298vd(zzcor zzcorVar, zzbup zzbupVar) {
        this.f10614b = zzcorVar;
        this.f10613a = zzbupVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(zzbtu zzbtuVar) {
        zzbtu zzbtuVar2 = zzbtuVar;
        synchronized (this.f10614b) {
            this.f10614b.f13480j = null;
            this.f10614b.f13479i = zzbtuVar2;
            zzbtuVar2.zzagf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        synchronized (this.f10614b) {
            this.f10614b.f13480j = null;
            this.f10613a.zzadd().onAdFailedToLoad(zzcfb.zzd(th));
            zzdad.zzc(th, "InterstitialAdManagerShim.onFailure");
        }
    }
}
