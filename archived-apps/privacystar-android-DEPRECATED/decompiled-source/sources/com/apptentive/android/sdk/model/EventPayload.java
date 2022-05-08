package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment;
import com.apptentive.android.sdk.network.HttpRequestMethod;
import com.apptentive.android.sdk.util.StringUtils;
import com.privacystar.core.service.googleplay.IABConstants;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/EventPayload.class */
public class EventPayload extends ConversationItem {
    @SensitiveDataKey
    private static final String KEY_CUSTOM_DATA = "custom_data";
    private static final String KEY_DATA = "data";
    private static final String KEY_INTERACTION_ID = "interaction_id";
    private static final String KEY_LABEL = "label";
    private static final String KEY_TRIGGER = "trigger";

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/EventPayload$EventLabel.class */
    public enum EventLabel {
        app__launch(ApptentiveBaseFragment.EVENT_NAME_LAUNCH),
        app__exit("exit"),
        error(IABConstants.EXTRA_ERROR);
        
        private final String labelName;

        EventLabel(String str) {
            this.labelName = str;
        }

        public String getLabelName() {
            return this.labelName;
        }
    }

    static {
        registerSensitiveKeys(EventPayload.class);
    }

    public EventPayload(String str) throws JSONException {
        super(PayloadType.event, str);
    }

    public EventPayload(String str, String str2) {
        this(str, (Map<String, String>) null);
        HashMap hashMap = new HashMap();
        hashMap.put(KEY_TRIGGER, str2);
        putData(hashMap);
    }

    public EventPayload(String str, String str2, String str3, Map<String, Object> map, ExtendedData... extendedDataArr) {
        super(PayloadType.event);
        try {
            put("label", str);
            if (str2 != null) {
                put(KEY_INTERACTION_ID, str2);
            }
            if (str3 != null) {
                put("data", new JSONObject(str3));
            }
            if (map != null && !map.isEmpty()) {
                put("custom_data", generateCustomDataJson(map));
            }
            if (!(extendedDataArr == null || extendedDataArr.length == 0)) {
                for (ExtendedData extendedData : extendedDataArr) {
                    if (extendedData != null) {
                        put(extendedData.getTypeName(), extendedData.toJsonObject());
                        continue;
                    }
                }
            }
        } catch (JSONException e) {
            ApptentiveLog.m408e(e, "Unable to construct Event.", new Object[0]);
        }
    }

    public EventPayload(String str, Map<String, String> map) {
        super(PayloadType.event);
        try {
            put("label", str);
            if (!(map == null || map.isEmpty())) {
                JSONObject jSONObject = new JSONObject();
                for (String str2 : map.keySet()) {
                    jSONObject.put(str2, map.get(str2));
                }
                put("data", jSONObject);
            }
        } catch (JSONException e) {
            ApptentiveLog.m408e(e, "Unable to construct Event.", new Object[0]);
        }
    }

    public EventPayload(String str, JSONObject jSONObject) {
        super(PayloadType.event);
        put("label", str);
        if (jSONObject != null) {
            put("data", jSONObject);
        }
    }

    private JSONObject generateCustomDataJson(Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj != null) {
                try {
                    jSONObject.put(str, obj);
                } catch (Exception e) {
                    ApptentiveLog.m399w(ApptentiveLogTag.PAYLOADS, "Error adding custom data to Event: \"%s\" = \"%s\"", str, obj.toString(), e);
                }
            }
        }
        return jSONObject;
    }

    public String getEventLabel() {
        return optString("label", null);
    }

    @Override // com.apptentive.android.sdk.model.Payload
    public String getHttpEndPoint(String str) {
        return StringUtils.format("/conversations/%s/events", str);
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload, com.apptentive.android.sdk.model.Payload
    public HttpRequestMethod getHttpRequestMethod() {
        return HttpRequestMethod.POST;
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload
    protected String getJsonContainer() {
        return "event";
    }

    public void putData(Map<String, String> map) {
        JSONObject jSONObject;
        if (map != null && !map.isEmpty()) {
            try {
                if (isNull("data")) {
                    jSONObject = new JSONObject();
                    put("data", jSONObject);
                } else {
                    jSONObject = getJSONObject("data");
                }
                for (String str : map.keySet()) {
                    jSONObject.put(str, map.get(str));
                }
            } catch (JSONException e) {
                ApptentiveLog.m408e(e, "Unable to add data to Event.", new Object[0]);
            }
        }
    }
}
