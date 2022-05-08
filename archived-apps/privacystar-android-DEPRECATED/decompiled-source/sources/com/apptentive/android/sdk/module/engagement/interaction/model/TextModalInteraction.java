package com.apptentive.android.sdk.module.engagement.interaction.model;

import com.apptentive.android.sdk.module.engagement.interaction.model.common.Actions;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction.class */
public class TextModalInteraction extends Interaction {
    public static final String EVENT_KEY_ACTION_ID = "action_id";
    public static final String EVENT_KEY_ACTION_POSITION = "position";
    public static final String EVENT_KEY_INVOKED_INTERACTION_ID = "invoked_interaction_id";
    public static final String EVENT_NAME_CANCEL = "cancel";
    public static final String EVENT_NAME_DISMISS = "dismiss";
    public static final String EVENT_NAME_INTERACTION = "interaction";
    private static final String KEY_ACTIONS = "actions";
    private static final String KEY_BODY = "body";
    private static final String KEY_TITLE = "title";

    public TextModalInteraction(String str) throws JSONException {
        super(str);
    }

    public Actions getActions() {
        try {
            InteractionConfiguration configuration = getConfiguration();
            if (configuration == null || !configuration.has(KEY_ACTIONS)) {
                return null;
            }
            return new Actions(configuration.getString(KEY_ACTIONS));
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

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.Interaction
    public String getTitle() {
        try {
            InteractionConfiguration configuration = getConfiguration();
            if (configuration == null || !configuration.has("title")) {
                return null;
            }
            return configuration.getString("title");
        } catch (JSONException e) {
            return null;
        }
    }
}
