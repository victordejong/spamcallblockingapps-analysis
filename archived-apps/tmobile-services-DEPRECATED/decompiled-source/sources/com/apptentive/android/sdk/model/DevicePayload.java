package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.util.StringUtils;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/DevicePayload.class */
public class DevicePayload extends JsonPayload {
    static {
        JsonPayload.registerSensitiveKeys(DevicePayload.class);
    }

    public DevicePayload() {
        super(PayloadType.device);
    }

    public DevicePayload(String str) throws JSONException {
        super(PayloadType.device, str);
    }

    @Override // com.apptentive.android.sdk.model.Payload
    public String getHttpEndPoint(String str) {
        return StringUtils.format("/conversations/%s/device", str);
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload
    protected String getJsonContainer() {
        return "device";
    }

    public void setAdvertiserId(String str) {
        put("advertiser_id", str);
    }

    public void setBoard(String str) {
        put("board", str);
    }

    public void setBootloaderVersion(String str) {
        put("bootloader_version", str);
    }

    public void setBrand(String str) {
        put("brand", str);
    }

    public void setBuildId(String str) {
        put("build_id", str);
    }

    public void setBuildType(String str) {
        put("build_type", str);
    }

    public void setCarrier(String str) {
        put("carrier", str);
    }

    public void setCpu(String str) {
        put("cpu", str);
    }

    public void setCurrentCarrier(String str) {
        put("current_carrier", str);
    }

    public void setCustomData(CustomData customData) {
        put("custom_data", customData);
    }

    public void setDevice(String str) {
        put("device", str);
    }

    public void setIntegrationConfig(CustomData customData) {
        put("integration_config", customData);
    }

    public void setLocaleCountryCode(String str) {
        put("locale_country_code", str);
    }

    public void setLocaleLanguageCode(String str) {
        put("locale_language_code", str);
    }

    public void setLocaleRaw(String str) {
        put("locale_raw", str);
    }

    public void setManufacturer(String str) {
        put("manufacturer", str);
    }

    public void setModel(String str) {
        put("model", str);
    }

    public void setNetworkType(String str) {
        put("network_type", str);
    }

    public void setOsApiLevel(String str) {
        put("os_api_level", str);
    }

    public void setOsBuild(String str) {
        put("os_build", str);
    }

    public void setOsName(String str) {
        put("os_name", str);
    }

    public void setOsVersion(String str) {
        put("os_version", str);
    }

    public void setProduct(String str) {
        put("product", str);
    }

    public void setRadioVersion(String str) {
        put("radio_version", str);
    }

    public void setUtcOffset(String str) {
        put("utc_offset", str);
    }

    public void setUuid(String str) {
        put("uuid", str);
    }
}
