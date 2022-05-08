package com.apptentive.android.sdk.migration.v4_0_0;

import com.apptentive.android.sdk.debug.ErrorMetrics;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/v4_0_0/Device.class */
public class Device extends JSONObject {
    public Device(String str) throws JSONException {
        super(str);
    }

    public String getBoard() {
        try {
            if (!isNull("board")) {
                return getString("board");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getBootloaderVersion() {
        try {
            if (!isNull("bootloader_version")) {
                return getString("bootloader_version");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getBrand() {
        try {
            if (!isNull("brand")) {
                return getString("brand");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getBuildId() {
        try {
            if (!isNull("build_id")) {
                return getString("build_id");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getBuildType() {
        try {
            if (!isNull("build_type")) {
                return getString("build_type");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getCarrier() {
        try {
            if (!isNull("carrier")) {
                return getString("carrier");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getCpu() {
        try {
            if (!isNull("cpu")) {
                return getString("cpu");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getCurrentCarrier() {
        try {
            if (!isNull("current_carrier")) {
                return getString("current_carrier");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public JSONObject getCustomData() {
        if (isNull("custom_data")) {
            return null;
        }
        try {
            return getJSONObject("custom_data");
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getDevice() {
        try {
            if (!isNull("device")) {
                return getString("device");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public JSONObject getIntegrationConfig() {
        if (isNull("integration_config")) {
            return null;
        }
        try {
            return getJSONObject("integration_config");
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getLocaleCountryCode() {
        try {
            if (!isNull("locale_country_code")) {
                return getString("locale_country_code");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getLocaleLanguageCode() {
        try {
            if (!isNull("locale_language_code")) {
                return getString("locale_language_code");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getLocaleRaw() {
        try {
            if (!isNull("locale_raw")) {
                return getString("locale_raw");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getManufacturer() {
        try {
            if (!isNull("manufacturer")) {
                return getString("manufacturer");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getModel() {
        try {
            if (!isNull("model")) {
                return getString("model");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getNetworkType() {
        try {
            if (!isNull("network_type")) {
                return getString("network_type");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getOsApiLevel() {
        try {
            if (!isNull("os_api_level")) {
                return getString("os_api_level");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getOsBuild() {
        try {
            if (!isNull("os_build")) {
                return getString("os_build");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getOsName() {
        try {
            if (!isNull("os_name")) {
                return getString("os_name");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getOsVersion() {
        try {
            if (!isNull("os_version")) {
                return getString("os_version");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getProduct() {
        try {
            if (!isNull("product")) {
                return getString("product");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getRadioVersion() {
        try {
            if (!isNull("radio_version")) {
                return getString("radio_version");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getUtcOffset() {
        try {
            if (!isNull("utc_offset")) {
                return getString("utc_offset");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getUuid() {
        try {
            if (!isNull("uuid")) {
                return getString("uuid");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }
}
