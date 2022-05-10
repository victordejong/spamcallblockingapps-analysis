package com.facebook.ads.internal.bridge.gms;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/bridge/gms/AdvertisingId.class */
public class AdvertisingId {
    public final String mId;
    public final boolean mLimitAdTracking;

    public AdvertisingId(String str, boolean z) {
        this.mId = str;
        this.mLimitAdTracking = z;
    }

    public static AdvertisingId getAdvertisingIdInfoDirectly(Context context) {
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            if (advertisingIdInfo != null) {
                return new AdvertisingId(advertisingIdInfo.getId(), advertisingIdInfo.isLimitAdTrackingEnabled());
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    public String getId() {
        return this.mId;
    }

    public boolean isLimitAdTracking() {
        return this.mLimitAdTracking;
    }
}
