package com.facebook.ads.internal.api;

import android.content.res.Configuration;
import androidx.annotation.Keep;
import com.facebook.ads.AbstractC7079Ad;
import com.facebook.ads.AdListener;
import com.facebook.ads.ExtraHints;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/AdViewApi.class */
public interface AdViewApi extends AdViewParentApi, AbstractC7079Ad {
    @Override // com.facebook.ads.internal.api.AdViewParentApi
    void onConfigurationChanged(Configuration configuration);

    void setAdListener(AdListener adListener);

    @Override // com.facebook.ads.AbstractC7079Ad
    void setExtraHints(ExtraHints extraHints);
}
