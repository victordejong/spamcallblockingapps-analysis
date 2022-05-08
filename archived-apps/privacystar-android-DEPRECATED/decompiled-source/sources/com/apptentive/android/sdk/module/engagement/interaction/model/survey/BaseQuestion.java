package com.apptentive.android.sdk.module.engagement.interaction.model.survey;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/survey/BaseQuestion.class */
public abstract class BaseQuestion extends JSONObject implements Question {
    private static final String KEY_ANSWERS = "answers";
    private static final String KEY_ERROR_MESSAGE = "error_message";
    public static final String KEY_ID = "id";
    private static final String KEY_INSTRUCTIONS = "instructions";
    private static final String KEY_METRIC_SENT = "metric_sent";
    public static final String KEY_NAME = "question";
    private static final String KEY_REQUIRED = "required";
    private static final String KEY_REQUIRED_TEXT = "required_text";
    private static final String KEY_VALUE = "value";

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseQuestion(String str) throws JSONException {
        super(str);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public String getErrorMessage() {
        return optString(KEY_ERROR_MESSAGE, null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public String getId() {
        return optString("id", null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public String getInstructions() {
        return optString(KEY_INSTRUCTIONS, null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public int getMaxSelections() {
        return 1;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public int getMinSelections() {
        return 1;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public String getRequiredText() {
        return optString(KEY_REQUIRED_TEXT, null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public abstract int getType();

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public String getValue() {
        return optString("value", null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public boolean isRequired() {
        return optBoolean(KEY_REQUIRED, false);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public void setRequiredText(String str) {
        try {
            put(KEY_REQUIRED_TEXT, str);
        } catch (Exception e) {
        }
    }
}
