package com.criteo.mediation.mopub;

import androidx.annotation.NonNull;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.CriteoInterstitialAdDisplayListener;
import com.criteo.publisher.CriteoInterstitialAdListener;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.MoPubErrorCode;
/* renamed from: com.criteo.mediation.mopub.c */
/* loaded from: classes-dex2jar.jar:com/criteo/mediation/mopub/c.class */
public class C1893c implements CriteoInterstitialAdListener, CriteoInterstitialAdDisplayListener {
    @NonNull

    /* renamed from: a */
    public final CustomEventInterstitial.CustomEventInterstitialListener f1972a;

    public C1893c(@NonNull CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
        this.f1972a = customEventInterstitialListener;
    }

    @Override // com.criteo.publisher.CriteoAdListener
    public void onAdClicked() {
        this.f1972a.onInterstitialClicked();
    }

    @Override // com.criteo.publisher.CriteoAdListener
    public void onAdClosed() {
        this.f1972a.onInterstitialDismissed();
    }

    @Override // com.criteo.publisher.CriteoInterstitialAdDisplayListener
    public void onAdFailedToDisplay(CriteoErrorCode criteoErrorCode) {
        this.f1972a.onInterstitialFailed(MoPubErrorCode.NETWORK_TIMEOUT);
    }

    @Override // com.criteo.publisher.CriteoAdListener
    public void onAdFailedToReceive(CriteoErrorCode criteoErrorCode) {
        this.f1972a.onInterstitialFailed(C1894d.m36070a(criteoErrorCode));
    }

    @Override // com.criteo.publisher.CriteoAdListener
    public void onAdLeftApplication() {
        this.f1972a.onLeaveApplication();
    }

    @Override // com.criteo.publisher.CriteoAdListener
    public void onAdOpened() {
        this.f1972a.onInterstitialShown();
    }

    @Override // com.criteo.publisher.CriteoInterstitialAdDisplayListener
    public void onAdReadyToDisplay() {
        this.f1972a.onInterstitialLoaded();
    }

    @Override // com.criteo.publisher.CriteoInterstitialAdListener
    public void onAdReceived() {
    }
}
