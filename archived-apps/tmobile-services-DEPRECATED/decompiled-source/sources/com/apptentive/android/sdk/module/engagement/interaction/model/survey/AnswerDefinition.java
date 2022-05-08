package com.apptentive.android.sdk.module.engagement.interaction.model.survey;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONException;
import org.json.JSONObject;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/survey/AnswerDefinition.class */
public class AnswerDefinition extends JSONObject {
    public AnswerDefinition(String str) throws JSONException {
        super(str);
    }

    public String getHint() {
        return optString("hint", null);
    }

    public String getId() {
        return optString(Name.MARK, null);
    }

    public String getType() {
        return optString("type", "none");
    }

    public String getValue() {
        return optString(FirebaseAnalytics.Param.VALUE, null);
    }
}
