package com.apptentive.android.sdk.migration.v4_0_0;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/v4_0_0/AppRelease.class */
public class AppRelease extends JSONObject {
    private static final String KEY_APP_STORE = "app_store";
    private static final String KEY_DEBUG = "debug";
    private static final String KEY_IDENTIFIER = "identifier";
    private static final String KEY_STYLE_INHERIT = "inheriting_styles";
    private static final String KEY_STYLE_OVERRIDE = "overriding_styles";
    private static final String KEY_TARGET_SDK_VERSION = "target_sdk_version";
    private static final String KEY_TYPE = "type";
    private static final String KEY_VERSION_CODE = "version_code";
    private static final String KEY_VERSION_NAME = "version_name";

    public AppRelease(String str) throws JSONException {
        super(str);
    }

    public String getAppStore() {
        if (!isNull(KEY_APP_STORE)) {
            return optString(KEY_APP_STORE, null);
        }
        return null;
    }

    public boolean getDebug() {
        return optBoolean("debug");
    }

    public String getIdentifier() {
        if (!isNull("identifier")) {
            return optString("identifier", null);
        }
        return null;
    }

    public boolean getInheritStyle() {
        return optBoolean(KEY_STYLE_INHERIT);
    }

    public boolean getOverrideStyle() {
        return optBoolean(KEY_STYLE_OVERRIDE);
    }

    public String getTargetSdkVersion() {
        if (!isNull(KEY_TARGET_SDK_VERSION)) {
            return optString(KEY_TARGET_SDK_VERSION);
        }
        return null;
    }

    public String getType() {
        if (!isNull("type")) {
            return optString("type", null);
        }
        return null;
    }

    public int getVersionCode() {
        if (!isNull(KEY_VERSION_CODE)) {
            return optInt(KEY_VERSION_CODE, -1);
        }
        return -1;
    }

    public String getVersionName() {
        if (!isNull(KEY_VERSION_NAME)) {
            return optString(KEY_VERSION_NAME, null);
        }
        return null;
    }

    public void setAppStore(String str) {
        try {
            put(KEY_APP_STORE, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to AppRelease.", KEY_APP_STORE);
        }
    }

    public void setDebug(boolean z) {
        try {
            put("debug", z);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to AppRelease.", "debug");
        }
    }

    public void setIdentifier(String str) {
        try {
            put("identifier", str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to AppRelease.", "identifier");
        }
    }

    public void setInheritStyle(boolean z) {
        try {
            put(KEY_STYLE_INHERIT, z);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to AppRelease.", KEY_STYLE_INHERIT);
        }
    }

    public void setOverrideStyle(boolean z) {
        try {
            put(KEY_STYLE_OVERRIDE, z);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to AppRelease.", KEY_STYLE_OVERRIDE);
        }
    }

    public void setTargetSdkVersion(String str) {
        try {
            put(KEY_TARGET_SDK_VERSION, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to AppRelease.", KEY_TARGET_SDK_VERSION);
        }
    }

    public void setType(String str) {
        try {
            put("type", str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to AppRelease.", "type");
        }
    }

    public void setVersionCode(int i) {
        try {
            put(KEY_VERSION_CODE, i);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to AppRelease.", KEY_VERSION_CODE);
        }
    }

    public void setVersionName(String str) {
        try {
            put(KEY_VERSION_NAME, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to AppRelease.", KEY_VERSION_NAME);
        }
    }
}
