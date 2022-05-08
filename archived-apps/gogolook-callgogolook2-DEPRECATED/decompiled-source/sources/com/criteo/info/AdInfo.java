package com.criteo.info;

import android.content.Context;
import com.criteo.utils.Tracer;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/criteo/info/AdInfo.class */
public abstract class AdInfo implements Serializable {
    public static final String TAG = "criteo.Stories.AdInfo";
    public static final long serialVersionUID = 1;
    public long mAdCacheTime;
    public String mAdId;

    public AdInfo() {
    }

    public AdInfo(String str) {
        Tracer.debug(TAG, "AdInfo: ");
        this.mAdId = str;
        this.mAdCacheTime = System.currentTimeMillis();
    }

    public abstract void deleteAllImages(Context context);

    public boolean equals(Object obj) {
        if (obj instanceof AdInfo) {
            return ((AdInfo) obj).mAdId.equals(this.mAdId);
        }
        return false;
    }

    public long getAdCacheTime() {
        Tracer.debug(TAG, "getAdCacheTime: " + this.mAdCacheTime);
        return this.mAdCacheTime;
    }

    public String getAdId() {
        Tracer.debug(TAG, "getAdId: " + this.mAdId);
        return this.mAdId;
    }

    public int hashCode() {
        return this.mAdId.hashCode();
    }

    public abstract boolean isAdValid(Context context);

    public abstract boolean isImageRequired(Context context);
}
