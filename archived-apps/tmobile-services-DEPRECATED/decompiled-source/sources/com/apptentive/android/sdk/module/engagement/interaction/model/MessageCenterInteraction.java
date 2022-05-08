package com.apptentive.android.sdk.module.engagement.interaction.model;

import android.content.Context;
import android.content.Intent;
import com.apptentive.android.sdk.ApptentiveViewActivity;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.module.messagecenter.model.Composer;
import com.apptentive.android.sdk.module.messagecenter.model.MessageCenterGreeting;
import com.apptentive.android.sdk.module.messagecenter.model.MessageCenterStatus;
import com.apptentive.android.sdk.module.messagecenter.model.WhoCard;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction.class */
public class MessageCenterInteraction extends Interaction {
    public MessageCenterInteraction(String str) throws JSONException {
        super(str);
    }

    public static Intent generateMessageCenterErrorIntent(Context context) {
        Intent intent = new Intent();
        intent.setClass(context, ApptentiveViewActivity.class);
        intent.putExtra("fragmentType", 2);
        return intent;
    }

    public Composer getComposer() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null) {
            return null;
        }
        JSONObject optJSONObject = configuration.optJSONObject("composer");
        return new Composer(optJSONObject.optString("title", null), optJSONObject.optString("close_confirm_body", null), optJSONObject.optString("close_discard_button", null), optJSONObject.optString("close_cancel_button", null), optJSONObject.optString("send_button", null), optJSONObject.optString("hint_text", null));
    }

    public JSONObject getContextualMessage() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null) {
            return null;
        }
        return configuration.optJSONObject("automated_message");
    }

    public String getContextualMessageBody() {
        JSONObject contextualMessage = getContextualMessage();
        if (contextualMessage == null) {
            return null;
        }
        return contextualMessage.optString("body", null);
    }

    public MessageCenterStatus getErrorStatusNetwork() {
        JSONObject optJSONObject;
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || (optJSONObject = configuration.optJSONObject("error_messages")) == null) {
            return null;
        }
        return new MessageCenterStatus(optJSONObject.optString("network_error_body"), Integer.valueOf(C0726R.C0728drawable.apptentive_ic_no_connection));
    }

    public MessageCenterStatus getErrorStatusServer() {
        JSONObject optJSONObject;
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || (optJSONObject = configuration.optJSONObject("error_messages")) == null) {
            return null;
        }
        return new MessageCenterStatus(optJSONObject.optString("http_error_body"), Integer.valueOf(C0726R.C0728drawable.apptentive_ic_error));
    }

    public MessageCenterGreeting getGreeting() {
        JSONObject optJSONObject;
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || (optJSONObject = configuration.optJSONObject("greeting")) == null) {
            return null;
        }
        return new MessageCenterGreeting(optJSONObject.optString("title", null), optJSONObject.optString("body", null), optJSONObject.optString("image_url", null));
    }

    public JSONObject getProfile() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null) {
            return null;
        }
        return configuration.optJSONObject("profile");
    }

    public MessageCenterStatus getRegularStatus() {
        JSONObject optJSONObject;
        String optString;
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || (optJSONObject = configuration.optJSONObject("status")) == null || (optString = optJSONObject.optString("body")) == null || optString.isEmpty()) {
            return null;
        }
        return new MessageCenterStatus(optString, null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.Interaction
    public String getTitle() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || configuration.isNull("title")) {
            return null;
        }
        return configuration.optString("title", null);
    }

    public WhoCard getWhoCard() {
        try {
            return new WhoCard(getProfile().toString());
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public boolean getWhoCardRequestEnabled() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null) {
            return false;
        }
        return configuration.optJSONObject("profile").optBoolean("request", true);
    }

    public boolean getWhoCardRequired() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null) {
            return false;
        }
        return configuration.optJSONObject("profile").optBoolean("require", false);
    }
}
