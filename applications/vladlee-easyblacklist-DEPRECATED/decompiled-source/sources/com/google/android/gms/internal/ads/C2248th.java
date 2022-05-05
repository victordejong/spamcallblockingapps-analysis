package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.th */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/th.class */
public final class C2248th implements zzdgt<zzbkk> {

    /* renamed from: a */
    private final /* synthetic */ zzcjr f10499a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2248th(zzcjr zzcjrVar) {
        this.f10499a = zzcjrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(zzbkk zzbkkVar) {
        zzbkkVar.zzagf();
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        zzbou zzbouVar;
        zzbouVar = this.f10499a.f13234d;
        zzbouVar.onAdFailedToLoad(zzcfb.zzd(th));
        zzdad.zzc(th, "DelayedBannerAd.onFailure");
    }
}
