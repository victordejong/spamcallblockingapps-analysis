package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.vg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vg.class */
final class C2301vg implements zzdgt<zzbmd> {

    /* renamed from: a */
    private final /* synthetic */ zzcoz f10618a;

    /* renamed from: b */
    private final /* synthetic */ zzbvm f10619b;

    /* renamed from: c */
    private final /* synthetic */ zzcpb f10620c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2301vg(zzcpb zzcpbVar, zzcoz zzcozVar, zzbvm zzbvmVar) {
        this.f10620c = zzcpbVar;
        this.f10618a = zzcozVar;
        this.f10619b = zzbvmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(zzbmd zzbmdVar) {
        zzbmd zzbmdVar2 = zzbmdVar;
        synchronized (this.f10620c) {
            this.f10618a.onSuccess(zzbmdVar2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        this.f10619b.zzadd().onAdFailedToLoad(zzcfb.zzd(th));
        zzdad.zzc(th, "NativeAdLoader.onFailure");
        this.f10618a.zzamx();
    }
}
