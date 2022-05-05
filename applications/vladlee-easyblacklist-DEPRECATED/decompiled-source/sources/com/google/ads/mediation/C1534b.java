package com.google.ads.mediation;

import android.os.Bundle;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
/* renamed from: com.google.ads.mediation.b */
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/b.class */
final class C1534b extends AdMetadataListener {

    /* renamed from: a */
    private final /* synthetic */ AbstractAdViewAdapter f5801a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1534b(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.f5801a = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        InterstitialAd interstitialAd;
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        InterstitialAd interstitialAd2;
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener2;
        interstitialAd = this.f5801a.zzlu;
        if (interstitialAd != null) {
            mediationRewardedVideoAdListener = this.f5801a.zzlv;
            if (mediationRewardedVideoAdListener != null) {
                interstitialAd2 = this.f5801a.zzlu;
                Bundle adMetadata = interstitialAd2.getAdMetadata();
                mediationRewardedVideoAdListener2 = this.f5801a.zzlv;
                mediationRewardedVideoAdListener2.zzb(adMetadata);
            }
        }
    }
}
