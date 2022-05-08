package com.aotter.net.trek.model;

import android.os.Build;
import androidx.annotation.NonNull;
import com.aotter.net.trek.common.util.Json;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/Device.class */
public class Device {
    public static final String DEVICE_AD_ID_KEY = "adID";
    public static final String DEVICE_ANDROID_KEY = "SDK_INT";
    public static final String DEVICE_APP_VERSION_KEY = "appVersion";
    public static final String DEVICE_DEVICE_BRAND_KEY = "deviceBrand";
    public static final String DEVICE_DEVICE_ID_KEY = "deviceID";
    public static final String DEVICE_DEVICE_MODEL_KEY = "deviceModel";
    public static final String DEVICE_NWK_COND_KEY = "networkCond";
    public static final String DEVICE_NWK_OP_KEY = "networkOperator";
    public static final String DEVICE_OS_VERSION_KEY = "osVersion";
    @NonNull
    public final Map<String, Object> mDeviceDetailsMap = new HashMap();

    public Device() {
        this.mDeviceDetailsMap.put(DEVICE_ANDROID_KEY, Integer.valueOf(Build.VERSION.SDK_INT));
    }

    public String getAdID() {
        return (String) this.mDeviceDetailsMap.get(DEVICE_AD_ID_KEY);
    }

    public String getDeviceID() {
        return (String) this.mDeviceDetailsMap.get(DEVICE_DEVICE_ID_KEY);
    }

    public void setAdID(String str) {
        if (str != null) {
            this.mDeviceDetailsMap.put(DEVICE_AD_ID_KEY, str);
        }
    }

    public void setAppVersion(String str) {
        if (str != null) {
            this.mDeviceDetailsMap.put(DEVICE_APP_VERSION_KEY, str);
        }
    }

    public void setDeviceBrand(String str) {
        if (str != null) {
            this.mDeviceDetailsMap.put(DEVICE_DEVICE_BRAND_KEY, str);
        }
    }

    public void setDeviceID(String str) {
        if (str != null) {
            this.mDeviceDetailsMap.put(DEVICE_DEVICE_ID_KEY, str);
        }
    }

    public void setDeviceModel(String str) {
        if (str != null) {
            this.mDeviceDetailsMap.put(DEVICE_DEVICE_MODEL_KEY, str);
        }
    }

    public void setNetworkCond(String str) {
        if (str != null) {
            this.mDeviceDetailsMap.put(DEVICE_NWK_COND_KEY, str);
        }
    }

    public void setNetworkOperator(String str) {
        if (str != null) {
            this.mDeviceDetailsMap.put(DEVICE_NWK_OP_KEY, str);
        }
    }

    public void setOsVersion(String str) {
        if (str != null) {
            this.mDeviceDetailsMap.put(DEVICE_OS_VERSION_KEY, str);
        }
    }

    public JSONObject toJsonObject() {
        return new JSONObject(this.mDeviceDetailsMap);
    }

    public String toJsonString() {
        return Json.mapToJsonString(this.mDeviceDetailsMap);
    }

    public String toString() {
        return toJsonString();
    }
}
