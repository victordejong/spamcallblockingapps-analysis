package com.google.ads.consent;
/* loaded from: classes-dex2jar.jar:com/google/ads/consent/ConsentInfoUpdateListener.class */
public interface ConsentInfoUpdateListener {
    void onConsentInfoUpdated(ConsentStatus consentStatus);

    void onFailedToUpdateConsentInfo(String str);
}
