package com.apptentive.android.sdk.storage;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.model.Configuration;
import com.apptentive.android.sdk.util.AdvertiserManager;
import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.StringUtils;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/DeviceManager.class */
public class DeviceManager {
    private final String androidID;

    public DeviceManager(String str) {
        if (!StringUtils.isNullOrEmpty(str)) {
            this.androidID = str;
            return;
        }
        throw new IllegalArgumentException("Android ID is null or empty");
    }

    public Device generateNewDevice(Context context) {
        Device device = new Device();
        device.setOsName("Android");
        device.setOsVersion(Build.VERSION.RELEASE);
        device.setOsBuild(Build.VERSION.INCREMENTAL);
        device.setOsApiLevel(Build.VERSION.SDK_INT);
        device.setManufacturer(Build.MANUFACTURER);
        device.setModel(Build.MODEL);
        device.setBoard(Build.BOARD);
        device.setProduct(Build.PRODUCT);
        device.setBrand(Build.BRAND);
        device.setCpu(Build.CPU_ABI);
        device.setDevice(Build.DEVICE);
        device.setUuid(this.androidID);
        device.setBuildType(Build.TYPE);
        device.setBuildId(Build.ID);
        try {
            if (Configuration.load().isCollectingAdID()) {
                AdvertiserManager.AdvertisingIdClientInfo advertisingIdClientInfo = AdvertiserManager.getAdvertisingIdClientInfo();
                if (advertisingIdClientInfo == null || advertisingIdClientInfo.isLimitAdTrackingEnabled()) {
                    ApptentiveLog.m15633w("Advertising ID tracking is not available or limited", new Object[0]);
                } else {
                    device.setAdvertiserId(advertisingIdClientInfo.getId());
                }
            }
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception while collecting advertising ID", new Object[0]);
            ErrorMetrics.logException(e);
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        device.setCarrier(telephonyManager.getSimOperatorName());
        device.setCurrentCarrier(telephonyManager.getNetworkOperatorName());
        device.setNetworkType(Constants.networkTypeAsString(telephonyManager.getNetworkType()));
        try {
            device.setBootloaderVersion((String) Build.class.getField("BOOTLOADER").get(null));
        } catch (Exception e2) {
            ErrorMetrics.logException(e2);
        }
        device.setRadioVersion(Build.getRadioVersion());
        device.setLocaleCountryCode(Locale.getDefault().getCountry());
        device.setLocaleLanguageCode(Locale.getDefault().getLanguage());
        device.setLocaleRaw(Locale.getDefault().toString());
        device.setUtcOffset(String.valueOf(TimeZone.getDefault().getRawOffset() / 1000));
        return device;
    }
}
