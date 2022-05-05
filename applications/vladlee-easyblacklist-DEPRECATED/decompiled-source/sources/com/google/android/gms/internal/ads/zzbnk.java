package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnk.class */
public final class zzbnk implements zzbov, zzbpe, zzbqb, zzbqx, zzty {

    /* renamed from: a */
    private final Clock f12182a;

    /* renamed from: b */
    private final zzavd f12183b;

    public zzbnk(Clock clock, zzavd zzavdVar) {
        this.f12182a = clock;
        this.f12183b = zzavdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzty
    public final void onAdClicked() {
        this.f12183b.zzuw();
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdClosed() {
        this.f12183b.zzux();
    }

    @Override // com.google.android.gms.internal.ads.zzbpe
    public final void onAdImpression() {
        this.f12183b.zzuv();
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzbqb
    public final void onAdLoaded() {
        this.f12183b.zzan(true);
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdOpened() {
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onRewardedVideoStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbqx
    public final void zzb(zzaqk zzaqkVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void zzb(zzare zzareVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzbqx
    public final void zzb(zzczt zzcztVar) {
        this.f12183b.zzey(this.f12182a.elapsedRealtime());
    }

    public final void zzf(zzug zzugVar) {
        this.f12183b.zze(zzugVar);
    }

    public final String zzuy() {
        return this.f12183b.zzuy();
    }
}
