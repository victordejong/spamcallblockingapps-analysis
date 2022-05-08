package com.facebook.ads.internal.api;

import androidx.annotation.Keep;
import com.facebook.ads.NativeAdLayout;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/NativeAdLayoutApi.class */
public interface NativeAdLayoutApi extends AdComponentViewApiProvider {
    void initialize(NativeAdLayout nativeAdLayout);

    void setMaxWidth(int i);

    void setMinWidth(int i);
}
