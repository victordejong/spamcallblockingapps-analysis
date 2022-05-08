package com.apptentive.android.sdk.module.engagement.interaction.model;

import android.content.Context;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.model.Configuration;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction.class */
public class RatingDialogInteraction extends Interaction {
    private static final String KEY_BODY = "body";
    private static final String KEY_DECLINE_TEXT = "decline_text";
    private static final String KEY_RATE_TEXT = "rate_text";
    private static final String KEY_REMIND_TEXT = "remind_text";
    private static final String KEY_TITLE = "title";

    public RatingDialogInteraction(String str) throws JSONException {
        super(str);
    }

    public String getBody(Context context) {
        InteractionConfiguration configuration = getConfiguration();
        return (configuration == null || configuration.isNull("body")) ? String.format(context.getResources().getString(C0724R.string.apptentive_rating_message_fs), Configuration.load().getAppDisplayName()) : configuration.optString("body", null);
    }

    public String getDeclineText() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || configuration.isNull(KEY_DECLINE_TEXT)) {
            return null;
        }
        return configuration.optString(KEY_DECLINE_TEXT, null);
    }

    public String getRateText(Context context) {
        InteractionConfiguration configuration = getConfiguration();
        return (configuration == null || configuration.isNull(KEY_RATE_TEXT)) ? String.format(context.getResources().getString(C0724R.string.apptentive_rate_this_app), Configuration.load().getAppDisplayName()) : configuration.optString(KEY_RATE_TEXT, null);
    }

    public String getRemindText() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || configuration.isNull(KEY_REMIND_TEXT)) {
            return null;
        }
        return configuration.optString(KEY_REMIND_TEXT, null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.Interaction
    public String getTitle() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || configuration.isNull("title")) {
            return null;
        }
        return configuration.optString("title", null);
    }
}
