package com.facebook.ads;

import androidx.annotation.Keep;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/AdListener.class */
public interface AdListener {
    void onAdClicked(AbstractC7079Ad ad);

    void onAdLoaded(AbstractC7079Ad ad);

    void onError(AbstractC7079Ad ad, AdError adError);

    void onLoggingImpression(AbstractC7079Ad ad);
}
