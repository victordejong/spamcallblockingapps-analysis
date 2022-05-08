package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/ConversationTokenRequest.class */
public class ConversationTokenRequest extends JSONObject {
    public void setDevice(DevicePayload devicePayload) {
        JSONObject jsonObject;
        if (devicePayload == null) {
            jsonObject = null;
        } else {
            try {
                jsonObject = devicePayload.getJsonObject();
            } catch (JSONException e) {
                ApptentiveLog.m15644e(ApptentiveLogTag.CONVERSATION, "Error adding %s to ConversationTokenRequest", "device");
                ErrorMetrics.logException(e);
                return;
            }
        }
        put("device", jsonObject);
    }

    public void setSdkAndAppRelease(SdkPayload sdkPayload, AppReleasePayload appReleasePayload) {
        JSONObject jSONObject = new JSONObject();
        if (sdkPayload != null) {
            Iterator<String> keys = sdkPayload.getJsonObject().keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    jSONObject.put("sdk_" + next, sdkPayload.getJsonObject().opt(next));
                } catch (JSONException e) {
                    ErrorMetrics.logException(e);
                }
            }
        }
        if (appReleasePayload != null) {
            Iterator<String> keys2 = appReleasePayload.getJsonObject().keys();
            while (keys2.hasNext()) {
                String next2 = keys2.next();
                try {
                    jSONObject.put(next2, appReleasePayload.getJsonObject().opt(next2));
                } catch (JSONException e2) {
                    ErrorMetrics.logException(e2);
                }
            }
        }
        try {
            put("app_release", jSONObject);
        } catch (JSONException e3) {
            ErrorMetrics.logException(e3);
        }
    }
}
