package com.criteo.mediation.mopub.advancednative;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.criteo.mediation.mopub.C1894d;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.advancednative.CriteoNativeAd;
import com.criteo.publisher.advancednative.CriteoNativeAdListener;
import com.mopub.nativeads.CustomEventNative;
/* renamed from: com.criteo.mediation.mopub.advancednative.a */
/* loaded from: classes-dex2jar.jar:com/criteo/mediation/mopub/advancednative/a.class */
public class C1890a extends CriteoNativeAdListener {
    @NonNull

    /* renamed from: a */
    public final CustomEventNative.CustomEventNativeListener f1969a;
    @Nullable
    @VisibleForTesting

    /* renamed from: b */
    public CriteoBaseNativeAd f1970b;

    public C1890a(@NonNull CustomEventNative.CustomEventNativeListener customEventNativeListener) {
        this.f1969a = customEventNativeListener;
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public void onAdClicked() {
        CriteoBaseNativeAd criteoBaseNativeAd = this.f1970b;
        if (criteoBaseNativeAd != null) {
            criteoBaseNativeAd.m36074b();
        }
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public void onAdFailedToReceive(@NonNull CriteoErrorCode criteoErrorCode) {
        this.f1969a.onNativeAdFailed(C1894d.m36069b(criteoErrorCode));
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public void onAdImpression() {
        CriteoBaseNativeAd criteoBaseNativeAd = this.f1970b;
        if (criteoBaseNativeAd != null) {
            criteoBaseNativeAd.m36073c();
        }
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public void onAdReceived(@NonNull CriteoNativeAd criteoNativeAd) {
        CriteoBaseNativeAd criteoBaseNativeAd = new CriteoBaseNativeAd(criteoNativeAd, this);
        this.f1970b = criteoBaseNativeAd;
        this.f1969a.onNativeAdLoaded(criteoBaseNativeAd);
    }
}
