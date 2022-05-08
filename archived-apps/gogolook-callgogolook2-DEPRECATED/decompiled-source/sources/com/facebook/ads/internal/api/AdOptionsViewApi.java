package com.facebook.ads.internal.api;

import androidx.annotation.Keep;
import androidx.annotation.UiThread;
@Keep
@UiThread
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/AdOptionsViewApi.class */
public interface AdOptionsViewApi extends AdComponentViewApiProvider {
    void setIconColor(int i);

    void setIconSizeDp(int i);

    void setSingleIcon(boolean z);
}
