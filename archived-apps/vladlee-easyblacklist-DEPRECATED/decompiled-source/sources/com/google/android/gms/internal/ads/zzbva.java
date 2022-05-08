package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbva.class */
public final class zzbva implements zzbov {

    /* renamed from: a */
    private final zzbpd f12442a;

    /* renamed from: b */
    private final zzczl f12443b;

    public zzbva(zzbpd zzbpdVar, zzczl zzczlVar) {
        this.f12442a = zzbpdVar;
        this.f12443b = zzczlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdClosed() {
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdOpened() {
        if (this.f12443b.zzglz == 0 || this.f12443b.zzglz == 1) {
            this.f12442a.onAdImpression();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onRewardedVideoStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void zzb(zzare zzareVar, String str, String str2) {
    }
}
