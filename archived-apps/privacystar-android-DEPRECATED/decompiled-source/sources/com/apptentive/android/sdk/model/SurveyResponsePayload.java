package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.module.engagement.interaction.model.SurveyInteraction;
import com.apptentive.android.sdk.network.HttpRequestMethod;
import com.apptentive.android.sdk.util.StringUtils;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/SurveyResponsePayload.class */
public class SurveyResponsePayload extends ConversationItem {
    private static final String KEY_RESPONSE = "response";
    private static final String KEY_SURVEY_ANSWERS = "answers";
    private static final String KEY_SURVEY_ID = "id";

    public SurveyResponsePayload(SurveyInteraction surveyInteraction, Map<String, Object> map) {
        super(PayloadType.survey);
        try {
            put("id", surveyInteraction.getId());
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                jSONObject.put(str, map.get(str));
            }
            put("answers", jSONObject);
        } catch (JSONException e) {
            ApptentiveLog.m408e(e, "Unable to construct survey payload.", new Object[0]);
        }
    }

    public SurveyResponsePayload(String str) throws JSONException {
        super(PayloadType.survey, str);
    }

    @Override // com.apptentive.android.sdk.model.Payload
    public String getHttpEndPoint(String str) {
        return StringUtils.format("/conversations/%s/surveys/%s/responses", str, getId());
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload, com.apptentive.android.sdk.model.Payload
    public HttpRequestMethod getHttpRequestMethod() {
        return HttpRequestMethod.POST;
    }

    public String getId() {
        return optString("id", null);
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload
    protected String getJsonContainer() {
        return KEY_RESPONSE;
    }
}
