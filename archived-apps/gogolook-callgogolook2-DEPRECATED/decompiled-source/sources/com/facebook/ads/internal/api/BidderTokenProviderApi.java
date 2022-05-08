package com.facebook.ads.internal.api;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.WorkerThread;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/BidderTokenProviderApi.class */
public interface BidderTokenProviderApi {
    @WorkerThread
    String getBidderToken(Context context);
}
