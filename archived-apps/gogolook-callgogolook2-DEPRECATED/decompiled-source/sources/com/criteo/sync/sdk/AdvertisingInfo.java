package com.criteo.sync.sdk;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/AdvertisingInfo.class */
public class AdvertisingInfo {
    public final String advertisingId;
    public final boolean latEnabled;

    public AdvertisingInfo(String str, boolean z) {
        this.advertisingId = str;
        this.latEnabled = z;
    }

    public String getAdvertisingId() {
        return this.advertisingId;
    }

    public LimitedAdTracking getLimitedAdTracking() {
        return this.latEnabled ? LimitedAdTracking.ENABLED : LimitedAdTracking.DISABLED;
    }
}
