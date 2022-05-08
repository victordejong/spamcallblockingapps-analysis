package com.apptentive.android.sdk.module.engagement.interaction.model;

import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/UpgradeMessageInteraction.class */
public class UpgradeMessageInteraction extends Interaction {
    private static final String KEY_ACTIVE = "active";
    private static final String KEY_APP_VERSION = "app_version";
    private static final String KEY_BODY = "body";
    private static final String KEY_SHOW_APP_ICON = "show_app_icon";
    private static final String KEY_SHOW_POWERED_BY = "show_powered_by";

    public UpgradeMessageInteraction(String str) throws JSONException {
        super(str);
    }

    public String getAppVersion() {
        try {
            InteractionConfiguration configuration = getConfiguration();
            if (configuration == null || !configuration.has(KEY_APP_VERSION)) {
                return null;
            }
            return configuration.getString(KEY_APP_VERSION);
        } catch (JSONException e) {
            return null;
        }
    }

    public String getBody() {
        try {
            InteractionConfiguration configuration = getConfiguration();
            if (configuration == null || !configuration.has("body")) {
                return null;
            }
            return configuration.getString("body");
        } catch (JSONException e) {
            return null;
        }
    }

    public boolean isActive() {
        try {
            InteractionConfiguration configuration = getConfiguration();
            if (configuration == null || !configuration.has("active")) {
                return false;
            }
            return configuration.getBoolean("active");
        } catch (JSONException e) {
            return false;
        }
    }

    public boolean isShowAppIcon() {
        try {
            InteractionConfiguration configuration = getConfiguration();
            if (configuration == null || !configuration.has(KEY_SHOW_APP_ICON)) {
                return false;
            }
            return configuration.getBoolean(KEY_SHOW_APP_ICON);
        } catch (JSONException e) {
            return false;
        }
    }

    public boolean isShowPoweredBy() {
        try {
            InteractionConfiguration configuration = getConfiguration();
            if (configuration == null || !configuration.has(KEY_SHOW_POWERED_BY)) {
                return false;
            }
            return configuration.getBoolean(KEY_SHOW_POWERED_BY);
        } catch (JSONException e) {
            return false;
        }
    }
}
