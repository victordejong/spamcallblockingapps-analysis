package com.apptentive.android.sdk.model;

import android.content.Context;
import android.content.SharedPreferences;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.util.Constants;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/Configuration.class */
public class Configuration extends JSONObject {
    private static final String KEY_APP_DISPLAY_NAME = "app_display_name";
    private static final String KEY_COLLECT_AD_ID = "collect_ad_id";
    private static final String KEY_COLLECT_APPTIMIZE_DATA = "apptimize_integration";
    private static final String KEY_CONFIGURATION_CACHE_EXPIRATION_MILLIS = "configuration_cache_expiration_millis";
    private static final String KEY_HIDE_BRANDING = "hide_branding";
    private static final String KEY_MESSAGE_CENTER = "message_center";
    private static final String KEY_MESSAGE_CENTER_BG_POLL = "bg_poll";
    private static final String KEY_MESSAGE_CENTER_ENABLED = "message_center_enabled";
    private static final String KEY_MESSAGE_CENTER_FG_POLL = "fg_poll";
    private static final String KEY_MESSAGE_CENTER_NOTIFICATION_POPUP = "notification_popup";
    private static final String KEY_MESSAGE_CENTER_NOTIFICATION_POPUP_ENABLED = "enabled";
    private static final String KEY_METRICS_ENABLED = "metrics_enabled";
    private static Configuration cachedConfiguration;

    public Configuration() {
    }

    public Configuration(String str) throws JSONException {
        super(str);
    }

    private boolean getBoolean(String str, boolean z) {
        try {
            return optBoolean(str, z);
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception while getting boolean key '%s'", str);
            return z;
        }
    }

    private JSONObject getMessageCenter() {
        try {
            if (!isNull(KEY_MESSAGE_CENTER)) {
                return getJSONObject(KEY_MESSAGE_CENTER);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public static Configuration load() {
        if (cachedConfiguration == null) {
            cachedConfiguration = load(ApptentiveInternal.getInstance().getGlobalSharedPrefs());
        }
        return cachedConfiguration;
    }

    public static Configuration load(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString(Constants.PREF_KEY_APP_CONFIG_JSON, null);
        if (string != null) {
            try {
                return new Configuration(string);
            } catch (JSONException e) {
                ApptentiveLog.m408e(e, "Error loading Configuration from SharedPreferences.", new Object[0]);
            }
        }
        return new Configuration();
    }

    public String getAppDisplayName() {
        try {
            if (!isNull(KEY_APP_DISPLAY_NAME)) {
                return getString(KEY_APP_DISPLAY_NAME);
            }
        } catch (JSONException e) {
        }
        return ApptentiveInternal.getInstance().getDefaultAppDisplayName();
    }

    public long getConfigurationCacheExpirationMillis() {
        try {
            if (!isNull(KEY_CONFIGURATION_CACHE_EXPIRATION_MILLIS)) {
                return getLong(KEY_CONFIGURATION_CACHE_EXPIRATION_MILLIS);
            }
            return 0L;
        } catch (JSONException e) {
            return 0L;
        }
    }

    public int getMessageCenterBgPoll() {
        try {
            JSONObject messageCenter = getMessageCenter();
            if (messageCenter == null || messageCenter.isNull(KEY_MESSAGE_CENTER_BG_POLL)) {
                return 60;
            }
            return messageCenter.getInt(KEY_MESSAGE_CENTER_BG_POLL);
        } catch (JSONException e) {
            return 60;
        }
    }

    public int getMessageCenterFgPoll() {
        try {
            JSONObject messageCenter = getMessageCenter();
            if (messageCenter == null || messageCenter.isNull(KEY_MESSAGE_CENTER_FG_POLL)) {
                return 15;
            }
            return messageCenter.getInt(KEY_MESSAGE_CENTER_FG_POLL);
        } catch (JSONException e) {
            return 15;
        }
    }

    public boolean hasConfigurationCacheExpired() {
        return getConfigurationCacheExpirationMillis() < System.currentTimeMillis();
    }

    public boolean isCollectingAdID() {
        return getBoolean(KEY_COLLECT_AD_ID, false);
    }

    public boolean isCollectingApptimizeData() {
        return optBoolean(KEY_COLLECT_APPTIMIZE_DATA, false);
    }

    public boolean isHideBranding(Context context) {
        try {
            if (!isNull(KEY_HIDE_BRANDING)) {
                return getBoolean(KEY_HIDE_BRANDING);
            }
        } catch (JSONException e) {
        }
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean(Constants.MANIFEST_KEY_INITIALLY_HIDE_BRANDING, false);
        } catch (Exception e2) {
            ApptentiveLog.m398w(ApptentiveLogTag.CONVERSATION, e2, "Unexpected error while reading %s manifest setting.", Constants.MANIFEST_KEY_INITIALLY_HIDE_BRANDING);
            return false;
        }
    }

    public boolean isMessageCenterEnabled() {
        return getBoolean(KEY_MESSAGE_CENTER_ENABLED, false);
    }

    public boolean isMessageCenterNotificationPopupEnabled() {
        JSONObject optJSONObject;
        JSONObject messageCenter = getMessageCenter();
        if (messageCenter == null || messageCenter.isNull(KEY_MESSAGE_CENTER_NOTIFICATION_POPUP) || (optJSONObject = messageCenter.optJSONObject(KEY_MESSAGE_CENTER_NOTIFICATION_POPUP)) == null) {
            return false;
        }
        return optJSONObject.optBoolean(KEY_MESSAGE_CENTER_NOTIFICATION_POPUP_ENABLED, false);
    }

    public boolean isMetricsEnabled() {
        return getBoolean(KEY_METRICS_ENABLED, true);
    }

    public void save() {
        ApptentiveInternal.getInstance().getGlobalSharedPrefs().edit().putString(Constants.PREF_KEY_APP_CONFIG_JSON, toString()).apply();
        cachedConfiguration = this;
    }

    public void setConfigurationCacheExpirationMillis(long j) {
        try {
            put(KEY_CONFIGURATION_CACHE_EXPIRATION_MILLIS, j);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Configuration.", KEY_CONFIGURATION_CACHE_EXPIRATION_MILLIS);
        }
    }
}
